package com.hfut.service;

import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import com.hfut.domain.*;
import com.hfut.mapping.*;

@Service
@Scope("singleton")
public class ImportInfo {
	@Resource
	private ImportInfoMapper importinfo;
	
	public boolean importSCInfo(ArrayList<String> list){
		try{
			SCentity sc = new SCentity(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),list.get(5));
			importinfo.importSCInfo(sc);
		}catch (Exception e) {
			return false;
		}
        return true;
	}
	public boolean importStuInfo(ArrayList<String> list){
		try{
			Student stu = new Student(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),list.get(5),list.get(6),list.get(7),list.get(8));
			if(stu.getStuno()!=null && stu.getStuno()!="")importinfo.importStuInfo(stu);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
        return true;
	}
	public boolean importTeaInfo(ArrayList<String> list){
		try{
			Teacher tea = new Teacher(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),"n");
			if(tea.getTeaEmail()==null)tea.setTeaEmail("");
			if(tea.getTeaTel()==null)tea.setTeaTel("");
			if(tea.getTeaNo()!=null && tea.getTeaNo()!="")importinfo.importTeaInfo(tea);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
        return true;
	}
	
	public boolean importExTeaInfo(ArrayList<String> list){
		try{
			ExTeacher extea = new ExTeacher(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),list.get(5),list.get(6),list.get(7),list.get(8),
					Integer.parseInt(list.get(9)),list.get(10),list.get(11),list.get(12),list.get(13),list.get(14));
			if(extea.getExTeaNo()!=null && extea.getExTeaNo()!="")importinfo.importExTeaInfo(extea);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
        return true;
	}
	
	public boolean importCouInfo(ArrayList<String> list){
		try{
			CourseInfo cou = new CourseInfo(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),Integer.parseInt(list.get(5)),Integer.parseInt(list.get(6)),Integer.parseInt(list.get(7)),
					Integer.parseInt(list.get(8)),Integer.parseInt(list.get(9)),list.get(10),list.get(11),list.get(12),list.get(13));
			if(cou.getCno()!=null && cou.getCno()!="")importinfo.importCouInfo(cou);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
        return true;
	}
	public boolean importExCTInfo(ArrayList<String> list) {
		try{
			ExClasstable table = new ExClasstable(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),list.get(5),list.get(6),list.get(7));
			if(table.getCno()!=null && table.getCno()!="")importinfo.importExCTInfo(table);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
        return true;
	}
	public boolean importBossInfo(ArrayList<String> list) {
		try{
			Boss boss = new Boss(list.get(0),list.get(1),list.get(2));
			if(boss.getBossnum()!=null && boss.getBossnum()!="")importinfo.importBossInfo(boss);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean importMngInfo(ArrayList<String> list) {
		try{
			Manager mng = new Manager(list.get(0),list.get(1),list.get(2),list.get(3),list.get(4),Integer.parseInt(list.get(5)));
			if(mng.getAdno()!=null && mng.getAdno()!="")importinfo.importMngInfo(mng);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
