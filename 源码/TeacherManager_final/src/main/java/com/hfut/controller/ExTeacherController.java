package com.hfut.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hfut.domain.CourseInfo;
import com.hfut.domain.ExClasstable;
import com.hfut.domain.ExTeacher;
import com.hfut.domain.FeedBack;
import com.hfut.domain.SCentity;
import com.hfut.filter.ExTeacherLoginFilter;
import com.hfut.service.ExTeacherService;
import com.hfut.service.FeedBackService;
import com.hfut.state.FeedBackQueryState;

@SuppressWarnings("serial")
@Controller
@RequestMapping(value="/exteacher")
public class ExTeacherController extends HttpServlet {
	@Resource 
    private ExTeacherService exteacherService;
	
	@Resource
	private FeedBackService feedbackService;
    

	
	@RequestMapping(value="/ExTeaChangePwdCtrl", method=RequestMethod.POST)
    public String teaChangePwd(Model model, HttpSession session, String userid, String password1 , String password2)  {
		
		System.out.println( userid + "-" + password1 ) ;
		boolean ok = false ;
		
		if(password1.equals(password2)){
			ok = exteacherService.exteachangepwd(userid,password1);
		}else{
			model.addAttribute( "error" , "两次密码不一致" ) ;
			return "exteacher/personalInfo/changePwd" ;
		}
		
		
		if(ok==false){
			model.addAttribute("error", "修改失败，请联系管理员");
			return "exteacher/personalInfo/changePwd" ;
		}
		return "exteacher/personalInfo/changePwdSucc";
	}
	
