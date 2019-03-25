package com.hfut.controller;

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

import com.hfut.domain.ExTeacher;
import com.hfut.service.ExTeacherMngService;



@SuppressWarnings("serial")
@Controller
@RequestMapping(value="/admin")
public class ExTeacherMngController extends HttpServlet {
	
	@Resource
    private ExTeacherMngService exteacherMngService;
	
	
	
	@RequestMapping(value="/AddExTeacherInfoCtrl", method=RequestMethod.POST)	//外聘教师首次登录时，填写信息，并将这些信息写入数据库,isActive字段初始设为n;
	 public String addTeaInfo(Model model, HttpSession session,String ExTeaName,String ExTeaNo,String ExTeaTel,String ExTeaEmail,String workKind,String workUnit,String exTeaCourse,String exTitle,String exTdegree,String exTgraduate,String jobYear,String major,String exProject,String lisence){
		
		
		Map<String, String> errMap = new HashMap<String, String>();
		if (ExTeaName == null || "".equals(ExTeaName)) {
			errMap.put("ExTeaName","请输入姓名");
		}		
		if (ExTeaTel == null || "".equals(ExTeaTel)) {
			errMap.put("ExTeaTel","请输入联系电话");
		}		
	
		if (ExTeaEmail == null || "".equals(ExTeaEmail)) {
			errMap.put("ExTeaName","请输入邮箱");
		}		
	
		if (!(workKind.equals("企业")||workKind.equals("科研机构")||workKind.equals("高校"))) {
			errMap.put("workKind","请输入类型，填写'企业','科研机构',或'高校'");
		}		
		if (workUnit== null || "".equals(workUnit)) {
			errMap.put("workUnit","请输入工作单位");
		}	
		if (exTeaCourse== null || "".equals(exTeaCourse)) {
			errMap.put("exTeaCourse","请输入教授课程");
		}
		if (exTitle== null || "".equals(exTitle)) {
			errMap.put("TeaTitle","请输入职称");
		}
		if (exTdegree== null || "".equals(exTdegree)) {
			errMap.put("exTdegree","请输入学位");
		}
		if (jobYear== null || "".equals(jobYear)) {
			errMap.put("jobYear","请输入从业年限");
		}
		if (major== null || "".equals( major)) {
			errMap.put("major","请填写技术专长");
		}
		if (exProject== null || "".equals(exProject)) {
			errMap.put("exProject","请填写承担过的项目");
		}
		if (lisence== null || "".equals(lisence)) {
			errMap.put("lisence","请填写证书");
		}
		
		if (errMap.size() != 0) {
			model.addAttribute("exerrMap", errMap);
	        return "exteacher/educationalAdm/AddExTeacherInfo";
		}
		
		int year=Integer.parseInt(jobYear);
		ExTeacher ext=new ExTeacher(ExTeaName,ExTeaNo, ExTeaTel, ExTeaEmail,workKind,workUnit, exTeaCourse, exTitle,year,exTdegree,exTgraduate,major,exProject,lisence);
		try{
			exteacherMngService.updateExTeacher(ext);
		}catch(Exception e){
			e.printStackTrace();
		}
		return "exteacher/Login";
	}

	@RequestMapping(value="/ListExTeacherInfoCtrl")	//从数据库中得到外聘教师信息
	 public String listAllExTeaInfo(Model model, HttpSession session){
		try{
			List<ExTeacher>list=exteacherMngService.getAllExTeacher();
			model.addAttribute("AllExTeacherInfo",list);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "admin/educationalAdm/ListExTeacherInfo";
	}

	
	@RequestMapping(value="/UpdateExTeaInfoCtrl")	//更改外聘教师信息
	 public String updateExTeaInfo(Model model, HttpSession session,String tid){
		try{
	
			ExTeacher t=exteacherMngService.getExTeacher(tid);
			model.addAttribute("updateExteacherInfo", t);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "admin/educationalAdm/UpdateExTeacherInfo";
	}
	
	@RequestMapping(value="/UpdateExTeaInfoCtrl", method=RequestMethod.POST)	//更改外聘教师信息
	 public String updateExTeaInfo(Model model, HttpSession session ,String exTeaName,String tid,String exTeaTel,String exTeaEmail,String workUnit,
			 String workKind ,String exTitle ,String exTdegree,String jobYear,String exTgraduate ,String  exTeaCourse ,String major,
			 String exProject ,String  lisence ){
		try{
			int age=0;
			if(jobYear!=null){
				age=Integer.parseInt(jobYear);
			}	
			ExTeacher ext=new ExTeacher(exTeaName, tid,exTeaTel,exTeaEmail,workUnit,workKind ,
					exTitle ,exTdegree, age, exTgraduate , exTeaCourse , major, exProject ,lisence);
			
			exteacherMngService.updateExTeacher(ext);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "redirect:/admin/ListExTeacherInfoCtrl";
	}
	
	
	@RequestMapping(value="/DeleteExTeaInfoCtrl")	//删除外聘教师信息
	 public String deleteExTeaInfo(Model model, HttpSession session,String tid){
		try{
	
		exteacherMngService.deleteExTeacher(tid);;
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "redirect:/admin/ListExTeacherInfoCtrl";
	}
	


}
