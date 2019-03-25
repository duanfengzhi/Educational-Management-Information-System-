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
			修改外聘教师信息
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
                  <h4 class="card-title">${updateExteacherInfo.exTeaName}</h4>
                  
                  <form class="form-sample" action="./admin/UpdateExTeaInfoCtrl?tid=${updateExteacherInfo.exTeaNo}" method="POST" >
                    <!-- <p class="card-description">
                      Personal info
                    </p> -->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">姓名</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="exTeaName" value="${updateExteacherInfo.exTeaName}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">联系电话</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="exTeaTel" value="${updateExteacherInfo.exTeaTel}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">邮箱</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="exTeaEmail" value="${updateExteacherInfo.exTeaEmail}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">类型</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="workKind" value="${updateExteacherInfo.workKind}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">工作单位</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="workUnit" value="${updateExteacherInfo.workUnit}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">教授课程</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="exTeaCourse" value="${updateExteacherInfo.exTeaCourse}" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">职位</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="exTitle" value="${updateExteacherInfo.exTitle}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">学位</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="exTdegree" value="${updateExteacherInfo.exTdegree}"  />
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">毕业院校</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="exTgraduate" value="${updateExteacherInfo.exTgraduate}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">从业年限</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="jobYear" value="${updateExteacherInfo.jobYear}"  />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">技术专长</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="major" value="${updateExteacherInfo.major}"/>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">承担项目</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="text"  name="exProject" value="${updateExteacherInfo.exProject}" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">证书</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="lisence" value="${updateExteacherInfo.lisence}" />
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
	
	
	
	
    			
    			
    			
  <%--   			
    			
    			
		
  			 <form action="./admin/UpdateExTeaInfoCtrl?tid=${updateExteacherInfo.exTeaNo}" method="POST">
    <div style="margin:10 auto;text-align:center"><h2>修改外聘教师信息</h2></div>
    <table boder="1">
    <tr>
    <td>姓名:</td><td><input type="text"  name="exTeaName" value="${updateExteacherInfo.exTeaName}" size="20" /></td>
    </tr>
     <tr>
    <td>工号:</td><td>${updateExteacherInfo.exTeaNo}</td>
    </tr>
    <tr>
      <td>联系电话:</td><td><input type="text"  name="exTeaTel" value="${updateExteacherInfo.exTeaTel}" size="20" /> </td>
    </tr>
    <tr>
    <td>邮箱:</td> <td><input type="text"  name="exTeaEmail" value="${updateExteacherInfo.exTeaEmail}" size="20" /> </td>
    </tr>
    <tr>
    <td>类型:</td> <td><input type="text"  name="workKind" value="${updateExteacherInfo.workKind}" size="20" /> </td>
    </tr>
    <tr>
    <td>工作单位:</td><td><input type="text"  name="workUnit" value="${updateExteacherInfo.workUnit}" size="20" /> </td>
    </tr>
    <tr>
    <td>教授课程:</td><td><input type="text"  name="exTeaCourse" value="${updateExteacherInfo.exTeaCourse}" size="20" /></td>
    </tr>
    <tr>
    <td>职位:</td><td><input type="text"  name="exTitle" value="${updateExteacherInfo.exTitle}" size="20" /></td>
    </tr>
    <tr>
    <td>学位:</td><td><input type="text"  name="exTdegree" value="${updateExteacherInfo.exTdegree}" size="20" /></td>
    </tr>
    <tr>
     <td>毕业学校:</td><td><input type="text"  name="exTgraduate" value="${updateExteacherInfo.exTgraduate}" size="20" /></td>
    </tr>
      <tr>
     <td>从业年限:</td><td><input type="text"  name="jobYear" value="${updateExteacherInfo.jobYear}" size="20" /></td>
    </tr>
     <tr>
     <td>技术专长:</td><td><input type="text"  name="major" value="${updateExteacherInfo.major}" size="20" /></td>
    </tr>
    <tr>
     <td>承担过多项目:</td><td><input type="text"  name="exProject" value="${updateExteacherInfo.exProject}" size="20" /></td>
    </tr>
 	 <tr>
     <td>证书:</td><td><input type="text"  name="lisence" value="${updateExteacherInfo.lisence}" size="20" /></td>
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