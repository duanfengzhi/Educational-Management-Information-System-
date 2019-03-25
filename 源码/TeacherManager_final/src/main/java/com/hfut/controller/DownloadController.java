package com.hfut.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hfut.service.DownloadService;
import com.hfut.util.FromDbToExcel;

@Controller
@RequestMapping("/")
public class DownloadController {
	
	@Resource
	private DownloadService downloadSvc;
	
	@RequestMapping(value = "downloadchexcel")
    public String downloadChexcel(String fileName,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition", "attachment;fileName="+ fileName);
        if(fileName.equals("teachercheck.xls")){
	        ArrayList<Object> list = downloadSvc.queryAllTeacher();
	        FromDbToExcel.fromDbToExcelA(list);
        }else if(fileName.equals("exteachercheck.xls")){
        	ArrayList<Object> list = downloadSvc.queryAllExTeacher();
	        FromDbToExcel.fromDbToExcelB(list);
        }
        
        try {
           
            String path="D:\\fileupload";
            InputStream inputStream = new FileInputStream(new File(path+ File.separator + fileName));

            OutputStream os = response.getOutputStream();
            byte[] b = new byte[2048];
            int length;
            while ((length = inputStream.read(b)) > 0) {
                os.write(b, 0, length);
            }

            os.close();

            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
            
        return null;
    }
	
	@RequestMapping(value = "downloadstulistexcel")
    public String downloadStulistexcel(String fileName,String cno,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition", "attachment;fileName="+ fileName);
        
        ArrayList<Object> list = downloadSvc.queryStudentByCno(cno);
        FromDbToExcel.fromDbToExcelStu(list);
        try {
           
            String path="D:\\fileupload";
            InputStream inputStream = new FileInputStream(new File(path+ File.separator + fileName));

            OutputStream os = response.getOutputStream();
            byte[] b = new byte[2048];
            int length;
            while ((length = inputStream.read(b)) > 0) {
                os.write(b, 0, length);
            }

            os.close();

            inputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
            
        return null;
    }
}
