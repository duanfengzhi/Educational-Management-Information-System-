package com.hfut.mapping;

import java.util.List;

import com.hfut.domain.ExTeacher;



public interface ExTeacherMngMapper {

	public void updateExTeacher(ExTeacher ext);
	public List<ExTeacher>getAllExTeacher();
	public ExTeacher getExTeacher(String ExTeaNO);
	public void deleteExTeacher(String ExTeaNo);
	
}
