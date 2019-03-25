<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                    <span class="font-weight-bold mb-2">${sessionScope.teacher.teaName }</span>
                    <span class="text-secondary text-small">${sessionScope.teacher.teaBelong }</span>
                  </div>
                  <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                </a>
              </li>
              
                <c:if test="${sessionScope.teacher.isActive == 'y' }">
				  <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/personalInfo/show.jsp">
	                  <span class="menu-title">个人信息</span>
	                  <i class="mdi mdi-account-box menu-icon"></i>
	                </a>
	              </li>
				  <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/allFeedBackCtrl">
	                  <span class="menu-title">查看学生反馈</span>
	                  <i class="mdi mdi-cards menu-icon"></i>
	                </a>
	              </li>
	              <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/course/collegeSchedule.jsp">
	                  <span class="menu-title">学院排课</span>
	                  <i class="mdi mdi-cards menu-icon"></i>
	                </a>
	              </li>
				   <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/exam/info.jsp">
	                  <span class="menu-title">查看考试安排</span>
	                  <i class="mdi mdi-bulletin-board menu-icon"></i>
	                </a>
				  </li>
				  <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/course/experimentSchedule.jsp">
	                  <span class="menu-title">查看实验安排</span>
	                  <i class="mdi mdi-bulletin-board menu-icon"></i>
	                </a>
				  </li>
				  <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/personalInfo/finalcheck.jsp">
	                  <span class="menu-title">参与教评</span>
	                  <i class="mdi mdi-bulletin-board menu-icon"></i>
	                </a>
				  </li>
				</c:if>
				
				
				<c:if test="${sessionScope.teacher.isActive == 'n'}">
				   <li class="nav-item">
	                <a class="nav-link" href="<%=basePath%>teacher/personalInfo/change.jsp">
	                  <span class="menu-title">完善个人信息</span>
	                  <i class="mdi mdi-bulletin-board menu-icon"></i>
	                </a>
				  </li>
				</c:if>
              

			</ul>
		 </nav>
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		<%-- 	  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/personalInfo/show.jsp">
                  <span class="menu-title">个人信息</span>
                  <i class="mdi mdi-account-box menu-icon"></i>
                </a>
              </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/allFeedBackCtrl">
                  <span class="menu-title">查看学生反馈</span>
                  <i class="mdi mdi-cards menu-icon"></i>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/course/collegeSchedule.jsp">
                  <span class="menu-title">学院排课</span>
                  <i class="mdi mdi-cards menu-icon"></i>
                </a>
              </li>
			   <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/exam/info.jsp">
                  <span class="menu-title">查看考试安排</span>
                  <i class="mdi mdi-bulletin-board menu-icon"></i>
                </a>
			  </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/course/experimentSchedule.jsp">
                  <span class="menu-title">查看实验安排</span>
                  <i class="mdi mdi-bulletin-board menu-icon"></i>
                </a>
			  </li>
			  <li class="nav-item">
                <a class="nav-link" href="<%=basePath%>teacher/personalInfo/finalcheck.jsp">
                  <span class="menu-title">参与教评</span>
                  <i class="mdi mdi-bulletin-board menu-icon"></i>
                </a>
			  </li> --%>
