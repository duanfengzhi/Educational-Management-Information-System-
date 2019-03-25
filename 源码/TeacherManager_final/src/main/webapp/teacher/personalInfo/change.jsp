<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                 <i class="mdi mdi-account-box"></i>                 
               </span>
                修改个人信息
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>个人信息
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			 <div class="row">
			   <div class="col-12">
			     <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">编辑个人资料</h4>
                      <p class="card-description">
                       请按真实情况填写
                      </p>
					  <!-- 这里有一个表单 -->
                      <form class="forms-sample" action="<%=basePath %>teacher/changeTeaInfoByselfCtrl" method="post">
					   <div class="row">
						<div class="col-md-6">
                          
                          <div class="form-group row">
                            <label for="exampleInputMobile" class="col-sm-3 col-form-label">电话</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputMobile" name="teatel" value="${sessionScope.teacher.teaTel }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputPassword2" class="col-sm-3 col-form-label">邮箱</label>
                            <div class="col-sm-9">
                              <input type="email" class="form-control" id="exampleInputPassword2" name="teaemail" value="${sessionScope.teacher.teaEmail }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">年龄</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="teaage" value="${sessionScope.teacher.teaAge }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputMobile" class="col-sm-3 col-form-label">类型</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputMobile" name="teakind" value="${sessionScope.teacher.teaKind }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputPassword2" class="col-sm-3 col-form-label">所属学院</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputPassword2" name="teaBelong" value="${sessionScope.teacher.teaBelong }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">职称</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputUsername2" name="teatitle" value="${sessionScope.teacher.teaTitle }">
                            </div>
                          </div>
                          
						</div> 
						<div class="col-md-6">
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">学位</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="teadegree" value="${sessionScope.teacher.teadegree }">
                            </div>
                          </div>
                          
						   <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">教授课程</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="teaCourse" value="${sessionScope.teacher.teaCourse }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">毕业学校</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="teagraduate" value="${sessionScope.teacher.teagraduate }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">海外经历</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="overSeaExp" value="${sessionScope.teacher.overSeaExp }">
                            </div>
                          </div>
						  
						</div>
					   </div>
                       <button type="submit" class="btn btn-gradient-primary mr-2">提交</button>
					   <!-- 这个button是写成链接还是由表单完成取消 -->
					   <a href="<%=basePath %>teacher/personalInfo/show.jsp"><button type="button" class="btn btn-light">取消</button></a>
                      </form>
                      
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