	@RequestMapping(value="/changeExTeaInfoByselfCtrl", method=RequestMethod.POST)
    public String changeTeaInfoByself(Model model, HttpSession session, String exTeaTel,String exTeaEmail,String workUnit,String workKind,String exTeaCourse
    		,String exTitle,String exTdegree,String jobYear,String exTgraduate,String major,String exProject, String lisence)  {
		
		ExTeacher extea = (ExTeacher) session.getAttribute("exteacher");
		extea.setExTgraduate(exTgraduate);
		extea.setExTdegree(exTdegree);
		extea.setExTeaCourse(exTeaCourse);
		extea.setExTeaTel(exTeaTel);
		extea.setExTeaEmail(exTeaEmail);
		extea.setExTitle(exTitle);
		extea.setJobYear(Integer.parseInt(jobYear));
		extea.setMajor(major);
		extea.setWorkUnit(workUnit);
		extea.setWorkKind(workKind);
		extea.setExProject(exProject);
		extea.setLisence(lisence);
		
		boolean ok = exteacherService.UpdateExTeaSelfInfo(extea);
		if(ok==false){
			model.addAttribute("updateselfinfo", "填写出错 请联系管理员");
			return "redirect:/exteacher/personalInfo/change.jsp";
		}
		return "redirect:/exteacher/personalInfo/show.jsp";
	}
	
	
	//查看课表.
	@RequestMapping(value="/ExTeaClassTableCtrl", method=RequestMethod.GET)
	public String getClassTable(Model model, HttpSession session){
		ExTeacher exTeacher = (ExTeacher) session.getAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER);
		String exteano = exTeacher.getExTeaNo();
		List<ExClasstable> list = null;
        try {	
			list = exteacherService.getClassTable(exteano);
            model.addAttribute("classTable",list);
        } catch (Exception e) {
        	e.printStackTrace();
			list = new ArrayList<ExClasstable>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
        }
        System.out.println("++++++++" + list.size());
        model.addAttribute("classTable",list);
		return "exteacher/course/personalSchedule";
	}
		
	//查看课程信息.
	@RequestMapping(value="/ExTeaCourseInfoCtrl", method=RequestMethod.GET)
	public String getCourseInfo(Model model, HttpSession session){
		ExTeacher exTeacher = (ExTeacher) session.getAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER);
		String exteano = exTeacher.getExTeaNo();
		
		List<CourseInfo> list = null;
        try {	
			list = exteacherService.getCourseInfo(exteano);
            model.addAttribute("courseInfos",list);
        } catch (Exception e) {
        	e.printStackTrace();
			list = new ArrayList<CourseInfo>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
        }
        System.out.println("++++++++" + list.size());
        model.addAttribute("courseInfos",list);
		return "exteacher/course/info";
	}
	
	//查看课程学生信息.
	@RequestMapping(value="/ExTeaCourseStuCtrl", method=RequestMethod.GET)
	public String getCourseStudent(Model model, String cno) {
		List<SCentity> list = null;
        try {	
			list = exteacherService.getCourseStudent(cno);
            model.addAttribute("courseStudents",list);
        } catch (Exception e) {
        	e.printStackTrace();
			list = new ArrayList<SCentity>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
        }
        model.addAttribute("courseStudents",list);
		return "";
	}	
		
	//查看所有反馈.
	@RequestMapping(value="/allFeedBackCtrl", method=RequestMethod.GET)
	public String listAll(HttpSession session, String page, Model model) {
		ExTeacher exTeacher = (ExTeacher) session.getAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER);
		String recipient = exTeacher.getExTeaNo();
		
		FeedBackQueryState state = null;
		if (page == null) {
			page = "0";
			session.removeAttribute("FeedBackQueryState");
			state = new FeedBackQueryState();
		} else {
			state = (FeedBackQueryState)
					session.getAttribute("FeedBackQueryState");
			if (state == null) {
				state = new FeedBackQueryState();
			}
		}	
		
		List<FeedBack> list = null;
		try {
			int lastPage = feedbackService.getLastPageByRecipient(state, recipient);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBackByPageAndRecipient(state, page, recipient);
			session.setAttribute("FeedBackQueryState", state);
			model.addAttribute("lastPage", lastPage);
		} catch (Exception e) {
			e.printStackTrace();
			list = new ArrayList<FeedBack>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
		}

		model.addAttribute("feedbacks", list); 
		return "exteacher/feedback/list";
	}
	
	/* 
	 * 搜索反馈
	 * date1 日期1
	 * date2 日期2
	 * status 状态（未回复/已回复）
	 */
	@RequestMapping(value="/allFeedBackCtrl", method=RequestMethod.POST)
	public String listBy(Model model, HttpSession session, String date1, String date2, String status) {
		ExTeacher exTeacher = (ExTeacher) session.getAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER);
		String recipient = exTeacher.getExTeaNo();
		
    	java.sql.Timestamp startDate = null;
    	java.sql.Timestamp endDate = null;
    	
    	if(date1 != null && !"".equals(date1)){
    		date1 += " 00:00:00"; 
    		startDate = new java.sql.Timestamp(System.currentTimeMillis());
    		startDate = Timestamp.valueOf(date1);
    	}
    	
    	if(date2 != null && !"".equals(date2)){
    		date2 += " 00:00:00"; 
    		endDate = new java.sql.Timestamp(System.currentTimeMillis());
    		endDate = Timestamp.valueOf(date2);
    	}
    	
		session.removeAttribute("FeedBackQueryState");
		
		FeedBackQueryState state = new FeedBackQueryState(0, startDate, endDate, status);
        List<FeedBack> list = null;
        try {
            int lastPage = feedbackService.getLastPageByRecipient(state, recipient);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBackByRecipient(state, recipient);
			session.setAttribute("FeedBackQueryState", state);
            model.addAttribute("feedbacks",list);
        } catch (Exception e) {
        	e.printStackTrace();
			list = new ArrayList<FeedBack>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
        }
        model.addAttribute("feedbacks",list);
        return "exteacher/feedback/list";
    }
	
	/*  
	 * 查看详细反馈
	 *  fnum 反馈序号
	 */
	@RequestMapping(value="/detailFeedBackDetailCtrl", method=RequestMethod.GET)
	public String getOneFeedBack(Model model, String fnum) {
		
		FeedBack fb = feedbackService.getByFnum(Integer.parseInt(fnum));
		String feedbackStuName = feedbackService.getFeedbackStuName(fb.getStuNum()) ;
		model.addAttribute( "feedbackStuName" , feedbackStuName ) ;
		model.addAttribute("feedback", fb);
		
		return "exteacher/feedback/info";
	}
	
	/* 
	 * 回复反馈
	 * reply 回复内容
	 * fnum 反馈序号
	 * 判断反馈状态，未回复才显示回复按钮
	 */
	@RequestMapping(value="/replyCtrl", method=RequestMethod.POST)
	public String sendReply(HttpSession session, Model model, String reply, String fnum) {
		FeedBack fb = feedbackService.getByFnum(Integer.parseInt(fnum));
		fb.setReply(reply);
		fb.setStatus("已回复");
		feedbackService.setReply(fb);
		model.addAttribute("feedback", fb);
		return "redirect:allFeedBackCtrl";
	}
}
