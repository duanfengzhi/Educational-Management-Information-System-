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
                        <th>
                          学生名单
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          111111111
                        </td>
                        <td>
                          统一建模语言
                        </td>
                        <td>
                          1-8周 周三1-2、周五7-8
                        </td>
                        <td>
                          八教-09
                        </td>
                        <td>
                          1
                        </td>
						<td>
                          64
                        </td>
						<td>
                          10
                        </td>
						<td>
                          54
                        </td>
                        <td>
                          
                        </td>
                      </tr>
                      <tr>
                        <td>
                          111111111
                        </td>
                        <td>
                          统一建模语言
                        </td>
                        <td>
                          1-8周 周三1-2、周五7-8
                        </td>
                        <td>
                          八教-09
                        </td>
                        <td>
                          1
                        </td>
						<td>
                          64
                        </td>
						<td>
                          10
                        </td>
						<td>
                          54
                        </td>
                      </tr>
                      <tr>
                        <td>
                          111111111
                        </td>
                        <td>
                          统一建模语言
                        </td>
                        <td>
                          1-8周 周三1-2、周五7-8
                        </td>
                        <td>
                          八教-09
                        </td>
                        <td>
                          1
                        </td>
						<td>
                          64
                        </td>
						<td>
                          10
                        </td>
						<td>
                          54
                        </td>
                      </tr>
                      <tr>
                       <td>
                          111111111
                        </td>
                        <td>
                          统一建模语言
                        </td>
                        <td>
                          1-8周 周三1-2、周五7-8
                        </td>
                        <td>
                          八教-09
                        </td>
                        <td>
                          1
                        </td>
						<td>
                          64
                        </td>
						<td>
                          10
                        </td>
						<td>
                          54
                        </td>
                      </tr>
                      <tr>
                        <td>
                          111111111
                        </td>
                        <td>
                          统一建模语言
                        </td>
                        <td>
                          1-8周 周三1-2、周五7-8
                        </td>
                        <td>
                          八教-09
                        </td>
                        <td>
                          1
                        </td>
						<td>
                          64
                        </td>
						<td>
                          10
                        </td>
						<td>
                          54
                        </td>
                      </tr>
                    </tbody>
                  </table>
                   </br>
				   </br>
				   <!-- 怎么实现分页  课程较少，删掉分页-->
				   <nav aria-label="breadcrumb">
                      <ul class="breadcrumb">
					     <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">首页</button></a></li>
                         <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">上一页</button></a></li>
                         <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">下一页</button></a></li>
				         <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">末页</button></a></li>
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