<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课程管理系统</title>
    
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
    <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />

  </head>
  
  <body>
	  <div class="container-scroller">
	    <div class="container-fluid page-body-wrapper full-page-wrapper">
	      <div class="content-wrapper d-flex align-items-center auth">
	        <div class="row w-100">
	          <div class="col-lg-5 mx-auto">
	            <div class="auth-form-light text-left p-5">
	
	              <h2>课程管理系统</h2>
	              <h6 class="font-weight-light">登录</h6>
	              
	              
	              <!-- 登录信息表单 -->
	              <form class="pt-3" action='<%=basePath%>admin/LoginCtrl' method="post" id="login" >
	                <div class="form-group">
	                  <input type="text" class="form-control form-control-lg" name="username" autofocus placeholder="用户id" required>
	                  <a><font color="red"><i>${errMap['username']}</i></font></a>
	                </div>
	                <div class="form-group">
	                  <input type="password" class="form-control form-control-lg" name="password" placeholder="密码" required>
	                  <a><font color="red"><i>${errMap['password']}</i></font></a>
	                </div>
	                	  <div class="row">
	                		<div class="col-md-6">
                              <div class="form-group">
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="radio" name="role" class="form-check-input" checked value="<%=basePath%>admin/LoginCtrl" onclick="check();">
                                    管理员
                                  </label>
                                </div>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="radio" name="role" class="form-check-input" value="<%=basePath%>teacher/LoginCtrl" onclick="check();">
                                    教师
                                  </label>
                                </div>
                              </div>
                            </div>
                            
                            <div class="col-md-6">
                              <div class="form-group">
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="radio" name="role" class="form-check-input" value="<%=basePath%>boss/LoginCtrl" onclick="check();">
                                    领导
                                  </label>
                                </div>
                                <div class="form-check">
                                  <label class="form-check-label">
                                    <input type="radio" name="role" class="form-check-input" value="<%=basePath%>student/LoginCtrl" onclick="check();">
                                    学生
                                  </label>
                                </div>
                              </div>
							</div>
						  </div>
						  
						  
					<div>
						<img id="d" src="authImg.jpg" alt="auth"/><br>
						<input type="text" name="auth" autofocus placeholder="验证码"/>
						<td><a href="javascript:change();">看不清,换一张 </a> <br/><br/></td>
						<font color="red"><i>${errMap['verification']}</i></font>
					</div>
								
	                <div class="mt-3">
	                  <input type="submit" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" id="login" value='登录'></a>
	                </div>
	                <div class="my-2 d-flex justify-content-between align-items-center">
	                </div>
	              </form>
	              
	             
	              
	              
	            </div>
	          </div>
	        </div>
	      </div>
	      <!-- content-wrapper ends -->
	    </div>
	    <!-- page-body-wrapper ends -->
	  </div>
	  
	  
	  
	  <!-- container-scroller -->
	  <!-- plugins:js -->
	  <script src="vendors/js/vendor.bundle.base.js"></script>
	  <script src="vendors/js/vendor.bundle.addons.js"></script>
	  <!-- endinject -->
	  <!-- inject:js -->
	  <script src="js/off-canvas.js"></script>
	  <script src="js/misc.js"></script>
	  <!-- endinject -->
	  
  </body>
</html>


<script type="text/javascript">
	function check(){
	var form = document.getElementById('login');
	var radios = document.getElementsByName('role');
	var len = radios.length;
	/* alert(len) */
	for(var i=0;i<len;i++){
		if(radios[i].checked == true){
			/* alert(radios[i].value) */
			form.action = radios[i].value;
		}
		}
	}
	function change()  {  
	var img =document.getElementById("d");  
	img.src="authImg.jpg"+"?"+Math.random();  
} 
</script>
