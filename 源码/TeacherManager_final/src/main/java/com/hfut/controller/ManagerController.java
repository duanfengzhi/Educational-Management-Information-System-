package com.hfut.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hfut.domain.Boss;
import com.hfut.domain.ExTeacher;
import com.hfut.domain.FeedBack;
import com.hfut.domain.Teacher;
import com.hfut.service.BossService;
import com.hfut.service.ExTeacherService;
import com.hfut.service.FeedBackService;
import com.hfut.service.ManagerService;
import com.hfut.service.TeacherService;
import com.hfut.state.FeedBackQueryState;

@Controller
@RequestMapping(value="/admin")
public class ManagerController {
	@Resource
	private ManagerService managerService;
	
	@Resource
	private BossService bossService;
	
	@Resource
	private TeacherService teacherService;
	
	@Resource
	private ExTeacherService exTeacherService;
		
	@Resource
	private FeedBackService feedbackService;
	
	@RequestMapping(value="/MngChangePwdCtrl", method=RequestMethod.POST)
    public String teaChangePwd(Model model, HttpSession session, String userid, String password1 , String password2)  {
		
		System.out.println( userid + "-" + password1 ) ;
		boolean ok = false ;
		
		if(password1.equals(password2)){
			ok = managerService.mngchangepwd(userid,password1);
		}else{
			model.addAttribute( "error" , "两次密码不一致" ) ;
			return "admin/personalInfo/changePwd" ;
		}
		
		
		if(ok==false){
			model.addAttribute("error", "修改失败，请联系管理员");
			return "admin/personalInfo/changePwd" ;
		}
		return "admin/personalInfo/changePwdSucc";
	}
	
	//查看所有反馈.
	@RequestMapping(value="/allFeedBackCtrl", method=RequestMethod.GET)
	public String listAll(HttpSession session, String page, Model model) {
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
			int lastPage = feedbackService.getLastPage(state);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBackByPage(state, page);
			session.setAttribute("FeedBackQueryState", state);
			model.addAttribute("lastPage", lastPage);
		} catch (Exception e) {
			e.printStackTrace();
			list = new ArrayList<FeedBack>();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
		}
		
		System.out.println( list.size() ) ;
		System.out.println( list.get(0).getInfo() ) ;

		model.addAttribute("feedbacks", list); 
		return "admin/feedbackCheck/feedbackList";
	}
	
	/* 
	 * 搜索反馈
	 * date1 日期1
	 * date2 日期2
	 * status 状态（未回复/已回复）
	 */
	@RequestMapping(value="/allFeedBackCtrl", method=RequestMethod.POST)
	public String listBy(Model model, HttpSession session, String date1, String date2, String status) {
		
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
            int lastPage = feedbackService.getLastPage(state);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBack(state);
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
        return "admin/feedbackCheck/feedbackList";
    }
	
	/*  
	 * 	查看详细反馈
	 *  fnum 反馈序号
	 */
	@RequestMapping(value="/detailFeedBackDetailCtrl", method=RequestMethod.GET)
	public String getOneFeedBack(Model model, String fnum) {
		FeedBack fb = feedbackService.getByFnum(Integer.parseInt(fnum));
		String feedbackStuName = feedbackService.getFeedbackStuName(fb.getStuNum()) ;
		model.addAttribute("feedback", fb);
		System.out.println(feedbackStuName);
		model.addAttribute( "feedbackStuName" , feedbackStuName ) ;
		
		
		System.out.println( "turnCtrl-in" );
		List<Boss> bossList = null;
		List<Teacher> teacherList = null;
		List<ExTeacher> exTeacherList = null;
		try {
			bossList = bossService.getAllBoss();
			teacherList = teacherService.getAllTeacher();
			exTeacherList = exTeacherService.getAllExTeacher();
		} catch (Exception e) {
			e.printStackTrace();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
		}
		
		System.out.println( "teacherList size-" + teacherList.size() );

		model.addAttribute("bossList", bossList);
		model.addAttribute("teacherList", teacherList);
		model.addAttribute("exTeacherList", exTeacherList);
		System.out.println( "turnCtrl-out" );
		
		
		return "admin/feedbackCheck/feedbackCheck";
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
	
	//转发反馈，显示领导，校内，外聘教师信息（三个list）
	@RequestMapping(value="/turnCtrl", method=RequestMethod.GET)
	public String getRecipient(Model model) {
		System.out.println( "turnCtrl-in" );
		List<Boss> bossList = null;
		List<Teacher> teacherList = null;
		List<ExTeacher> exTeacherList = null;
		try {
			bossList = bossService.getAllBoss();
			teacherList = teacherService.getAllTeacher();
			exTeacherList = exTeacherService.getAllExTeacher();
		} catch (Exception e) {
			e.printStackTrace();
			Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
		}
		
		System.out.println( "teacherList size-" + teacherList.size() );

		model.addAttribute("bossList", bossList);
		model.addAttribute("teacherList", teacherList);
		model.addAttribute("exTeacherList", exTeacherList);
		return "admin/feedbackCheck/";
	}
	
	/*  
	 * 选择发送人发送反馈
	 *	fnum 反馈序号
	 *	recipient 接收人帐号
	 */
	@RequestMapping(value="/sendCtrl", method=RequestMethod.POST)
	public String setRecipient(Model model, String fnum, String type , String t , String ext , String b) {
		FeedBack fb = feedbackService.getByFnum(Integer.parseInt(fnum));
		
		String recipient = null ;
		
		if(type.equals("t"))
			recipient=t ;
		if(type.equals("ext") )
			recipient = ext ;
		if(type.equals("b"))
			recipient=b ;
		
		fb.setRecipient(recipient);
		fb.setStatus("未回复");
		feedbackService.setRecipient(fb);
		model.addAttribute("feedback", fb);
		return "redirect:allFeedBackCtrl";
	}
	
	
}
