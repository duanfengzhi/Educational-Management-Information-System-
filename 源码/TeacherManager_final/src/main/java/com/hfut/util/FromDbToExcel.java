package com.hfut.util;


import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.hfut.domain.ExTeacher;
import com.hfut.domain.SCentity;
import com.hfut.domain.Teacher;

import java.io.FileOutputStream;

public class FromDbToExcel{
	
	public static void fromDbToExcelA(ArrayList<Object> relist){
		
        HSSFWorkbook wb = new HSSFWorkbook();  
        HSSFSheet sheet = wb.createSheet("教师统计");  
        HSSFRow row = sheet.createRow((int) 0);  
  
        HSSFCell cell = row.createCell((short) 0);  
        cell.setCellValue("编号");  
        cell = row.createCell((short) 1);  
        cell.setCellValue("姓名");  
        cell = row.createCell((short) 2);  
        cell.setCellValue("单位或学院");  
        cell = row.createCell((short) 3);  
        cell.setCellValue("教授课程"); 
        cell = row.createCell((short) 4); 
        cell.setCellValue("职称");  
        cell = row.createCell((short) 5);  
        cell.setCellValue("学位");  
        cell = row.createCell((short) 6);  
        cell.setCellValue("年龄");  
        cell = row.createCell((short) 7);  
        cell.setCellValue("毕业院校"); 
        cell = row.createCell((short) 8);  
        cell.setCellValue("海外经历");  
        cell = row.createCell((short) 9);  
        cell.setCellValue("工程背景");  
        cell = row.createCell((short) 10);  
        cell.setCellValue("主持项目");  
        cell = row.createCell((short) 11);  
        cell.setCellValue("发表科研论文");  
        cell = row.createCell((short) 12);  
        cell.setCellValue("专利");  
        cell = row.createCell((short) 13);
        cell.setCellValue("软著");  
        cell = row.createCell((short) 14);
        cell.setCellValue("专著");  
        cell = row.createCell((short) 15);
        cell.setCellValue("教研论文");  
        cell = row.createCell((short) 16);
        cell.setCellValue("科研教学获奖");  
        cell = row.createCell((short) 17);
        cell.setCellValue("师德师风获表彰");  
        cell = row.createCell((short) 18);
        cell.setCellValue("与软件学院本科生科研成果");  
        

        for (int i = 0; i < relist.size(); i++)  
        {  
            row = sheet.createRow((int) i + 1);  
            Teacher tea = (Teacher) relist.get(i);  
            row.createCell((short) 0).setCellValue(tea.getTeaNo());  
            row.createCell((short) 1).setCellValue(tea.getTeaName());
            row.createCell((short) 2).setCellValue(tea.getTeaBelong());
            row.createCell((short) 3).setCellValue(tea.getTeaCourse());
            row.createCell((short) 4).setCellValue(tea.getTeaTitle());
            row.createCell((short) 5).setCellValue(tea.getTeadegree());
            row.createCell((short) 6).setCellValue(tea.getTeaAge());
            row.createCell((short) 7).setCellValue(tea.getTeagraduate());
            row.createCell((short) 8).setCellValue(tea.getOverSeaExp());
            row.createCell((short) 9).setCellValue(tea.getEngBack());
            row.createCell((short) 10).setCellValue(tea.getProject());
            row.createCell((short) 11).setCellValue(tea.getPaper());
            row.createCell((short) 12).setCellValue(tea.getPatent());
            row.createCell((short) 13).setCellValue(tea.getTheSoft());
            row.createCell((short) 14).setCellValue(tea.getMono());
            row.createCell((short) 15).setCellValue(tea.getTeaPaper());
            row.createCell((short) 16).setCellValue(tea.getTeahonor());
            row.createCell((short) 17).setCellValue(tea.getTeaMorality());
            row.createCell((short) 18).setCellValue(tea.getCoorResult());
            
        }  
         
        try  
        {  
            FileOutputStream fout = new FileOutputStream("D:\\fileupload\\teachercheck.xls");  
            wb.write(fout);  
            fout.close();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }
	}
	
	
public static void fromDbToExcelB(ArrayList<Object> relist){
		
        HSSFWorkbook wb = new HSSFWorkbook();  
        HSSFSheet sheet = wb.createSheet("教师统计");  
        HSSFRow row = sheet.createRow((int) 0);  
  
        HSSFCell cell = row.createCell((short) 0);  
        cell.setCellValue("姓名");  
        cell = row.createCell((short) 1);  
        cell.setCellValue("单位或学院");  
        cell = row.createCell((short) 2);  
        cell.setCellValue("类型"); 
        cell = row.createCell((short) 3); 
        cell.setCellValue("职位");  
        cell = row.createCell((short) 4);  
        cell.setCellValue("学位");  
        cell = row.createCell((short) 5);  
        cell.setCellValue("从业年限");  
        cell = row.createCell((short) 6);  
        cell.setCellValue("毕业学校"); 
        cell = row.createCell((short) 7);  
        cell.setCellValue("教授课程");
        cell = row.createCell((short) 8);
        cell.setCellValue("主要技术专长");  
        cell = row.createCell((short) 9);
        cell.setCellValue("承担过的工程项目");  
        cell = row.createCell((short) 10);
        cell.setCellValue("获得实践技术能力证书");  
        

        for (int i = 0; i < relist.size(); i++)  
        {  
            row = sheet.createRow((int) i + 1);  
            ExTeacher tea = (ExTeacher) relist.get(i);  
            row.createCell((short) 0).setCellValue(tea.getExTeaName());
            row.createCell((short) 1).setCellValue(tea.getWorkUnit());
            row.createCell((short) 2).setCellValue(tea.getWorkKind());
            row.createCell((short) 3).setCellValue(tea.getExTitle());
            row.createCell((short) 4).setCellValue(tea.getExTdegree());
            row.createCell((short) 5).setCellValue(tea.getJobYear());
            row.createCell((short) 6).setCellValue(tea.getExTgraduate());
            row.createCell((short) 7).setCellValue(tea.getExTeaCourse());
            row.createCell((short) 8).setCellValue(tea.getMajor());
            row.createCell((short) 9).setCellValue(tea.getExProject());
            row.createCell((short) 10).setCellValue(tea.getLisence());
            
        }  
         
        try  
        {  
            FileOutputStream fout = new FileOutputStream("D:\\fileupload\\exteachercheck.xls");  
            wb.write(fout);  
            fout.close();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }
	}


	public static void fromDbToExcelStu(ArrayList<Object> relist){
		
        HSSFWorkbook wb = new HSSFWorkbook();  
        HSSFSheet sheet = wb.createSheet("学生名单");  
        HSSFRow row = sheet.createRow((int) 0);  
  
        HSSFCell cell = row.createCell((short) 0);  
        cell.setCellValue("学号");  
        cell = row.createCell((short) 1);  
        cell.setCellValue("姓名");  
        
        

        for (int i = 0; i < relist.size(); i++)  
        {  
            row = sheet.createRow((int) i + 1);  
            SCentity sc = (SCentity) relist.get(i);  
            row.createCell((short) 0).setCellValue(sc.getStuNo());
            row.createCell((short) 1).setCellValue(sc.getStuName());
        }  
         
        try  
        {  
            FileOutputStream fout = new FileOutputStream("D:\\fileupload\\stulist.xls");  
            wb.write(fout);  
            fout.close();  
        }  
        catch (Exception e)  
        {  
            e.printStackTrace();  
        }
	}
}
