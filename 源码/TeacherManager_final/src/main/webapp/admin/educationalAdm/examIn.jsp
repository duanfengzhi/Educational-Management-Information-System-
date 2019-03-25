<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>导入考试信息</title>
    
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
			查看、导入考试信息
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
		
		            <!-- <div class="form-group" style="float: left ; margin-left: 410px ; margin-top: 30px">
		              <div class="input-group" style="">
		                <input type="file" class="form-control" placeholder="选择要导入的信息" aria-label="upload" aria-describedby="basic-addon2">
		                <div class="input-group-append">
		                  <button class="btn btn-sm btn-outline-primary" type="button">导入</button>
		                </div>
		              </div>
		            </div> -->
		          </div>
		          
		          
    			<div class="col-6 grid-margin stretch-card" style="margin-top:10% ; margin-left:20%">
	              <div class="card">
	                <div class="card-body">
	                  <h4 class="card-title">导入考试信息</h4>
	                  <p class="card-description">
	                    	请选择文件
	                  </p>
	                  <form class="forms-sample" action="<%=basePath %>uploadExamImg" method="post" enctype="multipart/form-data" onsubmit="return check();">
	                    <div class="form-group">
	                      <label>文件名</label>
	                      <input type="file" id="excel_file" name="photo" class="file-upload-default" accept="xlsx" size="80">
	                      <div class="input-group col-xs-12">
	                        <input type="text" class="form-control file-upload-info" name="filename">
	                        <span class="input-group-append">
	                          <button class="file-upload-browse btn btn-outline-primary" type="button">选择文件</button>
	                        </span>
	                      </div>
	                    </div>
	                    <button type="submit" id="excel_button" class="btn btn-gradient-primary mr-2">导入信息</button>
	                    <font id="importMsg" color="red">${msg }</font><input type="hidden" />
	                  </form>
	                </div>
	              </div>
            	</div>
		          
		          
		          
		          
		          
		          
		        </div> 
    			
    			
  			    
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