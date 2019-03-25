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
		<h3 class="page-title">
			<span class="page-title-icon bg-gradient-primary text-white mr-2">
			<i class="mdi mdi-border-color"></i>                 
			</span>
			修改校内教师信息
		</h3>
	    <!-- <nav aria-label="breadcrumb">
	      <ul class="breadcrumb">
	        <li class="breadcrumb-item active" aria-current="page">
	          <span></span>发送反馈
              <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
          </ul>
        </nav> -->
	</div>
	
	
	
	
	


            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">${updateteacherInfo.teaName}</h4>
                  
                  <form class="form-sample" action="./admin/UpdateTeaInfoCtrl?tid=${updateteacherInfo.teaNo}" method="POST" >
                    <!-- <p class="card-description">
                      Personal info
                    </p> -->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">姓名</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaName" value="${updateteacherInfo.teaName}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">年龄</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaAge" value="${updateteacherInfo.teaAge}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">性别</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaSex" value="${updateteacherInfo.teaSex}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">联系电话</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaTel" value="${updateteacherInfo.teaTel}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">邮箱</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaEmail" value="${updateteacherInfo.teaEmail}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">类型</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaKind" value="${updateteacherInfo.teaKind}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">所属学院</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="teaBelong" value="${updateteacherInfo.teaBelong}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">职称</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="teaTitle" value="${updateteacherInfo.teaTitle}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">学历</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teadegree" value="${updateteacherInfo.teadegree}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">毕业学校</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teagraduate" value="${updateteacherInfo.teagraduate}" />
                          </div>
                        </div>
                      </div>
                      
                    </div>
                    <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">教授课程</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="teaCourse" value="${updateteacherInfo.teaCourse}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">海外经历</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="overSeaExp" value="${updateteacherInfo.overSeaExp}" />
                          </div>
                        </div>
                      </div>
                      
                    </div>
                    <button type="submit" class="btn btn-outline-danger mr-2">修改</button>
                    <button type="button" class="btn btn-outline-primary" onclick="history.back()">返回</button>
                  </form>
                </div>
              </div>
            </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<%-- <form action="./admin/UpdateTeaInfoCtrl?tid=${updateteacherInfo.teaNo}" method="POST">
    <table boder="1">
    <tr>
    <td>姓名:</td><td><input type="text"  name="teaName" value="${updateteacherInfo.teaName}" size="20" /></td>
    </tr>
     <tr>
    <td>工号:</td><td>${updateteacherInfo.teaNo}</td>
    </tr>
     <tr>
     <td>性别:</td><td><input type="text"  name="teaSex" value="${updateteacherInfo.teaSex}" size="20" /></td>
    </tr>
    <tr>
     <td>年龄:</td><td><input type="text"  name="teaAge" value="${updateteacherInfo.teaAge}" size="20" /></td>
    </tr>
    <tr>
       <td>联系电话:</td><td><input type="text"  name="teaTel" value="${updateteacherInfo.teaTel}" size="20" /> </td>
    </tr>
    <tr>
    <td>邮箱:</td> <td><input type="text"  name="teaEmail" value="${updateteacherInfo.teaEmail}" size="20" /> </td>
    </tr>
    <tr>
    <td>类型:</td> <td><input type="text"  name="teaKind" value="${updateteacherInfo.teaKind}" size="20" /> </td>
    </tr>
    <tr>
    <td>所属学院:</td><td><input type="text"  name="teaBelong" value="${updateteacherInfo.teaBelong}" size="20" /> </td>
    </tr>
    <tr>
    <td>教授课程:</td><td><input type="text"  name="teaCourse" value="${updateteacherInfo.teaCourse}" size="20" /></td>
    </tr>
    <tr>
    <td>职称:</td><td><input type="text"  name="teaTitle" value="${updateteacherInfo.teaTitle}" size="20" /></td>
    </tr>
    <tr>
    <td>学历:</td><td><input type="text"  name="teadegree" value="${updateteacherInfo.teadegree}" size="20" /></td>
    </tr>
    <tr>
     <td>毕业学校:</td><td><input type="text"  name="teagraduate" value="${updateteacherInfo.teagraduate}" size="20" /></td>
    </tr>
      <tr>
     <td>海外经历:</td><td><input type="text"  name="overSeaExp" value="${updateteacherInfo.overSeaExp}" size="20" /></td>
    </tr>
    </table>
    <p><input type=submit value='修改'  /></p>
</form>
	
	
	 --%>
	
	
	




</div>







  			    <!-- 插入footer之前的代码 -->
    			<jsp:include page="../partials/footer.jsp" flush="true"/>
    		</div>
    	</div>
    </div>
  </body>
</html>