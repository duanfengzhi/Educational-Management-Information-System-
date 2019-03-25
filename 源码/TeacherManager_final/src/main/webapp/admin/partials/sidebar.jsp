<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <a href="#" class="nav-link">
        <div class="nav-profile-image">
          <img src="<%=basePath%>images/faces/face4.jpg" alt="profile">
          <span class="login-status online"></span> <!--change to offline or busy as needed-->
        </div>
        <div class="nav-profile-text d-flex flex-column">
          <span class="font-weight-bold mb-2">${sessionScope.manager.adname }</span>
          <span class="text-secondary text-small">System Manager</span>
        </div>
        <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=basePath%>admin/partials/index.jsp">
        <span class="menu-title">首页</span>
        <i class="mdi mdi-home menu-icon"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#education" aria-expanded="false" aria-controls="education">
        <span class="menu-title">教务信息管理</span>
        <i class="menu-arrow"></i>
        <i class="mdi mdi-settings menu-icon"></i>
      </a>
      <div class="collapse" id="education">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/ListActiveTeaInfoCtrl">审核教师信息</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/ListTeacherInfoCtrl">管理校内教师信息</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/ListExTeacherInfoCtrl">管理外聘教师信息</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/educationalAdm/addnew.jsp">新增账号录入</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/educationalAdm/studentMng.jsp">录入学生信息</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/educationalAdm/lessonIn.jsp">录入课程信息</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/educationalAdm/examIn.jsp">录入考试信息</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="<%=basePath%>admin/allFeedBackCtrl">
        <span class="menu-title">反馈审核</span>
        <i class="mdi mdi-comment-multiple-outline menu-icon"></i>
      </a>
    </li>


    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#lesson" aria-expanded="false" aria-controls="lesson">
        <span class="menu-title">学院课程管理</span>
        <i class="menu-arrow"></i>
        <i class="mdi mdi-table-large menu-icon"></i>
      </a>
      <div class="collapse" id="lesson">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/courseMng/classSchedule.jsp">学院排课</a></li>
          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>admin/courseMng/experimentSchedule.jsp">实验排课</a></li>
        </ul>
      </div>
    </li>


   <%--  <li class="nav-item">
      <a class="nav-link" href="<%=basePath%>admin/notification/send.jsp">
        <span class="menu-title">发布通知</span>
        <i class="mdi mdi-email-outline menu-icon"></i>
      </a>
    </li> --%>
    
    <li class="nav-item">
      <a class="nav-link" href="<%=basePath%>admin/assess/get.jsp">
        <span class="menu-title">获取考核信息</span>
        <i class="mdi mdi-email-outline menu-icon"></i>
      </a>
    </li>


  </ul>
</nav>