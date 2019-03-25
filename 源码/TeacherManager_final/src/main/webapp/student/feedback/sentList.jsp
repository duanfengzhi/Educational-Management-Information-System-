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
    
    <title>已发送反馈</title>
    
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






<%--            <div class="content-wrapper">   
		     <div class="page-header">
               <h3 class="page-title">
               <span class="page-title-icon bg-gradient-primary text-white mr-2">
                 <i class="mdi mdi-format-list-bulleted"></i>                 
               </span>
                已发送反馈列表
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>查看反馈
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			    <div class="row">
				    <div class="col-lg-12 grid-margin stretch-card">
                      <div class="card">
                        <div class="card-body">                       	
                          <h4 class="card-title">已发送反馈列表</h4>
                          <p class="card-description">
                          </p>
						  <!-- 这个地方的button要怎么处理 先用链接实现假跳转 后换成表单-->
						  
						  <form action="student/sentListCtrl" method="POST">
	            				<span style="font-size: 15px;font-family: 'Microsoft YaHei UI'">请选择时间段：
	               			 	<input name="date1" type="date" style="width: 150px" value="" />
	                			<input name="date2" type="date" style="width: 150px" value="" />&emsp;状态：
	                			<select name='status' >
			            			<option value=''>未选择</option>
			            			<option value='未审核'>未审核</option>
			            			<option value='未回复'>未回复</option>
									<option value='已回复'>已回复</option>
			        			</select>
	            				</span>
	            				&emsp;<input class="btn btn-default" type=submit style="font-size: 13px" value='查 询' />&emsp;
            			  </form>

						  <form action="#">
                          <table class="table table-striped">
	                            <thead>
	                              <tr>
	                               <th>
	                                内容
	                               </th>
	                               <th>
	                                反馈类型
	                               </th>
	                               <th>
	                                时间
	                               </th>
	                               <th>
	                                状态
	                               </th>
	                              </tr>
	                            </thead>
                            <tbody>
                             <tr>
							  <td>
                               张老师
							  </td>
                              <td>
                               教师反馈
                              </td>
                              <td>
                               2018.09.23 
                              </td>
                              <td>
                               已回复
                              </td>
                              <td>
                               <a href="<%=basePath%>/student/feedback/sentInfo.jsp"><button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button></a>
							  </td>
                             </tr>
                            </tbody>
                         </table>
						 </form>
						 <!-- 这里以后要注意表单 -->
						 <nav aria-label="breadcrumb">
                           <ul class="breadcrumb">
						     <a href="<%=basePath%>student/sentListCtrl?page=0">首 页</a>&nbsp;&nbsp;&nbsp;&nbsp;  
							 <a href="<%=basePath%>student/sentListCtrl?page=prev">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
							 <a href="<%=basePath%>student/sentListCtrl?page=next">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
							 <a href="<%=basePath%>student/sentListCtrl?page=${requestScope.lastPage}">末 页</a>
						   </ul>
                         </nav>
                       </div>
                    </div>
                 </div>
			   </div>
           </div> --%>
           
           
           
           
           
           
           
           <div class="content-wrapper">   
		     <div class="page-header">
               <h3 class="page-title">
               <span class="page-title-icon bg-gradient-primary text-white mr-2">
                 <i class="mdi mdi-cards"></i>                 
               </span>
                已发送反馈列表
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>查看反馈
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			    <div class="row">
				    <div class="col-lg-12 grid-margin stretch-card">
                      <div class="card">
                        <div class="card-body">
                          <h4 class="card-title">学生反馈列表列表</h4>
                          <p class="card-description">
                          </p>
                          
            	
    			<form action="student/sentListCtrl" method="POST" class="forms-sample">
        			<table width="800">
        			  <tr align="center">
	        			    <td>
		             		<input name="date1" type="date" class="form-control" style="width: 150px" value="" />
		             		</td>
		             		<td>
		                	<input name="date2" type="date" class="form-control" style="width: 150px" value="" />
		                	</td>
		                	<td>
		                	<select name='status' class="form-control">
			            		<option value=''>全部反馈</option>
			            		<option value='未审核'>未审核</option>
					            <option value='未回复'>未回复</option>
								<option value='已回复'>已回复</option>
					        </select>
					        </td>
					        <td>
			            	<input class="btn btn-primary" type=submit style="font-size: 13px" value='查 询' />&emsp;
			            	</td>
	            	  </tr>
	            	</table>
            	</form>	
            	
            	
            	
            	
            	
                           
						  <!-- 这个地方的button要怎么处理 要变成form-->
                          <table class="table table-striped">
                            <thead align="center">
                              <tr>
                               <th class="text-primary">
                                是否匿名
                               </th>
                               <th class="text-primary">
                                课程名称
                               </th>
                               <th class="text-primary">
                                时间
                               </th>
							   <th class="text-primary">
                                状态
                               </th>
                              </tr>
                            </thead>
                            <tbody align="center">
                            
                             <c:forEach var="f" items="${requestScope.feedbacks}">
	                               <tr>
	                             	    <c:if test="${f.state==0}">
										   <td>匿名</td>
										</c:if>
										<c:if test="${f.state==1}">
										   <td>实名</td>
										</c:if>
		                              <td>
		                               ${f.claName}
		                              </td>
		                              <td>
		                               ${f.sendTime}
		                              </td>
									  <td>
									    ${f.status}
									  </td>
		                              <td>
		                               <a href="<%=basePath%>student/detailFeedBackDetailCtrl?fnum=${f.fnum}"><button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button></a>
									  </td>
	                               </tr>
                             </c:forEach>
                             
                            </tbody>
                         </table>
						 <br>
						 <br>
						 <!-- 这里以后要注意表单 -->
  						    <nav aria-label="breadcrumb" style="margin-left:30%">
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href='<%=basePath%>student/sentListCtrl?page=0'><button type="button" class="btn btn-outline-primary btn-sm">首页</button></a></li>
									<li class="breadcrumb-item"><a href='<%=basePath%>student/sentListCtrl?page=prev'><button type="button" class="btn btn-outline-primary btn-sm">上一页</button></a></li>
									<li class="breadcrumb-item"><a href='<%=basePath%>student/sentListCtrl?page=next'><button type="button" class="btn btn-outline-primary btn-sm">下一页</button></a></li>
									<li class="breadcrumb-item"><a href='<%=basePath%>student/sentListCtrl?page=${requestScope.lastPage}'><button type="button" class="btn btn-outline-primary btn-sm">末页</button></a></li>
								</ul>
							</nav>
                         
                         
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