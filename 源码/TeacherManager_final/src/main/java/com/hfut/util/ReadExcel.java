package com.hfut.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**

 * 工具类读取Excel类中内容
 */
public class ReadExcel {
	//excel类型
	private String exceltype = "0";
    //总行数
    private int totalRows = 0;  
    //总条数
    private int totalCells = 0; 
    //错误信息接收器
    private String errorMsg;
    //构造方法
    public ReadExcel(String exceltype){
    	this.exceltype = exceltype;
    }
    //获取总行数
    public int getTotalRows()  { return totalRows;} 
    //获取总列数
    public int getTotalCells() {  return totalCells;} 
    //获取错误信息
    public String getErrorInfo() { return errorMsg; }
    
  /**
   * 读EXCEL文件
   */
  public ArrayList<ArrayList<String>> getExcelInfo(MultipartFile Mfile){
      
      //把spring文件上传的MultipartFile转换成CommonsMultipartFile类型
       CommonsMultipartFile cf= (CommonsMultipartFile)Mfile; //获取本地存储路径
       File file = new  File("D:\\fileupload");
       //创建一个目录 
       if (!file.exists()) file.mkdirs();
       //新建一个文件
       File file1 = null;
       if(exceltype.equals("xls")){
    	   file1 = new File("D:\\fileupload\\" + Mfile.getOriginalFilename() + new Date().getTime() + ".xls"); 
       }
       if(exceltype.equals("xlsx")){
    	   file1 = new File("D:\\fileupload\\" + Mfile.getOriginalFilename() + new Date().getTime() + ".xlsx"); 
       }
       //将上传的文件写入新建的文件中
       try {
           cf.getFileItem().write(file1);
       } catch (Exception e) {
           e.printStackTrace();
       }
       
       
       ArrayList<ArrayList<String>> relist=new ArrayList<ArrayList<String>>();
       //初始化输入流
       FileInputStream is = null;
       Workbook wb = null;
       try{
          //根据新建的文件实例化输入流
          is = new FileInputStream(file1);
          //根据excel里面的内容读取客户信息
          
          //当excel是2003时
          if(exceltype.equals("xls"))
          wb = new HSSFWorkbook(is);
          //当excel是2007时
          if(exceltype.equals("xlsx"))
          wb = new XSSFWorkbook(is);
          
          //读取Excel里面客户的信息
          relist=readExcelValue(wb);
          is.close();
      }catch(Exception e){
          e.printStackTrace();
      } finally{
          if(is !=null)
          {
              try{
                  is.close();
              }catch(IOException e){
                  is = null;    
                  e.printStackTrace();  
              }
          }
      }
      return relist;
  }
 
  /**
   * 读取Excel里面客户的信息
   * @param wb
   * @return
   */
  private ArrayList<ArrayList<String>> readExcelValue(Workbook wb){ 
      //得到第一个shell  
       Sheet sheet=wb.getSheetAt(0);
       
      //得到Excel的行数
       this.totalRows=sheet.getPhysicalNumberOfRows();
       
      //得到Excel的列数(前提是有行数)
       if(totalRows>=1 && sheet.getRow(0) != null){//判断行数大于一，并且第一行必须有标题（这里有bug若文件第一行没值就完了）
            this.totalCells=sheet.getRow(0).getPhysicalNumberOfCells();
       }else{
           return null;
       }
       
       ArrayList<ArrayList<String>> relist=new ArrayList<ArrayList<String>>();//声明一个对象集合
       
       
      
       
      //循环Excel行数,从第二行开始。标题不入库
       for(int r=1;r<totalRows;r++){
           Row row = sheet.getRow(r);
           if (row == null) continue;
           ArrayList<String> list = new ArrayList<String>();
           //循环Excel的列
           for(int c = 0; c <this.totalCells; c++){ 
               Cell cell = row.getCell(c);
               if (null != cell){
                   list.add(getValue(cell));
                   //用二维list保存
               }
           }
           //添加对象到集合中
           relist.add(list);
       }
       return relist;
  }
  

  @SuppressWarnings({ "static-access", "unused" })
  private String getValue(Cell cell) {
      if (cell.getCellType() == cell.CELL_TYPE_BOOLEAN) {
          // 返回布尔类型的值
          return String.valueOf(cell.getBooleanCellValue());
      } else if (cell.getCellType() == cell.CELL_TYPE_NUMERIC) {
          // 返回数值类型的值
          return String.valueOf(cell.getNumericCellValue());
      } else {
          // 返回字符串类型的值
          return String.valueOf(cell.getStringCellValue());
      }
  }

}
