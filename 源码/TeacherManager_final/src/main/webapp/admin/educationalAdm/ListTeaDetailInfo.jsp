<%@ page import="java.util.*,com.hfut.domain.Teacher" pageEncoding="UTF-8"%>
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
	<div class="page-header">
		<h4 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white mr-2">
			<i class="mdi mdi-account-outline"></i>                 
			</span>
			${teacherInfo.teaName}详细信息
		</h4>
	    <!-- <nav aria-label="breadcrumb">
	      <ul class="breadcrumb">
	        <li class="breadcrumb-item active" aria-current="page">
	          <span></span>发送反馈
              <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
          </ul>
        </nav> -->
	</div>
	
	
	
    			
    			
    			
    			
    			
    			
    			
<%--   <table border="1">
		<tr>
  	 		<th>姓名</th>
  	 		<th>工号</th>
  	 		<th>联系电话</th>
  	 		<th>邮箱</th>
  	 		<th>类型</th>
  	 		<th>学院</th>
  	 		<th>教授课程</th>
  	 		<th>职位</th>
  	 		<th>学历</th>
  	 		<th>年龄</th>
  	 		<th>性别</th>
  	 		<th>毕业学校</th>
  	 		<th>海外留学经历</th>
  	 		<th>工程背景</th>
  	 		<th>主持项目</th>
  	 		<th>发表科研论文</th>
  	 		<th>专利</th>
  	 		<th>软著</th>
  	 		<th>专著</th>
  	 		<th>教研论文</th>
  	 		<th>科研教学获奖</th>
  	 		<th>师德师风表彰</th>
  	 		<th>与软件学院本科生合作成果</th>
  	 		
  	 	</tr>
	  
        <tr>
             <td>${teacherInfo.teaName}</td>
             <td>${teacherInfo.teaNo}</td>
             <td>${teacherInfo.teaTel}</td>
             <td>${teacherInfo.teaEmail}</td>
             <td>${teacherInfo.teaKind}</td>
             <td>${teacherInfo.teaBelong}</td>
              <td>${teacherInfo.teaCourse}</td>
             <td>${teacherInfo.teaTitle}</td>
             <td>${teacherInfo.teadegree}</td>
             <td>${teacherInfo.teaAge}</td>
             <td>${teacherInfo.teaSex }</td>
             <td>${teacherInfo.teagraduate }</td>
             <td>${teacherInfo.overSeaExp }</td>
             <td>${teacherInfo.engBack }</td>
             <td>${teacherInfo.project }</td>
            <td>${teacherInfo.paper }</td>
			<td>${teacherInfo.patent}</td>
			<td>${teacherInfo.theSoft}</td>
			<td>${teacherInfo.mono}</td>
			<td>${teacherInfo.teaPaper}</td>
			<td>${teacherInfo.teahonor}</td>
		  <td>${teacherInfo.teaMorality}</td>
 			<td>${teacherInfo.coorResult}</td>
		</tr>
  	</table> --%>
 
 
 
<div class="col-md-6 grid-margin stretch-card">
 <div class="card">
   <div class="card-body">
     <h4 class="card-title">${teacherInfo.teaName}</h4>
     <p class="card-description">
      ${teacherInfo.teaSex } &nbsp; ${teacherInfo.teaBelong} &nbsp; ${teacherInfo.teaTitle} &nbsp; ${teacherInfo.teaNo}
     </p>
     <p class="card-description">
       电话 <code>&lt;${teacherInfo.teaTel}&gt;</code> 邮箱 <code>&lt;${teacherInfo.teaEmail}&gt;</code>
     </p>
     <div class="row">
       <div class="col-md-5">
         <address>
           <p class="font-weight-bold"><code>教授课程</code></p>
           <p>
             ${teacherInfo.teaCourse}
           </p>
         </address>
         <address>
           <p class="font-weight-bold" style="margin-top:50%"><code>个人信息</code></p>
           <p>
             年龄：${teacherInfo.teaAge}
           </p>
           <p>
             毕业院校：${teacherInfo.teagraduate}
           </p>
           <p>
             学历：${teacherInfo.teadegree}
           </p>
         </address>
       </div>
       <div class="col-md-7">
                  <address>
           <p class="font-weight-bold"><code>学术成果</code></p>
           <p>
            工程背景：${teacherInfo.engBack}
           </p>
           <p>
             海外经历：${teacherInfo.overSeaExp}
           </p>
           <p>
             主持项目：${teacherInfo.project}
           </p>
           <p>
             发表论文：${teacherInfo.paper}
           </p>
           <p>
             专利：${teacherInfo.patent}
           </p><p>
             软著：${teacherInfo.theSoft}
           </p>
           <p>
             专著：${teacherInfo.mono}
           </p>
           <p>
             科研论文：${teacherInfo.teaPaper}
           </p>
           <p>
             科研教学获奖：${teacherInfo.teahonor}
           </p>
           <p>
             师德师风表彰：${teacherInfo.teaMorality}
           </p>
           <p>
             与本学院科研成果：${teacherInfo.coorResult}
           </p>
         </address>
       </div>
     </div>
     
      <div  style="margin-left:50% ; margin-top:16px">
      <table>
	   	  <tr>
	   		<td><a href='admin/UpdateTeaInfoCtrl?tid=${teacherInfo.teaNo}' style="width:100px" class="btn btn-outline-danger btn-sm">更改</a></td>
	   		<td><a href='admin/DeleteTeaInfoCtrl?tid=${teacherInfo.teaNo}' class="btn btn-outline-danger btn-sm">删除</a></td>
	   		<td><input type="button" value="返回" onclick="history.back()"/ class="btn btn-outline-primary btn-sm"></td>
	   	  </tr>
   	  </table>
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