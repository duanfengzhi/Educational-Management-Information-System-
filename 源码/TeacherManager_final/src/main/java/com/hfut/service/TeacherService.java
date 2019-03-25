package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.mapping.TeacherMapper;
import com.hfut.domain.CourseInfo;
import com.hfut.domain.SCentity;
import com.hfut.domain.Teacher;
import com.hfut.exception.TeacherLoginException;

@Service
@Scope("singleton")
public class TeacherService {
	@Resource
	private TeacherMapper teacherDAO;
	
	public Teacher teacherLogin(String teano, String teapwd) 
			 throws TeacherLoginException {
    	Map<String,Object> map=new HashMap<>();
		map.put("teano", teano);
		map.put("teapwd", teapwd);
		System.out.println("2222");
    	List<Teacher> list = teacherDAO.queryByNamePassword(map);
        System.out.println("3333");
    	if (list.size() == 0) {
    		System.out.println("size is 0");
        	throw new TeacherLoginException("error");
        }
        
        if (list.size() > 1) {
        	System.out.println("size more ");
        	throw new TeacherLoginException("error");
        }
        System.out.println(list.get(0).getTeaName());
        return list.get(0);
    }

	public boolean teachangepwd(String userid, String password) {
		Map<String,String> map = new HashMap<>();
		map.put("teano", userid);
		map.put("teapwd",password);
		try{
			teacherDAO.updateTeaPwd(map);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean finalcheckUpdate(Teacher teacher) {
		try{
			teacherDAO.updateFinalcheck(teacher);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean UpdateTeaSelfInfo(Teacher teacher) {
		try{
			teacherDAO.updateTeaselfinfo(teacher);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Teacher> getAllTeacher() {
		List<Teacher> list = teacherDAO.getAllTeacher();	
		return list;
	}
	
	public List<CourseInfo> getCourseInfo(String teano) {
		List<CourseInfo> list = teacherDAO.getCourseInfo(teano);	
		return list;		
	}
	
	public List<SCentity> getCourseStudent(String cno) {
		List<SCentity> list = teacherDAO.getCourseStudent(cno);	
		return list;
	}
}