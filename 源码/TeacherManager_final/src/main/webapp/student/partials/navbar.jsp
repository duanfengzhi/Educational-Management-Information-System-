<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
		   <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
             <a  href="<%=basePath%>student/sentListCtrl"><img src="<%=basePath%>images/logo.jpg" alt="logo" height="72" width="260"/></a>
             <a class="navbar-brand brand-logo-mini" href="index.html"><img src="<%=basePath%>images/logo-mini.svg" alt="logo"/></a>
           </div>
           
		   <div class="navbar-menu-wrapper d-flex align-items-stretch">
		   
              <div class="search-field d-none d-md-block">
			     <!-- 这里有一个表单 -->
                 <!-- <form class="d-flex align-items-center h-100" action="#">
                    <div class="input-group">
                       <div class="input-group-prepend bg-transparent">
                         <i class="input-group-text border-0 mdi mdi-magnify"></i>                
                       </div>
                       <input type="text" class="form-control bg-transparent border-0" placeholder="点此搜索">
                    </div>
                 </form> -->
              </div>
              
		   	<ul class="navbar-nav navbar-nav-right">
		      <li class="nav-item nav-profile dropdown">
                 <a class="nav-link dropdown-toggle" id="profileDropdown" href="<%=basePath%>student/check_feedback.html" data-toggle="dropdown" aria-expanded="false">
                   <div class="nav-profile-img">
                      <img src="<%=basePath%>images/faces/1.jpg" alt="image">
                      <span class="availability-status online"></span>             
                   </div>
                   <div class="nav-profile-text">
                      <p class="mb-1 text-black">${sessionScope.student.stuname }</p>
                   </div>
                 </a>
                 
                 <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                    <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="<%=basePath%>student/personalInfo/changePwd.jsp"><!-- 修改密码-->
	                   <i class="mdi mdi-folder-account mr-2 text-primary"></i>
	                     	修改密码
	                 </a>
					  <!-- 退回到登录页面的链接-->
                      <a class="dropdown-item" href="<%=basePath %>LoginOutCtrl">
                        <i class="mdi mdi-logout mr-2 text-primary"></i>
                          退出
                      </a>
                 </div>
              </li>
			  <li class="nav-item nav-logout d-none d-lg-block">
			     <!-- 退出按钮，链接到登录界面 -->
	             <a class="nav-link" href="<%=basePath %>LoginOutCtrl">
	               <i class="mdi mdi-power"></i>
	             </a>
	          </li>
		    </ul>
		   <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-menu"></span>
           </button>
           </div>
	    </nav>