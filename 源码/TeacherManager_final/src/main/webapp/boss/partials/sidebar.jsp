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
                <a href="<%=basePath%>leader/feedback/list.jsp" class="nav-link">
                  <div class="nav-profile-image">
                    <img src="<%=basePath%>images/faces/face4.jpg" alt="profile">
                    <span class="login-status online"></span> <!--change to offline or busy as needed-->              
                  </div>
                  <div class="nav-profile-text d-flex flex-column">
                    <span class="font-weight-bold mb-2">${sessionScope.boss.bossname }</span><!-- 这里注意后台对session的名字设置 -->
                    <span class="text-secondary text-small">合肥工业大学软件学院</span>
                  </div>
                  <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                </a>
              </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>boss/allFeedBackCtrl">
                  <span class="menu-title">查看反馈</span>
                  <i class="mdi mdi-account-box menu-icon"></i>
                </a>
              </li>
			</ul>
		 </nav>
