package com.hfut.util;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

/*
 * 工具类验证Excel文档
 */
public class WDWUtil {
      /*
		是否是2003的excel，返回true是2003
       */
      public static boolean isExcel2003(String filePath)  {  
            return filePath.matches("^.+\\.(?i)(xls)$");  
      }  
      
      @SuppressWarnings({ "static-access", "unused" })
      public static boolean isRowEmpty(Row row) {
    	  	for (int c = row.getFirstCellNum(); c < row.getLastCellNum(); c++) {
    	  		Cell cell = row.getCell(c);
    	  		if (cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK)return false;
    	  	}
    	  	return true;
	  }

      /*
       	是否是2007的excel，返回true是2007
       */
      public static boolean isExcel2007(String filePath)  {  
            return filePath.matches("^.+\\.(?i)(xlsx)$");  
      }
        
      /**
       * 验证是否是EXCEL文件
       */
      public static String validateExcel(String filePath){
            if (filePath == null || !(isExcel2003(filePath) || isExcel2007(filePath))){  
                return "0";
            }
            if(isExcel2003(filePath))return "xls";
            else if(isExcel2007(filePath))return "xlsx";
            return "0";
      }
}
