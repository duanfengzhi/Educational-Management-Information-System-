package com.hfut.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hfut.domain.FeedBack;
import com.hfut.domain.FeedBackForm;
import com.hfut.domain.Student;
import com.hfut.filter.StudentLoginFilter;
import com.hfut.service.FeedBackService;
import com.hfut.service.StudentService;
import com.hfut.state.FeedBackQueryState;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Resource
	private StudentService studentService;
	
	@Resource
	private FeedBackService feedbackService;
	
	@RequestMapping(value="/StuChangePwdCtrl", method=RequestMethod.POST)
    public String teaChangePwd(Model model, HttpSession session, String userid, String password1 , String password2)  {
		
		System.out.println( userid + "-" + password1 ) ;
		boolean ok = false ;
		
		if(password1.equals(password2)){
			ok = studentService.stuchangepwd(userid,password1);
		}else{
			model.addAttribute( "error" , "两次密码不一致" ) ;
			return "student/personalInfo/changePwd" ;
		}
		
		
		if(ok==false){
			model.addAttribute("error", "修改失败，请联系管理员");
			return "student/personalInfo/changePwd" ;
		}
		return "student/personalInfo/changePwdSucc";
	}
	
	//查看所有反馈.
	@RequestMapping(value="/sentListCtrl", method=RequestMethod.GET)
	public String listAll(HttpSession session, String page, Model model) {		
		
		System.out.println("sentListCtrl-in") ;
		
		Student student = (Student) session.getAttribute(StudentLoginFilter.ATTR_STUDENT);
		String stuNum = student.getStuno();
		
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
			int lastPage = feedbackService.getLastPageByStunum(state, stuNum);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBackByPageAndByStunum(state, page, stuNum);
			
			System.out.println(list.isEmpty() + "  " + list.size()  +  "  "  + list.get(0).toString() ) ;
			
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
		
		System.out.println("sentListCtrl-out") ;
		
		return "student/feedback/sentList";
	}
	
	/* 
	 * 搜索反馈
	 * date1 日期1
	 * date2 日期2
	 * status 状态（未回复/已回复）
	 */
	@RequestMapping(value="/sentListCtrl", method=RequestMethod.POST)
	public String listBy(Model model, HttpSession session, String date1, String date2, String status) {
		Student student = (Student) session.getAttribute(StudentLoginFilter.ATTR_STUDENT);
		String stuNum = student.getStuno();
		
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
            int lastPage = feedbackService.getLastPageByStunum(state, stuNum);
			state.setLastPage(lastPage);
			
			list = feedbackService.getFeedBackByStunum(state, stuNum);
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
        return "redirect:sentListCtrl?page=0";
    }
	
	/*  
	 * 查看详细反馈
	 *  fnum 反馈序号
	 */
	@RequestMapping(value="/detailFeedBackDetailCtrl", method=RequestMethod.GET)
	public String getOneFeedBack(Model model, String fnum) {
		
		FeedBack fb = feedbackService.getByFnum(Integer.parseInt(fnum));
		model.addAttribute("feedback", fb);
		
		return "student/feedback/sentInfo";
	}
	
	//发送反馈.
	@RequestMapping(value="/WriteFBCtrl", method=RequestMethod.POST)
	public String sendFeedBack(@Valid @ModelAttribute("feedback")FeedBackForm f,
			Errors errors, HttpSession session) {
		System.out.println(f.getInfo());
		System.out.println("WriteFBCtrl in" + f.getInfo());
		java.sql.Timestamp sendtime = new java.sql.Timestamp(System.currentTimeMillis());	
		Student student = (Student) session.getAttribute(StudentLoginFilter.ATTR_STUDENT);
		System.out.println("ATTR_STUDENT--" +StudentLoginFilter.ATTR_STUDENT);
		System.out.println("StuName-" + student.getStuname() + "   StuNumber-" + student.getStuno() + "  Info-" + f.getInfo());
		
		if (errors.hasErrors()) {
			System.out.println("写反馈错了--hasErrors！") ;
	        return "redirect:/student/feedback/write.jsp";
		}
		
		FeedBack fb = new FeedBack() ;
		
		try {
			fb.setStuNum(student.getStuno());
			fb.setSendTime(sendtime);
			fb.setClaName(f.getClaName());
			fb.setTeaName(f.getTeaName());
			fb.setInfo(f.getInfo());
			fb.setType(f.getType());
			fb.setState(f.getState());
			feedbackService.sendFeedBack(fb);
		} catch (Exception e) {
			e.printStackTrace();
			errors.reject("", "发生了非预期错误，请联系平台管理员");
			System.out.println("写反馈错了try-catch  非预期错误！") ;
			return "redirect:/student/feedback/write.jsp";
		}
		
		System.out.println("WriteFBCtrl out");
		return "redirect:/student/feedback/writeSuccess.jsp";
	}	
}
