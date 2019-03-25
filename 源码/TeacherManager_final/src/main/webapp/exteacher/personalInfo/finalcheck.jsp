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
    
    <title>添加教评</title>
    
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
                填写教评信息
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span>教评信息</span>
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			 <div class="row">
			   <div class="col-12">
			     <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">编辑教评信息</h4>
                      <p class="card-description">
                       请按真实情况填写
                      </p>
					  <!-- 这里有一个表单 -->
                      <form class="forms-sample" action="<%=basePath%>teacher/finalcheckCtrl" method="post">
					   <div class="row">
						<div class="col-md-6">
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">工程背景</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="engBack" placeholder="${sessionScope.teacher.engBack }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">主持项目</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="project" placeholder="${sessionScope.teacher.project }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">论文</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="paper" placeholder="${sessionScope.teacher.paper }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">专利</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="patent" placeholder="${sessionScope.teacher.patent }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">软著</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="theSoft" placeholder="${sessionScope.teacher.theSoft }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">专著</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="mono" placeholder="${sessionScope.teacher.mono }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">教研论文</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="teaPaper" placeholder="${sessionScope.teacher.teaPaper }">
                            </div>
                          </div>
						</div> 
						<div class="col-md-6">
                          <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">科研教学获奖</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="teahonor" placeholder="${sessionScope.teacher.teahonor }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">师德师风表彰</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="teaMorality" placeholder="${sessionScope.teacher.teaMorality }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="" class="col-sm-3 col-form-label">与本学院科研结果</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="" name="coorResult" placeholder="${sessionScope.teacher.coorResult }">
                            </div>
                          </div>
						   
						</div>
					   </div>
                       <button type="submit" class="btn btn-gradient-primary mr-2">提交</button>
                       
					   <!-- 这个button是写成链接还是由表单完成取消 -->
					   <a href="<%=basePath %>teacher/personalInfo/show.jsp"><button type="button" class="btn btn-light">取消</button></a>
					   <%-- <div>                 	
	                     <span>${finalcheck}</span>
                      	</div> --%>
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