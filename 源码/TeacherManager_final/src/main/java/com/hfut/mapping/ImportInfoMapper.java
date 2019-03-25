package com.hfut.mapping;

import com.hfut.domain.*;

public interface ImportInfoMapper {
	public void importSCInfo(SCentity sc);
	
	public void importStuInfo(Student stu);
	
	public void importBossInfo(Boss boss);
	
	public void importTeaInfo(Teacher tea);
	
	public void importCouInfo(CourseInfo cou);
	
	public void importExTeaInfo(ExTeacher extea);

	public void importExCTInfo(ExClasstable table);

	public void importMngInfo(Manager mng);
}
