package com.hfut.mapping;

import java.util.List;
import java.util.Map;

import com.hfut.domain.CourseInfo;
import com.hfut.domain.SCentity;
import com.hfut.domain.Teacher;

public interface TeacherMapper {
	public List<Teacher> queryByNamePassword(Map<String, Object> map);
	public void updateTeaPwd(Map<String, String> map);
	public void updateFinalcheck(Teacher teacher);
	public void updateTeaselfinfo(Teacher teacher);
	public List<Teacher> getAllTeacher();
	public List<CourseInfo> getCourseInfo(String teano);
	public List<SCentity> getCourseStudent(String cno);
}
