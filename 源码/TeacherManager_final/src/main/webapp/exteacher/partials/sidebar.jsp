<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

         <nav class="sidebar sidebar-offcanvas" id="sidebar">
		    <ul class="nav">
			  <li class="nav-item nav-profile">
                <a href="<%=basePath%>teachers1.1/self_information.html" class="nav-link">
                  <div class="nav-profile-image">
                    <img src="<%=basePath%>images/faces/face4.jpg" alt="profile">
                    <span class="login-status online"></span> <!--change to offline or busy as needed-->              
                  </div>
                  <div class="nav-profile-text d-flex flex-column">
                    <span class="font-weight-bold mb-2">${sessionScope.exteacher.exTeaName }</span>
                    <span class="text-secondary text-small">${sessionScope.exteacher.workUnit }</span>
                  </div>
                  <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                </a>
                
              </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>exteacher/personalInfo/show.jsp">
                  <span class="menu-title">个人信息</span>
                  <i class="mdi mdi-account-box menu-icon"></i>
                </a>
              </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>exteacher/allFeedBackCtrl">
                  <span class="menu-title">查看学生反馈</span>
                  <i class="mdi mdi-cards menu-icon"></i>
                </a>
              </li>
			  <li class="nav-item">
			      <a class="nav-link" data-toggle="collapse" href="#lesson" aria-expanded="false" aria-controls="lesson">
			        <span class="menu-title">课程信息</span>
			        <i class="menu-arrow"></i>
			        <i class="mdi mdi-table-large menu-icon"></i>
			      </a>
			      <div class="collapse" id="lesson">
			        <ul class="nav flex-column sub-menu">
			          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>exteacher/ExTeaClassTableCtrl">个人课表</a></li>
			          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>exteacher/ExTeaCourseInfoCtrl">个人课程信息</a></li>
			          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>exteacher/course/collegeSchedule.jsp">学院排课</a></li>
			          <li class="nav-item"> <a class="nav-link" href="<%=basePath%>exteacher/course/experimentSchedule.jsp">实验排课</a></li>
			        </ul>
			      </div>
			  </li>
			   <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>exteacher/exam/info.jsp">
                  <span class="menu-title">查看考试信息</span>
                  <i class="mdi mdi-bulletin-board menu-icon"></i>
                </a>
			  </li>
			  <%-- <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>exteacher/personalInfo/finalcheck.jsp">
                  <span class="menu-title">参与教评</span>
                  <i class="mdi mdi-bulletin-board menu-icon"></i>
                </a>
			  </li> --%>
			</ul>
		 </nav>
