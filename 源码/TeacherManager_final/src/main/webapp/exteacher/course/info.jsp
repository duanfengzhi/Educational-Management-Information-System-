<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教师首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- plugins:css -->
    <link rel="stylesheet" href="<%=basePath%>vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<%=basePath%>vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<%=basePath%>css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="<%=basePath%>images/favicon.png" />
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
    <div class="container-scroller">
    	<jsp:include page="../partials/navbar.jsp" flush="true"/>
    	<div class="container-fluid page-body-wrapper">
    		<jsp:include page="../partials/sidebar.jsp" flush="true"/>
    		<div class="main-panel">
    			<!-- 页面代码在此放置 -->
    			
    			
    			
    			
    			
    			
    			
    			
    			
    			
           <div class="content-wrapper">   
		     <div class="page-header">
			   <h3 class="page-title">
               <span class="page-title-icon bg-gradient-primary text-white mr-2">
                 <i class="mdi mdi-book-minus"></i>                 
               </span>
                查看教师个人课程信息
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>查看课程信息
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			 <div class="row">
			   <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                 <div class="card-body">
                   <h4 class="card-title">课程详细信息</h4>
                   <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th class="text-primary">
                          课程编号
                        </th>
                        <th class="text-primary">
                          课程名称
                        </th>
                        <th class="text-primary">
                          上课时间
                        </th>
						<th class="text-primary">
                          上课地点
                        </th>
                        <th class="text-primary">
                          学分
                        </th>
                        <th class="text-primary">
                          学时
                        </th>
						<th class="text-primary">
                          实验学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th>  
						<th class="text-primary">
                          理论学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th>
						<th class="text-primary">
                          理论学时
                        </th> 	                        
                        <th>
                          学生名单
                        </th>
                      </tr>
                    </thead>
                  <tbody>
                    <c:forEach var="c" items="${courseInfos}">
				        <tr style="align: center">
		                    <td style="width: 10%">${c.cno}</td>
		                    <td style="width: 25%">${c.cname}</td>
		                    <td style="width: 10%">${c.cbegintime}</td>
		                    <td style="width: 10%">${c.ccredit}</td>
		                    <td style="width: 10%">${c.ccreditofex}</td>
		                    <td style="width: 10%">${c.cperiod}</td>
		                    <td style="width: 10%">${c.cperiodofex}</td>
		                    <td style="width: 10%">${c.cperiodofth}</td>
		                    <td style="width: 10%">${c.cperiodofpra}</td>
		                    <td style="width: 10%">${c.cperiodofcom}</td>
		                    <td style="width: 10%">${c.cutil}</td>
		                    <td style="width: 10%">${c.ctype}</td>
		                    <td style="width: 10%">${c.teano}</td>
		                    <td style="width: 10%">${c.teaname}</td>
		                    <td style="width: 10%"><a href="downloadstulistexcel?fileName=stulist.xls&cno=${c.cno}">下载学生名单</a></td>
	                </tr>
        			</c:forEach>
                   	</tbody>
                  </table>
                   </br>
				   </br>
				   <!-- 怎么实现分页 -->
				 </div>
                </div>
               </div>
			 </div>
			 </div>
  		
  		
         
         
         
         
  			    
  			    <!-- 插入footer之前的代码 -->
    			<jsp:include page="../partials/footer.jsp" flush="true"/>
    		</div>
    	</div>
    </div>
  </body>
</html>