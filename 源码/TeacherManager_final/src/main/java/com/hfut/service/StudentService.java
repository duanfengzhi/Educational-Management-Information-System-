package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.domain.Student;
import com.hfut.exception.StudentLoginException;
import com.hfut.mapping.StudentMapper;

@Service
@Scope("singleton")
public class StudentService {
	@Resource
	private StudentMapper studentDAO;
	
	public Student studentLogin(String studentname, String password) 
			 throws StudentLoginException {
		System.out.println("StudentService in");
		Map<String,Object> map=new HashMap<>();
		map.put("studentname", studentname);
		map.put("password", password);
		System.out.println("2222");
   	List<Student> list = studentDAO.queryByNamePassword(map);
       System.out.println("3333");
   	if (list.size() == 0) {
   		System.out.println("size is 0");
       	throw new StudentLoginException("error");
       }
       
       if (list.size() > 1) {
       	System.out.println("size more ");
       	System.out.println(list.size() + "  " + list.get(0).getStuname() + "  " + list.get(1).getStuname());
       	throw new StudentLoginException("error");
       }
       System.out.println(list.get(0).getStuname());
       System.out.println("StudentService out");
       return list.get(0);
   }

	public boolean stuchangepwd(String userid, String password) {
		Map<String,String> map = new HashMap<>();
		map.put("stuno", userid);
		map.put("stupwd",password);
		try{
			studentDAO.updateStuPwd(map);
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;

	}
	
	
}
