package com.hfut.mapping;

import java.util.List;
import java.util.Map;
import com.hfut.domain.Student;

public interface StudentMapper {
	public List<Student> queryByNamePassword(Map<String, Object> map);

	public void updateStuPwd(Map<String, String> map);
}
