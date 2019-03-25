package com.hfut.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.hfut.domain.FeedBack;

@Controller
public class UploadController {
	private final String UPLOAD_PATH = "";
    
    
    @RequestMapping(value = "/uploadExamImg",method = RequestMethod.POST)
    public String uploadExamImg(@RequestParam(value="photo") MultipartFile photo,String filename,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
    	String realPath = request.getServletContext().getRealPath("/images");
    	String oldname = filename.substring(0, 4);
    	String newName = oldname + "exam.jpg";
    	File dest = new File(realPath+File.separator+newName );
    	photo.transferTo(dest);

       return "redirect:/admin/educationalAdm/examIn.jsp";
    }
    
    
    
    @RequestMapping(value = "/uploadCourseImg",method = RequestMethod.POST)
    public String uploadCourseImg(@RequestParam(value="photo") MultipartFile photo,String filename,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
    	String realPath = request.getServletContext().getRealPath("/images");
    	String oldname = filename.substring(0, 4);
    	String newName = oldname + "class.jpg";
    	File dest = new File(realPath+File.separator+newName );
    	photo.transferTo(dest);
       return "redirect:/admin/courseMng/classSchedule.jsp";
    }
    
    
    
    @RequestMapping(value = "/uploadPreImg",method = RequestMethod.POST)
    public String uploadPreImg(@RequestParam(value="photo") MultipartFile photo,String filename,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
    	String realPath = request.getServletContext().getRealPath("/images");
    	String oldname = filename.substring(0, 4);
    	String newName = oldname+"experiment.jpg";
    	File dest = new File(realPath+File.separator+newName );
    	photo.transferTo(dest);
       return "redirect:/admin/courseMng/experimentSchedule.jsp";
    }
    
    
	/*
	 * 上传图片
	 * 需要获取当前页面的feedback对象
	 */
	@RequestMapping(value="/ImageUploadCtrl",method = RequestMethod.POST)
	public String imageUpload(Model model, MultipartFile image,
			HttpSession session, @RequestParam("fileinp") CommonsMultipartFile myfile,
			@Valid @ModelAttribute("feedback")FeedBack fb) {
		
		if (myfile == null ) return "";
		if (myfile.getOriginalFilename().equals("")) return "";

		File file = new File(UPLOAD_PATH);
        if(!file.exists()){
            file.mkdirs();
        }
         
        String newFilename = System.currentTimeMillis() + ".png";
        try {
            myfile.transferTo(new File(UPLOAD_PATH, newFilename));
            fb.setPicture(newFilename);
        } catch (Exception e) {
            e.printStackTrace();
            Map<String, String> errMap = new HashMap<String, String>();
			errMap.put("GLOBAL", "发生非预期错误，请联系管理员");
			model.addAttribute("errMap", errMap);
            return "";
        }

        session.setAttribute("success", "上传成功!");
        model.addAttribute("feedback", fb);
        return "";
	}	
}
