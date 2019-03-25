package com.hfut.mapping;

import java.util.List;
import java.util.Map;

import com.hfut.domain.Teacher;



public interface TeacherMngMapper {

	public void updateActiveTeacher(Teacher teacher);

	public void updateTeacher(Teacher teacher);
	public List<Teacher>getActiveTeacher();
	
	
	public Teacher getTeacher(String TeaNO);
	public void deleteTeacher(String TeaNo);
	public void updatePassTeacher(String TeaNo);
	
	public int queryMaxCount(Map<String, Object> map);
	public List<Teacher> queryByPage(Map<String, Object> map);

}
