package com.hfut.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.hfut.service.ImportInfo;
import com.hfut.util.ReadExcel;
import com.hfut.util.WDWUtil;


@Controller
@RequestMapping("/admin")
public class ImportController {

    @Resource
    private ImportInfo importservice;
    
    /**
     * 上传Excel,读取Excel中内容
     */
    
    /* 导入选课  */
    @RequestMapping(value = "/ImportSCInfoCtrl",method = RequestMethod.POST)
    public String importSCInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        
        String Msg =null;
        
        //判断文件是否为空
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        
        //获取文件名
        String name=file.getOriginalFilename();
        
        //进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）验证文件名是否合格
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        
        //处理EXCEL
        ReadExcel readExcel=new ReadExcel(exceltype);
        //return 二维ArrayList
        
        //解析excel，获取信息集合。
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importSCInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/educationalAdm/lessonIn.jsp";
    }
    /* 导入课程信息  */
    @RequestMapping(value = "/ImportCouInfoCtrl",method = RequestMethod.POST)
    public String importCouInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        String name=file.getOriginalFilename();
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        
        ReadExcel readExcel=new ReadExcel(exceltype);
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importCouInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/educationalAdm/lessonIn.jsp";
    }
    
    
    
    /*导入学生信息*/
    @RequestMapping(value = "/ImportStuInfoCtrl",method = RequestMethod.POST)
    public String importStuInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        
        String Msg =null;
        
        //判断文件是否为空
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/studentMng.jsp";
        }
        
        //获取文件名
        String name=file.getOriginalFilename();
        
        //进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）验证文件名是否合格
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/studentMng.jsp";
        }
        
        //处理EXCEL
        ReadExcel readExcel=new ReadExcel(exceltype);
        //return 二维ArrayList
        
        //解析excel，获取信息集合。
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importStuInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/educationalAdm/studentMng.jsp";
    }
    
    
    
    /*导入校内教师信息*/
    @RequestMapping(value = "/ImportTeaInfoCtrl",method = RequestMethod.POST)
    public String importTeaInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/ListTeacherInfo.jsp";
        }
        
        //获取文件名
        String name=file.getOriginalFilename();
        
        //进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）验证文件名是否合格
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/ListTeacherInfo.jsp";
        }
        
        ReadExcel readExcel=new ReadExcel(exceltype);
        
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importTeaInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/ListTeacherInfoCtrl";
    }
    /*导入外聘教师基本信息*/
    @RequestMapping(value = "/ImportExTeaInfoCtrl",method = RequestMethod.POST)
    public String importExTeaInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/ListExTeacherInfo.jsp";
        }
        
        //获取文件名
        String name=file.getOriginalFilename();
        
        //进一步判断文件是否为空（即判断其大小是否为0或其名称是否为null）验证文件名是否合格
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/ListExTeacherInfo.jsp";
        }
        
        ReadExcel readExcel=new ReadExcel(exceltype);
        
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importExTeaInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/ListExTeacherInfoCtrl";
    }
    
    /*导入外聘教师课表*/
    @RequestMapping(value = "/ImportExCTInfoCtrl",method = RequestMethod.POST)
    public String importExCTInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        String name=file.getOriginalFilename();
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            System.out.println("文件格式不正确！请使用.xls或.xlsx后缀文档。");
            return "redirect:/admin/educationalAdm/lessonIn.jsp";
        }
        ReadExcel readExcel=new ReadExcel(exceltype);
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importExCTInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "redirect:/admin/educationalAdm/lessonIn.jsp";
    }
    
    /*导入管理员账号*/
    @RequestMapping(value = "/ImportMngInfoCtrl",method = RequestMethod.POST)
    public String importMngInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg",Msg);
            return "admin/educationalAdm/addnew";
        }
        String name=file.getOriginalFilename();
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg",Msg);
            System.out.println("文件格式不正确！请使用.xls或.xlsx后缀文档。");
            return "admin/educationalAdm/addnew";
        }
        ReadExcel readExcel=new ReadExcel(exceltype);
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importMngInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg",Msg);
        } 
       return "admin/educationalAdm/addnew";
    }
    
    /*导入领导账号*/
    @RequestMapping(value = "/ImportBossInfoCtrl",method = RequestMethod.POST)
    public String importBossInfo(@RequestParam(value="filename") MultipartFile file,Model model, HttpSession session ,HttpServletRequest request) throws IOException{
        String Msg =null;
        if(file==null){
            Msg ="文件是为空！";
            model.addAttribute("msg2",Msg);
            return "admin/educationalAdm/addnew";
        }
        String name=file.getOriginalFilename();
        long size=file.getSize();
        String exceltype = WDWUtil.validateExcel(name);
        if(name==null || ("").equals(name) && size==0 && exceltype.equals("0")){ //"0"为false
            Msg ="文件格式不正确！请使用.xls或.xlsx后缀文档。";
            model.addAttribute("msg2",Msg);
            System.out.println("文件格式不正确！请使用.xls或.xlsx后缀文档。");
            return "admin/educationalAdm/addnew";
        }
        ReadExcel readExcel=new ReadExcel(exceltype);
        ArrayList<ArrayList<String>> relist = readExcel.getExcelInfo(file);
        if(relist != null && !relist.toString().equals("[]") && relist.size()>=1){
        	Iterator<ArrayList<String>> i=relist.iterator();
        	boolean ok = true;
            while(i.hasNext()){
                ok = importservice.importBossInfo(i.next());
            }
            if(ok!=false){
            	Msg ="批量导入EXCEL成功！";
             	model.addAttribute("msg2",Msg);
            }
            else{
            	Msg ="批量导入EXCEL失败！";
                model.addAttribute("msg2",Msg);
            }
        }else{
             Msg ="批量导入EXCEL失败！";
             model.addAttribute("msg2",Msg);
        } 
       return "admin/educationalAdm/addnew";
    }
}
