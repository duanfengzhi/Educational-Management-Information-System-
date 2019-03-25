<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
				          <div class="row">
				
				            <div class="col-lg-12 grid-margin stretch-card">
				              <div class="card">
				                <div class="card-body">
				                  <h4 class="card-title">待审核教师</h4>
				
				                  <table class="table table-hover">
				                    <thead align="center">
				                    <tr>
				                      <th>姓名</th>
				                      <th>类别</th>
				                      <th>修改时间</th>
				                      <th></th>
				                    </tr>
				                    </thead>
				                    <tbody>
				                    <tr>
				                      <td align="center">Jacob</td>
				                      <td align="center">院内教师</td>
				                      <td align="center" class="text-danger"> 11.6 </td>
				                      <td align="center"><button type="button" class="btn btn-outline-danger btn-sm">审核</button></td>
				                    </tr>
				                    <tr>
				                      <td align="center">Messsy</td>
				                      <td align="center">外聘教师</td>
				                      <td align="center" class="text-danger"> 11.7 </td>
				                      <td align="center"><button type="button" class="btn btn-outline-danger btn-sm">审核</button></td>
				                    </tr>
				                    </tbody>
				                  </table>
				                </div>
				              </div>
				            </div>
				
				
				
				
				              <div>
				
				
				                  <div class="input-group" style="float: left">
				                      <div class="input-group" style="margin-left: 230%">
				                          <form action="" method="POST">
				                          	<input type="text" class="form-control" placeholder="输入要查询的信息" aria-label="search" aria-describedby="basic-addon2">
				                            <span class="input-group-btn">
				                            	<button class="btn btn-sm btn-outline-primary" type="button">查询</button>
				                            </span>
				                          </form>
				                      </div>
				                  </div>
				
				
				                  <div class="form-group" style="float: left">
				                      <div class="input-group" style="margin-left: 250%">
				                          <form action="" method="POST">
				                          	<input type="text" class="form-control" placeholder="输入要导入的信息" aria-label="search" aria-describedby="basic-addon2">
				                            <span class="input-group-btn">
				                            	<button class="btn btn-sm btn-outline-primary" type="button">导入</button>
				                            </span>
				                          </form>
				                      </div>
				                  </div>
				
				
				
				              </div>
				
				
				              <div class="col-lg-12 grid-margin stretch-card">
				                  <div class="card">
				                      <div class="card-body">
				                          <h4 class="card-title">院内教师</h4>
				
				                          <table class="table table-bordered">
				                              <thead align="center">
				                              <tr>
				                                  <th>
				                                      工号
				                                  </th>
				                                  <th>
				                                      姓名
				                                  </th>
				                                  <th>
				                                      职称
				                                  </th>
				                                  <th>
				                                      教授课程
				                                  </th>
				                                  <th>
				                                  </th>
				
				                              </tr>
				                              </thead>
				                              <tbody>
				                              <tr>
				                                  <td align="center">
				                                      100001
				                                  </td>
				                                  <td align="center">
				                                      李青
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      程序设计艺术
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      100002
				                                  </td>
				                                  <td align="center">
				                                      贾克思
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      软件工程导论
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      100003
				                                  </td>
				                                  <td align="center">
				                                      蔡杰
				                                  </td>
				                                  <td align="center">
				                                      副教授
				                                  </td>
				                                  <td align="center">
				                                      计算机图形学
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" onclick="'./showCtrl?tid='" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              </tbody>
				                          </table>
				                      </div>
				                  </div>
				              </div>
				
				
				              <div class="col-lg-12 grid-margin stretch-card">
				                  <div class="card">
				                      <div class="card-body">
				                          <h4 class="card-title">外院教师</h4>
				
				                          <table class="table table-bordered">
				                              <thead align="center">
				                              <tr>
				                                  <th>
				                                      工号
				                                  </th>
				                                  <th>
				                                      姓名
				                                  </th>
				                                  <th>
				                                      职称
				                                  </th>
				                                  <th>
				                                      所在学院
				                                  </th>
				                                  <th>
				                                      教授课程
				                                  </th>
				                                  <th>
				                                  </th>
				
				                              </tr>
				                              </thead>
				                              <tbody>
				                              <tr>
				                                  <td align="center">
				                                      110001
				                                  </td>
				                                  <td align="center">
				                                      李白
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      计算机学院
				                                  </td>
				                                  <td align="center">
				                                      人工智能
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      110002
				                                  </td>
				                                  <td align="center">
				                                      甄克思
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      建筑与艺术学院
				                                  </td>
				                                  <td align="center">
				                                      用户界面设计
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      110003
				                                  </td>
				                                  <td align="center">
				                                      蔡羽
				                                  </td>
				                                  <td align="center">
				                                      副教授
				                                  </td>
				                                  <td align="center">
				                                      数学学院
				                                  </td>
				                                  <td align="center">
				                                      概率论与数理统计
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				
				                              </tbody>
				                          </table>
				                      </div>
				                  </div>
				              </div>
				
				
				              <div class="col-lg-12 grid-margin stretch-card">
				                  <div class="card">
				                      <div class="card-body">
				                          <h4 class="card-title">外聘教师</h4>
				
				                          <table class="table table-bordered">
				                              <thead align="center">
				                              <tr>
				                                  <th>
				                                      编号
				                                  </th>
				                                  <th>
				                                      姓名
				                                  </th>
				                                  <th>
				                                      职称
				                                  </th>
				                                  <th>
				                                      所在单位
				                                  </th>
				                                  <th>
				                                      教授课程
				                                  </th>
				                                  <th>
				                                  </th>
				
				                              </tr>
				                              </thead>
				                              <tbody>
				                              <tr>
				                                  <td align="center">
				                                      120001
				                                  </td>
				                                  <td align="center">
				                                      李黄
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      金山软件
				                                  </td>
				                                  <td align="center">
				                                      AI
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      120002
				                                  </td>
				                                  <td align="center">
				                                      梅克思
				                                  </td>
				                                  <td align="center">
				                                      教授
				                                  </td>
				                                  <td align="center">
				                                      中国科学技术大学
				                                  </td>
				                                  <td align="center">
				                                      J2EE
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				                              <tr>
				                                  <td align="center">
				                                      120003
				                                  </td>
				                                  <td align="center">
				                                      蔡菜
				                                  </td>
				                                  <td align="center">
				                                      副教授
				                                  </td>
				                                  <td align="center">
				                                      南京Jaben
				                                  </td>
				                                  <td align="center">
				                                      Java实训
				                                  </td>
				                                  <td align="center">
				                                      <button type="button" class="btn btn-outline-primary btn-sm">查看信息</button>
				                                  </td>
				                              </tr>
				
				                              </tbody>
				                          </table>
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