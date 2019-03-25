<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		
		          <div class="row">
		
		
		            <div class="col-8 grid-margin stretch-card">
		              <div class="card">
		                <div class="card-body">
		                  <h4 class="card-title">发送通知</h4>
		                  <p class="card-description">
		                    Notification
		                  </p>
		                  <form class="forms-sample">
		                    <div class="form-group">
		                      <label for="exampleInputName1">接收者</label>
		                        <select class="form-control form-control-sm" id="exampleFormControlSelect3" style="width: 80px">
		                            <option>自选</option>
		                            <option>全体学生</option>
		                            <option>全体教师</option>
		                            <option>全体领导</option>
		                        </select>
		                      <input type="text" class="form-control" id="exampleInputName1" placeholder="若自选请填写该栏，若选择多人请以逗号隔开">
		                    </div>
		                    <div class="form-group">
		                      <label for="exampleInputEmail3">通知标题</label>
		                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="标题">
		                    </div>
		
		
		                    <div class="form-group">
		                      <label>添加附件</label>
		                      <input type="file" name="img[]" class="file-upload-default">
		                      <div class="input-group col-xs-12">
		                        <input type="text" class="form-control file-upload-info" disabled placeholder="若有附件请添加">
		                        <span class="input-group-append">
		                          <button class="file-upload-browse btn btn-gradient-primary" type="button">选择附件</button>
		                        </span>
		                      </div>
		                    </div>
		
		                    <div class="form-group">
		                      <label for="exampleTextarea1">通知内容</label>
		                      <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
		                    </div>
		                    <button type="submit" class="btn btn-gradient-primary mr-2">发布</button>
		                    <button class="btn btn-light">返回</button>
		                  </form>
		                </div>
		              </div>
		            </div>
		
		
		              <div class="col-lg-12 grid-margin stretch-card">
		                  <div class="card">
		                      <div class="card-body">
		                          <h4 class="card-title">已发布通知</h4>
		
		                          <table class="table table-bordered">
		                              <thead align="center">
		                              <tr>
		                                  <th>
		                                      标题
		                                  </th>
		                                  <th>
		                                      接收者
		                                  </th>
		                                  <th>
		                                      发布时间
		                                  </th>
		
		                                  <th>
		                                  </th>
		
		                              </tr>
		                              </thead>
		                              <tbody>
		                              <tr>
		                                  <td align="center">
		                                      大家要打扫宿舍卫生
		                                  </td>
		                                  <td align="center">
		                                      全体学生
		                                  </td>
		                                  <td align="center">
		                                      11.4
		                                  </td>
		
		                                  <td align="center">
		                                      <button type="button" class="btn btn-outline-primary btn-sm">查看详细</button>
		                                  </td>
		                              </tr>
		                              <tr>
		                                  <td align="center">
		                                      11.1教学会议
		                                  </td>
		                                  <td align="center">
		                                      全体教师
		                                  </td>
		                                  <td align="center">
		                                      10.20
		                                  </td>
		
		                                  <td align="center">
		                                      <button type="button" class="btn btn-outline-primary btn-sm">查看详细</button>
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