package com.hfut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.hfut.domain.Teacher;
import com.hfut.mapping.TeacherMngMapper;
import com.hfut.state.TeacherQueryState;
import com.hfut.util.WebUtil;


@Service
@Scope("singleton")
public class TeacherMngService {

	@Resource
	private TeacherMngMapper teaMngDAO;
	
	public int getLastPage(TeacherQueryState state) {
		
		Map<String,Object> map=new HashMap<String,Object>();
		int count = teaMngDAO.queryMaxCount(map);
		
		int maxPage = (count + WebUtil.MAX_PAGE_LINES - 1) / WebUtil.MAX_PAGE_LINES;
		int lastPage = (maxPage > 0) ? maxPage - 1 : 0;  
        return lastPage;
	}
	
	//完善教师信息
	public void updateActiveTeacher(Teacher teacher){
		teaMngDAO.updateActiveTeacher(teacher);
	}
	
	//更改教师信息
	public void updateTeacher(Teacher teacher){
		teaMngDAO.updateTeacher(teacher);

	}
	
	public List<Teacher> getActiveTeacher(){
		List<Teacher> list=teaMngDAO.getActiveTeacher();
		return list;
	}
	
	
	public Teacher getTeacher(String TeaNO){
		return teaMngDAO.getTeacher(TeaNO);
	}
	
	public void updatePassTeacher(String TeaNo){
		teaMngDAO.updatePassTeacher(TeaNo);
	}
	
	public void deleteTeacher(String TeaNo){
		teaMngDAO.deleteTeacher(TeaNo);
	}
	
	public List<Teacher> getAllTeacherByPage(TeacherQueryState state, 
			String page) {
		int curPage = state.getCurPage();
		switch (page) {
			case "0":
				curPage = 0;
				break;
			case "prev":
				if (curPage > 0) curPage--;
				break;
			case "next":
				if (curPage < state.getLastPage()) curPage++;
				break;
			default:
				curPage = state.getLastPage();
				break;
		}
		state.setCurPage(curPage);
		
		Map<String,Object> map=new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("TeaName", state.getTeaName());
		map.put("TeaBelong", state.getTeaBelong());
		
		List<Teacher> list = teaMngDAO.queryByPage(map);
        return list;
	}
	
	public List<Teacher> getAllTeacher(TeacherQueryState state){
		Map<String,Object> map=new HashMap<>();
		map.put("startRow", state.getCurPage() * WebUtil.MAX_PAGE_LINES);
		map.put("rowCount", WebUtil.MAX_PAGE_LINES);
		map.put("TeaName", state.getTeaName());
		map.put("TeaBelong", state.getTeaBelong());
		List<Teacher> list =teaMngDAO.queryByPage(map);
		
        return list;
	}
}
