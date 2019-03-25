<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>领导首页</title>
    
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
                 <i class="mdi mdi-cards"></i>                 
               </span>
                反馈信息详情
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>查看学生反馈
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
		     
		     <c:set var="f" scope="session" value="${requestScope.feedback}"/>
		     
			  <div class="row">
                <div class="col-md-7 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">
                      		<c:if test="${f.state==0}">
							   <td>匿名</td>
							</c:if>
							<c:if test="${f.state==1}">
							    ${feedbackStuName}
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                    ${f.stuNum}
							</c:if>
					  </h4>
                      <p class="card-description">
                        ${f.claName }
                      </p>
                      
	                      		        <c:set var="type" scope="session" value="${f.type}"/>
			                        	<c:if test="${type==1}">
										   <p class="text-danger">紧急反馈<p>
										</c:if>
										<c:if test="${type==2}">
										   <p class="text-danger">教师反馈<p>
										</c:if>
										<c:if test="${type==3}">
										   <p class="text-danger">学院实习安排建议<p>
										</c:if>
										<c:if test="${type==4}">
										   <p class="text-danger">学院硬件设施建议<p>
										</c:if>
										<c:if test="${type==5}">
										   <p class="text-danger">学院课程安排建议<p>
										</c:if>
										<c:if test="${type==6}">
										   <p class="text-danger">其他<p>
										</c:if>
                      
					  <p class="text-primary">${f.status }</p>
                      <p>
                        ${f.info }
                      </p>
                      <button class="btn btn-outline-primary" onclick="history.back()" >返回</button>
					  <!-- 这里有一个表单连接后台操作 -->
				   </div>
                  </div>
                </div>
			  </div>
            </div>
            
            
            
            
            
            
            
            
            
           <div class="content-wrapper">   
		     <div class="page-header">
               <h3 class="page-title">
               <span class="page-title-icon bg-gradient-primary text-white mr-2">
                 <i class="mdi mdi-cards"></i>                 
               </span>
                回复反馈
               </h3>
		     </div>
			 <div class="row">
				  <div class="col-7 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <p class="card-description"></p>
						<p class="card-description"></p>
						<!-- 这里的表单action 取消的时候是链接还是表单实现-->
                        <form class="forms-sample" action="<%=basePath %>boss/replyCtrl?fnum=${f.fnum }" method="POST">
                          <div class="form-group">
                            <label for="exampleTextarea1">回复内容</label>
                            <textarea class="form-control" name="reply" id="exampleTextarea1" rows="8" ><c:if test="${ not empty f.reply }">${f.reply}</c:if><c:if test="${empty f.reply}">请填写回复</c:if></textarea>
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
						   <button type="submit" class="btn btn-gradient-primary mr-2">提交</button>
                           <a href="<%=basePath%>boss/feedback/list.jsp"><button type="button" class="btn btn-light">取消</button></a>
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
  </body>
</html>
