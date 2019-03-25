package com.hfut.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hfut.domain.Boss;
import com.hfut.domain.ExTeacher;
import com.hfut.domain.Manager;
import com.hfut.domain.Student;
import com.hfut.domain.Teacher;
import com.hfut.filter.BossLoginFilter;
import com.hfut.filter.ExTeacherLoginFilter;
import com.hfut.filter.ManagerLoginFilter;
import com.hfut.filter.StudentLoginFilter;
import com.hfut.filter.TeacherLoginFilter;
import com.hfut.service.BossService;
import com.hfut.service.ExTeacherService;
import com.hfut.service.ManagerService;
import com.hfut.service.StudentService;
import com.hfut.service.TeacherService;

@SuppressWarnings("serial")
@Controller
@RequestMapping(value="/")
public class LoginController extends HttpServlet {
	@Resource 
    private TeacherService teacherSvc;
	@Resource 
    private ExTeacherService exteacherSvc;
	@Resource 
    private BossService bossSvc;
	@Resource
	private ManagerService mngSvc;
	@Resource
	private StudentService studentService;
	
	
    @RequestMapping(value="teacher/LoginCtrl", method=RequestMethod.POST)
    public String tealogin(Model model, HttpSession session, String username, String password, String auth)  {
		Teacher teacher = null;
		ExTeacher exteacher = null;
		auth = auth.toLowerCase();
		String rand = (String)session.getAttribute("rand");
		session.removeAttribute("rand");
		rand = rand.toLowerCase();
		Map<String, String> errMap = new HashMap<String, String>();	
		session.setAttribute("errMap", errMap);
		if(!rand.equals(auth)){
			errMap.put("verification", "verification code is incorrect");
			return "redirect:/index.jsp";
		}
		
		if(username.endsWith("W")){
			try {
				 exteacher = exteacherSvc.exteacherLogin(username, password);
				 System.out.println(exteacher);
				 session.setAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER, exteacher);
				 session.setAttribute("exteacher", exteacher);

				 return "redirect:/exteacher/personalInfo/show.jsp";
			} catch (Exception e) {
				e.printStackTrace();
				errMap.put("password", "password is error");
	        	return "redirect:/index.jsp";
			} 
		}else{
			try {
				 teacher= teacherSvc.teacherLogin(username, password);
				 session.setAttribute(TeacherLoginFilter.ATTR_TEACHER, teacher);
				 session.setAttribute("teacher", teacher);
				 if("n".equals(teacher.getIsActive())){
					 System.out.println("noo!");
					 return "redirect:/teacher/personalInfo/change.jsp";
				 }
				 return "redirect:/teacher/personalInfo/show.jsp";
			} catch (Exception e) {
				e.printStackTrace();
				errMap.put("password", "password is error");
	        	return "redirect:/index.jsp";
			} 
		}
	}
	
    
    
    @RequestMapping(value="admin/LoginCtrl", method=RequestMethod.POST)
    public String mnglogin(Model model, HttpSession session, String username, String password, String auth)  {
		Manager mng = null;
		auth = auth.toLowerCase();
		String rand = (String)session.getAttribute("rand");
		session.removeAttribute("rand");
		rand = rand.toLowerCase();
		Map<String, String> errMap = new HashMap<String, String>();	
		session.setAttribute("errMap", errMap);
		try {
			 mng= mngSvc.mngLogin(username, password);

		} catch (Exception e) {
			errMap.put("password", "password is error");
			e.printStackTrace();
        	return "redirect:/index.jsp";
		} 
		if(!rand.equals(auth)){
			errMap.put("verification", "verification code is incorrect");
			return "redirect:/index.jsp";
		}
		session.setAttribute(ManagerLoginFilter.ATTR_MANAGER, mng);
		session.setAttribute("manager", mng);
		return "redirect:/admin/partials/index.jsp";
	}
    
    
    @RequestMapping(value="boss/LoginCtrl", method=RequestMethod.POST)
    public String bosslogin(Model model, HttpSession session, String username, String password, String auth)  {
		Boss boss = null;
		auth = auth.toLowerCase();
		String rand = (String)session.getAttribute("rand");
		session.removeAttribute("rand");
		rand = rand.toLowerCase();
		Map<String, String> errMap = new HashMap<String, String>();	
		session.setAttribute("errMap", errMap);
		System.out.println("@@@ "+username +"@@@"+password);
		try {
			 boss= bossSvc.bossLogin(username, password);

		} catch (Exception e) {
			errMap.put("password", "password is error");
			System.out.println("exception");
        	return "redirect:/index.jsp";
		} 

		if(!rand.equals(auth)){
			errMap.put("verification", "verification code is incorrect");
			System.out.println("incorrect");
			return "redirect:/index.jsp";
		}
		session.setAttribute(BossLoginFilter.ATTR_BOSS, boss);
		session.setAttribute("boss", boss);
		return "redirect:/boss/allFeedBackCtrl";
	}
    
    @RequestMapping(value="student/LoginCtrl", method=RequestMethod.POST)
    public String login(Model model, HttpSession session, String username, String password, String auth)  {
		System.out.println("student loginCtrl in") ;
		Student student = null;
		auth = auth.toLowerCase();
		String rand = (String)session.getAttribute("rand");
		session.removeAttribute("rand");
		rand = rand.toLowerCase();
		Map<String, String> errMap = new HashMap<String, String>();	
		session.setAttribute("errMap", errMap);
		
		
		
		try {
			 student= studentService.studentLogin(username, password);

		} catch (Exception e) {
			errMap.put("password", "password is error");
			System.out.println("exception");
        	return "redirect:/index.jsp";
		} 

		if(!rand.equals(auth)){
			errMap.put("verification", "verification code is incorrect");
			System.out.println("incorrect");
			return "redirect:/index.jsp";
		}
		System.out.println("LoginCtrl-StuNumber-" + student.getStuno() +"  StuEmail-" + student.getStuemail() ) ;
		session.setAttribute(StudentLoginFilter.ATTR_STUDENT, student);
		session.setAttribute("student", student);
		return "redirect:/student/sentListCtrl";
	}

    @RequestMapping(value="LoginOutCtrl", method=RequestMethod.GET)
    public String loginOut(Model model, HttpSession session)  {
		
		session.removeAttribute(TeacherLoginFilter.ATTR_TEACHER);
		session.removeAttribute("teacher");
		
		session.removeAttribute(ExTeacherLoginFilter.ATTR_EXTEACHER);
		session.removeAttribute("exteacher");
		
		session.removeAttribute(StudentLoginFilter.ATTR_STUDENT);
		session.removeAttribute("student");
		
		session.removeAttribute(BossLoginFilter.ATTR_BOSS);
		session.removeAttribute("boss");
		
		session.removeAttribute(ManagerLoginFilter.ATTR_MANAGER);
		session.removeAttribute("manager");
		return "redirect:/index.jsp";
	}
}