<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看回复</title>
    
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
                 <i class="mdi mdi-cards"></i>                 
               </span>
                信息回复列表
               </h3>
               <nav aria-label="breadcrumb">
                 <ul class="breadcrumb">
                   <li class="breadcrumb-item active" aria-current="page">
                     <span></span>查看回复
                     <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                   </li>
                 </ul>
               </nav>
		     </div>
			    <div class="row">
				    <div class="col-lg-12 grid-margin stretch-card">
                      <div class="card">
                        <div class="card-body">
                          <h4 class="card-title">信息回复列表</h4>
                          <p class="card-description">
                          </p>
						  <!-- 这个地方的button要怎么处理 要变成form 先完成跳转，后期再改成form -->
                          <table class="table table-striped">
                            <thead>
                              <tr>
                               <th>
                                发信人
                               </th>
                               <th>
                                信件类型
                               </th>
                               <th>
                                时间
                               </th>
                              </tr>
                            </thead>
                            <tbody>
                             <tr>
							  <td>
                               张老师
							  </td>
                              <td>
                               反馈已读回执
                              </td>
                              <td>
                               2018.09.23 
                              </td>
                              <td>
                               <a href="<%=basePath%>student/reply/info.jsp"><button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button></a>
							  </td>
                             </tr>
                             <tr>
                              <td>
                               偶老师
                              </td>
                              <td>
                               反馈已读回执
                              </td>
                              <td>
                               2018.09.22
                              </td>
                              <td>
                              <a href="<%=basePath%>student/reply/info.jsp"><button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button></a>
                              </td>
                             </tr>
                             <tr>
                              <td>
                               史老师
                              </td>
                              <td>
                               反馈回复
                              </td>
                              <td>
                               2018.09.20
                              </td>
                              <td>
                              <button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button>
                              </td>
                             </tr>
                             <tr>
                              <td>
                               刘老师
                              </td>
                              <td>
                               反馈回复
                              </td>
                              <td>
                               2108.09.20
                              </td>
                              <td>
                              <button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button>
                              </td>
                             </tr>
                             <tr>
                              <td>
                               朱老师
                              </td>
                              <td>
                               反馈已读回执
                              </td>
                              <td>
                                2018.09.19
                              </td>
                              <td>
                               <button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button>
                              </td>
                             </tr>
                             <tr>
                              <td>
                               郑老师
                              </td>
                              <td>
                               反馈回执已读
                              </td>
                              <td>
                               2018.09.18
                              </td>
                              <td>
                               <button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button>
                              </td>
                             </tr>
                             <tr>
                              <td>
                               王老师
                              </td>
                              <td>
                               反馈回执已读
                              </td>
                              <td>
                               2018.09.17
                              </td>
                              <td>
                               <button type="button" class="btn btn-outline-primary btn-rounded btn-sm btn-fw">查看详情</button>
                              </td>
                             </tr>
                            </tbody>
                         </table>
						 <!-- 这里以后要注意是用表单 还是用链接-->
						 <nav aria-label="breadcrumb">
                           <ul class="breadcrumb">
						     <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">首页</button></a></li>
                             <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">上一页</button></a></li>
                             <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">下一页</button></a></li>
							 <li class="breadcrumb-item"><a href="#"><button type="button" class="btn btn-gradient-primary btn-sm">末页</button></a></li>
						   </ul>
                         </nav>
                       </div>
                    </div>
                 </div>
			   </div>
			 </div>

         
         
         
         
  			    
  			    <!-- 插入footer之前的代码 -->
    			<jsp:include page="../partials//footer.jsp" flush="true"/>
    		</div>
    	</div>
    </div>
    

  </body>
</html>
