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
			<i class="mdi mdi-border-color"></i>                 
			</span>
			查看考试安排
		</h3>
	</div>
		        
		        
		        <button class="btn btn-outline-primary" onclick="changeImg15()" >2015</button>
		        <button class="btn btn-outline-primary" onclick="changeImg16()" >2016</button>
		        <button class="btn btn-outline-primary" onclick="changeImg17()" >2017</button>
		        <button class="btn btn-outline-primary" onclick="changeImg18()" >2018</button>
		        
		          <div class="row">
		            <div style="margin-top:3%">
		              <img id="examSchedule" src="<%=basePath%>images/2016exam.jpg" style="height: 676px">
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





<script type="text/javascript">
	function changeImg15() {
	    var obj = document.getElementById("examSchedule");   
	    obj.setAttribute("src", "<%=basePath%>images/2015exam.jpg" );
	}
	function changeImg16() {
	    var obj = document.getElementById("examSchedule");   
	    obj.setAttribute("src", "<%=basePath%>images/2016exam.jpg" );
	}
	function changeImg17() {
	    var obj = document.getElementById("examSchedule");   
	    obj.setAttribute("src", "<%=basePath%>images/2017exam.jpg" );
	}
	function changeImg18() {
	    var obj = document.getElementById("examSchedule");   
	    obj.setAttribute("src", "<%=basePath%>images/2018exam.jpg" );
	}
</script>