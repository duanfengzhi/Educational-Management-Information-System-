<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员首页</title>
    
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
    	<jsp:include page="./navbar.jsp" flush="true"/>
    	<div class="container-fluid page-body-wrapper">
    		<jsp:include page="./sidebar.jsp" flush="true"/>
    		<div class="main-panel">
    			<!-- 页面代码在此放置 -->
  		
  		
  		
  			    
        <div class="content-wrapper">


          <div class="row">
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-danger card-img-holder text-white">
                <div class="card-body">
                  <img src="images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image"/>
                  <h4 class="font-weight-normal mb-3">待审核教师信息
                    <i class="mdi mdi-account-multiple-plus mdi-24px float-right"></i>
                  </h4>
                  <h2 class="mb-5"></h2>
                  <h6 class="card-text"><a href="<%=basePath%>admin/ListActiveTeaInfoCtrl">点击进入审核</a></h6>
                </div>
              </div>
            </div>
            <div class="col-md-4 stretch-card grid-margin">
              <div class="card bg-gradient-info card-img-holder text-white">
                <div class="card-body">
                  <img src="images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image"/>                  
                  <h4 class="font-weight-normal mb-3">待审核反馈
                    <i class="mdi mdi-comment-alert-outline mdi-24px float-right"></i>
                  </h4>
                  <h2 class="mb-5"></h2>
                  <h6 class="card-text"> <a href="<%=basePath%>admin/allFeedBackCtrl">点击进入审核</a></h6>
                </div>
              </div>
            </div>

          </div>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
         
         
         
         
  			    
  			    <!-- 插入footer之前的代码 -->
    			<jsp:include page="./footer.jsp" flush="true"/>
    		</div>
    	</div>
    </div>
  </body>
</html>