<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>编写反馈</title>
    
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
                编辑反馈
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>发送反馈
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>

				<div class="row">
				  <div class="col-8 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <p class="card-description"></p>
						<p class="card-description"></p>
						
						
						<!-- 这里的表单action -->
						<jsp:useBean id="feedback" scope="request" class="com.hfut.domain.FeedBackForm" />
    					<form:form modelAttribute="feedback" action="student/WriteFBCtrl" method="POST">
    					
    					
                        <div class="form-group row">
                          <div class="col-sm-4">
                            <div class="form-check">
                              <label class="form-check-label">
                                <form:radiobutton path="state" value="0" class="form-check-input"/>
                                匿名
                              </label>
                            </div>
                          </div>
                          <div class="col-sm-5">
                            <div class="form-check">
                              <label class="form-check-label">
                                <form:radiobutton path="state" value="1" class="form-check-input" />
                                不匿名
                              </label>
                            </div>
                          </div>
                        </div>
    					
                        
                          <div class="form-group">
                            <label for="exampleInputName1">课程名称</label>
                            <form:input path="claName" class="form-control" placeholder='课程名称' autocomplete="on" id="cn"/>
                          </div>
                          
                          <div class="form-group">
                            <label for="exampleInputEmail3">教师姓名</label>
                            <form:input path="teaName" class="form-control" placeholder='教师姓名' autocomplete="on" id="tn"/>
                          </div>
                          
                          <div class="form-group">
                            <label for="exampleTextarea1">反馈内容</label>
                            <form:textarea path="info" rows="8" class="form-control" placeholder='字数不得超出500字......' autocomplete="on" id="fbinfo"/>
                          </div>
                          
						  <!-- <div class="form-group">
                            <label>添加图片</label>
                              <input type="file" name="img[]" class="file-upload-default">
                              <div class="input-group col-xs-12">
	                              <input type="text" class="form-control file-upload-info" disabled placeholder="上传图片">
	                              <span class="input-group-append">
	                                <button class="file-upload-browse btn btn-gradient-primary" type="button">上传</button>
	                              </span>
                              </div>
                          </div> -->
                          
						  <div class="row">
						  <div class="col-md-6">
                              <div class="form-group">
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="1" />
                                    紧急反馈
                                  </label>
                                </div>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="2" />
                                    教师反馈
                                  </label>
                                </div>
								<div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="3" />
                                    学院实习安排建议
                                  </label>
                                </div>
                              </div>
                            </div>
							<div class="col-md-6">
                              <div class="form-group">
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="4" />
                                    学院硬件设施建议
                                  </label>
                                </div>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="5" />
                                    学院课程安排建议
                                  </label>
                                </div>
								<div class="form-check">
                                  <label class="form-check-label">
                                    <form:radiobutton path="type"  class="form-check-input" value="6" />
                                    其他
                                  </label>
                                </div>
                              </div>
                            </div>
							</div>
                          <button type="submit" class="btn btn-gradient-primary mr-2">提交</button>
                          <button class="btn btn-light">取消</button>
                        </form:form>
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