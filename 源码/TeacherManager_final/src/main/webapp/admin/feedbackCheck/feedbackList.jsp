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
    
    <title>填写标题</title>
    
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
			审核反馈
		</h3>
	</div>


  <div class="row">
    <div class="col-lg-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          
    			<form action="admin/allFeedBackCtrl" method="POST" class="forms-sample">
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
          

          <table class="table table-hover">
            <thead align="center">
	            <tr>
	              <th>反馈者</th>
	              <th>类型</th>
	              <th>反馈内容</th>
	              <th>反馈时间</th>
	              <th>状态</th>
	              <th></th>
	            </tr>
            </thead>


			<tbody align="center">
           		 <c:forEach var="f" items="${requestScope.feedbacks}">
			        <tr>
			        
			        <%-- <td>${f.stuNum}</td> --%>
						<c:if test="${f.state==0}">
						   <td>匿名</td>
						</c:if>
						<c:if test="${f.state==1}">
						   <td>${f.stuNum}</td>
						</c:if>
			        
			             
			             <%-- <td>${f.type}</td> --%>
						<c:if test="${f.type==1}">
						   <td>紧急反馈</td>
						</c:if>
						<c:if test="${f.type==2}">
						   <td>教师反馈</td>
						</c:if>
						<c:if test="${f.type==3}">
						   <td>学院实习安排建议</td>
						</c:if>
						<c:if test="${f.type==4}">
						   <td>学院硬件设施建议</td>
						</c:if>
						<c:if test="${f.type==5}">
						   <td>学院课程安排建议</td>
						</c:if>
						<c:if test="${f.type==6}">
						   <td>其他</td>
						</c:if>
			             
			             
			             
			             <td>${f.info}</td>
			             <td>${f.sendTime}</td>
			             <td>${f.status}</td>
			             <td><a href='<%=basePath%>admin/detailFeedBackDetailCtrl?fnum=${f.fnum}' class="btn btn-outline-danger btn-sm">审核</a></td>
					</tr>
				</c:forEach>
			</tbody>
		  </table>
		</div>
                
    <nav aria-label="breadcrumb" style="margin-left:30%">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href='<%=basePath%>admin/allFeedBackCtrl?page=0'><button type="button" class="btn btn-outline-primary btn-sm">首页</button></a></li>
			<li class="breadcrumb-item"><a href='<%=basePath%>admin/allFeedBackCtrl?page=prev'><button type="button" class="btn btn-outline-primary btn-sm">上一页</button></a></li>
			<li class="breadcrumb-item"><a href='<%=basePath%>admin/allFeedBackCtrl?page=next'><button type="button" class="btn btn-outline-primary btn-sm">下一页</button></a></li>
			<li class="breadcrumb-item"><a href='<%=basePath%>admin/allFeedBackCtrl?page=${requestScope.lastPage}'><button type="button" class="btn btn-outline-primary btn-sm">末页</button></a></li>
		</ul>
	</nav>
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