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
                    <img src="<%=basePath%>images/faces/1.jpg" alt="profile">
                    <span class="login-status online"></span>             
                  </div>
                  <div class="nav-profile-text d-flex flex-column">
                    <span class="font-weight-bold mb-2">${sessionScope.student.stuname }</span>
                    <span class="text-secondary text-small">${sessionScope.student.stuno }</span>
                  </div>
                  <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                </a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>student/sentListCtrl">
                  <span class="menu-title">我的反馈</span>
                  <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>student/feedback/write.jsp">
                  <span class="menu-title">编写反馈</span>
                  <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                </a>
              </li>
			  <%-- <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>student/reply/list.jsp">
                  <span class="menu-title">查看回复</span>
                  <i class="mdi mdi-cards menu-icon"></i>
                </a>
              </li> --%>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>student/course/experimentSchedule.jsp">
                  <span class="menu-title">查看实验安排</span>
                  <i class="mdi mdi-border-color menu-icon"></i>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>student/course/exam.jsp">
                  <span class="menu-title">查看考试安排</span>
                  <i class="mdi mdi-border-color menu-icon"></i>
                </a>
              </li>
			  
			</ul>
		 </nav>
