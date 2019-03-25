package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.mapping.ExTeacherMapper;
import com.hfut.domain.CourseInfo;
import com.hfut.domain.ExClasstable;
import com.hfut.domain.ExTeacher;
import com.hfut.domain.SCentity;
import com.hfut.exception.ExTeacherLoginException;

@Service
@Scope("singleton")
public class ExTeacherService {
	@Resource
	private ExTeacherMapper exteacherDAO;
	
	public ExTeacher exteacherLogin(String exteano, String exteapwd) 
			 throws ExTeacherLoginException {
    	Map<String,Object> map=new HashMap<>();
		map.put("exteano", exteano);
		map.put("exteapwd", exteapwd);
    	List<ExTeacher> list = exteacherDAO.queryByNamePassword(map);
    	if (list.size() == 0) {
    		System.out.println("size is 0");
        	throw new ExTeacherLoginException("error");
        }
        
        if (list.size() > 1) {
        	System.out.println("size more ");
        	throw new ExTeacherLoginException("error");
        }
        System.out.println(list.get(0).getExTeaName());
        return list.get(0);
    }

	public List<ExClasstable> getClassTable(String exteano) {
		List<ExClasstable> list = exteacherDAO.getClassTable(exteano);	
		return list;		
	}
	
	public List<CourseInfo> getCourseInfo(String exteano) {
		List<CourseInfo> list = exteacherDAO.getCourseInfo(exteano);	
		return list;		
	}
	
	public List<SCentity> getCourseStudent(String cno) {
		List<SCentity> list = exteacherDAO.getCourseStudent(cno);	
		return list;
	}
	
	public List<ExTeacher> getAllExTeacher() {
		List<ExTeacher> list = exteacherDAO.getAllExTeacher();	
		return list;
	}
	
	public boolean UpdateExTeaSelfInfo(ExTeacher extea) {
		try{
			exteacherDAO.updateExTeaselfinfo(extea);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	

	public boolean exteachangepwd(String userid, String password) {
		Map<String,String> map = new HashMap<>();
		map.put("exteano", userid);
		map.put("expwd",password);
		try{
			exteacherDAO.updateExTeaPwd(map);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
}