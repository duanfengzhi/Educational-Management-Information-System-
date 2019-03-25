package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.domain.ExTeacher;

import com.hfut.mapping.ExTeacherMngMapper;


@Service
@Scope("singleton")
public class ExTeacherMngService {

	@Resource
	private ExTeacherMngMapper exteaMngDAO;
	

	public ExTeacher getExTeacher(String ExTeaNo){
		ExTeacher ext=exteaMngDAO.getExTeacher(ExTeaNo);
		return ext;
	}
	
	public List<ExTeacher> getAllExTeacher(){
		List<ExTeacher> list=exteaMngDAO.getAllExTeacher();
		return list;
	}
	
	public void updateExTeacher(ExTeacher ext){
		exteaMngDAO.updateExTeacher(ext);

	}
	
	public void deleteExTeacher(String ExTeaNo){
		exteaMngDAO.deleteExTeacher(ExTeaNo);
	}

	
	

}
