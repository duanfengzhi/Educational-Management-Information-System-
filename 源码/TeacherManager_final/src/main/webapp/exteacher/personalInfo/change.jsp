<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
                       按真实情况填写
                      </p>
					  <!-- 这里有一个表单 -->
                      <form class="forms-sample" action="<%=basePath %>exteacher/changeExTeaInfoByselfCtrl" method="post">
					   <div class="row">
						<div class="col-md-6">
                          <div class="form-group row">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">电话</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputUsername2" name="exTeaTel" value="${sessionScope.exteacher.exTeaTel }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">邮箱</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="exTeaEmail" value="${sessionScope.exteacher.exTeaEmail }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">工作单位</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputConfirmPassword2" name="workUnit" value="${sessionScope.exteacher.workUnit }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputConfirmPassword2" class="col-sm-3 col-form-label">工作类型</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputConfirmPassword2" name="workKind" value="${sessionScope.exteacher.workKind }">
                            </div>
                          </div>
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">教授课程</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="exTeaCourse" value="${sessionScope.exteacher.exTeaCourse }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputUsername2" class="col-sm-3 col-form-label">职位</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputUsername2" name="exTitle" value="${sessionScope.exteacher.exTitle }">
                            </div>
                          </div>
						</div> 
						<div class="col-md-6">
                          <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">学位</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="exTdegree" value="${sessionScope.exteacher.exTdegree }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">从业年限</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="jobYear" value="${sessionScope.exteacher.jobYear }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">毕业学校</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="exTgraduate" value="${sessionScope.exteacher.exTgraduate }">
                            </div>
                          </div>
						   
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">技术专长</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="major" value="${sessionScope.exteacher.major }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">承担过的项目</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="exProject" value="${sessionScope.exteacher.exProject }">
                            </div>
                          </div>
						  <div class="form-group row">
                            <label for="exampleInputEmail2" class="col-sm-3 col-form-label">证书</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="exampleInputEmail2" name="lisence" value="${sessionScope.exteacher.lisence }">
                            </div>
                          </div>
						</div>
					   </div>
                       <button type="submit" class="btn btn-gradient-primary mr-2">提交</button>
					   <!-- 这个button是写成链接还是由表单完成取消 -->
					   <a href="<%=basePath %>exteacher/personalInfo/show.jsp"><button type="button" class="btn btn-light">取消</button></a>
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