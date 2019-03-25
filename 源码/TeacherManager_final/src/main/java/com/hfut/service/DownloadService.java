package com.hfut.service;

import java.util.ArrayList;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.mapping.DownloadMapper;

@Service
@Scope("singleton")
public class DownloadService {
	@Resource
	private DownloadMapper downloadmapper;
	
	public ArrayList<Object> queryAllTeacher(){
		return downloadmapper.queryAllTeacher();
	}

	public ArrayList<Object> queryAllExTeacher() {
		return downloadmapper.queryAllExTeacher();
	}

	public ArrayList<Object> queryStudentByCno(String cno) {
		return downloadmapper.queryStulistByCno(cno);
	}
}
