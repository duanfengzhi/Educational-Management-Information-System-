<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    String importMsg = "";
    if (request.getSession().getAttribute("msg") != null) {
        importMsg = request.getSession().getAttribute("msg").toString();
    }
    request.getSession().setAttribute("msg", "");
%>
<head>
	<title>导入数据</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
	    function check() {
	        var excel_file = $("#excel_file").val();
	        if (excel_file == "" || excel_file.length == 0) {
	            alert("请选择文件路径！");
	            return false;
	        } else {
	            return true;
	        }
	    }
	
	    $(document).ready(function() {
	        var msg = "";
	        if ($("#importMsg").text() != null) {
	            msg = $("#importMsg").text();
	        }
	        if (msg != "") {
	            alert(msg);
	        }
	    });
	</script>
	</head>
<body>
   
    <a href="download?fileName=muban.xlsx">下载Excel模板</a>
    <div>
        <font color="bule">导入数据</font>
    </div>
    
    <form action="ImportSCInfoCtrl" method="post" enctype="multipart/form-data" onsubmit="return check();">
        <div style="margin: 30px;">
            <input id="excel_file" type="file" name="filename" accept="xlsx" size="80" />
            <input id="excel_button" type="submit" value="导入Excel" />
        </div>
        <font id="importMsg" color="red"><%=importMsg%></font><input type="hidden" />
    </form>
</body>
</html>