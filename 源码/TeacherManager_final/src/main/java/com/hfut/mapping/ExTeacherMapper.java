package com.hfut.mapping;

import java.util.List;
import java.util.Map;

import com.hfut.domain.CourseInfo;
import com.hfut.domain.ExClasstable;
import com.hfut.domain.ExTeacher;
import com.hfut.domain.SCentity;
import com.hfut.domain.Teacher;

public interface ExTeacherMapper {
	public List<ExTeacher> queryByNamePassword(Map<String, Object> map);
	public List<ExTeacher> getAllExTeacher();
	public List<ExClasstable> getClassTable(String exteano);
	public List<CourseInfo> getCourseInfo(String exteano);
	public List<SCentity> getCourseStudent(String cno);
	public void updateExTeaselfinfo(ExTeacher extea);
	public void updateExTeaPwd(Map<String, String> map);
}
