package com.hfut.mapping;

import java.util.ArrayList;
import com.hfut.domain.*;

public interface DownloadMapper {

	public ArrayList<Object> queryAllTeacher();

	public ArrayList<Object> queryAllExTeacher();

	public ArrayList<Object> queryStulistByCno(String cno);
	
}
