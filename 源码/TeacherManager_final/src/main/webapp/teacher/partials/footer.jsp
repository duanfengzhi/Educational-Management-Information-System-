<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<footer class="footer">
  <div class="d-sm-flex justify-content-center justify-content-sm-between">
    <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2017 <a href="" target="_blank">BootstrapDash</a>. All rights reserved. </span>
    <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> made with
      <i class="mdi mdi-heart text-danger"></i>  </span>
  </div>
</footer>


    <!-- plugins:js -->
    <script src="<%=basePath%>vendors/js/vendor.bundle.base.js"></script>
    <script src="<%=basePath%>vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="<%=basePath%>js/off-canvas.js"></script>
    <script src="<%=basePath%>js/misc.js"></script>
    <script src="<%=basePath%>js/dashboard.js"></script>
    <script src="<%=basePath%>js/chart.js"></script>
    <!-- endinject -->