<%@ page import="java.util.*,com.hfut.domain.Teacher" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教师信息管理</title>
    
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
			<i class="mdi mdi-border-color"></i>                 
			</span>
			审核教师信息
		</h3>
	    <!-- <nav aria-label="breadcrumb">
	      <ul class="breadcrumb">
	        <li class="breadcrumb-item active" aria-current="page">
	          <span></span>发送反馈
              <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
          </ul>
        </nav> -->
	</div>
    			
		
  <div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">${teacher.teaName}</h4>
        
	 <table class="table table-hover">
	   <thead align="center">
		<tr>
  	 		<th>工号</th>
  	 		<th>类型</th>
  	 		<th>学院</th>
  	 		<th>教授课程</th>
  	 		<th>职位</th>
  	 		<th>学历</th>
  	 		<th>年龄</th>
  	 		<th>性别</th>
  	 		<th>毕业学校</th>
  	 		<th>海外留学经历</th>
  	 	</tr>
  	   </thead>
	  
	    <tbody align="center">
          <tr>
             <td>${teacher.teaNo}</td>
             <td>${teacher.teaKind}</td>
             <td>${teacher.teaBelong}</td>
              <td>${teacher.teaCourse}</td>
             <td>${teacher.teaTitle}</td>
             <td>${teacher.teadegree}</td>
             <td>${teacher.teaAge}</td>
             <td>${teacher.teaSex }</td>
             <td>${teacher.teagraduate }</td>
             <td>${teacher.overSeaExp }</td>
		  </tr>
		</tbody>
  	</table><p>
  	
  			<div style="margin-left:39%">
  	        	<a href='admin/PassCtrl?tid=${teacher.teaNo}' class="btn btn-outline-danger btn-sm">予以通过</a>
  				<a href='admin/NoPassCtrl?tid=${teacher.teaNo}' class="btn btn-outline-danger btn-sm">不通过</a>
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