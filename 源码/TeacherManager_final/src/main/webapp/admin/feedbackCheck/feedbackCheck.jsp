<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>填写标题</title>
    
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
		
		          <div class="row">
		
		            <div class="col-md-6 grid-margin stretch-card">
		              <div class="card">
		                <div class="card-body">
		                
		                  <c:set var="fb" value="${requestScope.feedback}"></c:set>
		                  <h4 class="card-title">${fb.info} </h4>
		                  <p class="card-description">
		                    反馈人 <code>&gt;</code>
		                    
		                    <c:if test="${fb.state==0}">
							   <td>匿名</td>
							</c:if>
							<c:if test="${fb.state==1}">
							   <td>${feedbackStuName}</td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                    ${fb.stuNum}
							</c:if>
		                  </p>
		                  <div class="row">
		                    <div class="col-md-6">
		                      <address>
		                        <p class="font-weight-bold">反馈类型</p>
		                        <p>
		                        	<c:set var="type" scope="session" value="${fb.type}"/>
		                        	<c:if test="${type==1}">
									   <p>紧急反馈<p>
									</c:if>
									<c:if test="${type==2}">
									   <p>教师反馈<p>
									</c:if>
									<c:if test="${type==3}">
									   <p>学院实习安排建议<p>
									</c:if>
									<c:if test="${type==4}">
									   <p>学院硬件设施建议<p>
									</c:if>
									<c:if test="${type==5}">
									   <p>学院课程安排建议<p>
									</c:if>
									<c:if test="${type==6}">
									   <p>其他<p>
									</c:if>
		                        </p>
		                      </address>
		                    </div>
		                    <div class="col-md-6" style="height: 70px">
		                      <address class="text-primary">
		                        <p class="font-weight-bold">
		                          课程名称
		                        </p>
		                        <p class="mb-2">
		                          ${fb.claName}
		                        </p>
		                        <p class="font-weight-bold">
		                          教师姓名
		                        </p>
		                        <p>
		                          ${fb.teaName }
		                        </p>
		                      </address>
		                    </div>
		                  </div>
		                </div>
		                <div class="card-body">
		                  <h4 class="card-title">反馈内容</h4>
		                  <p class="lead">
		                    ${fb.info }
		                  </p>
		                </div>
		              </div>
		            </div>

		
		             <%-- <div class="form-group"  >
		             
		             <form action="<%=basePath %>admin/sendCtrl?fnum=${fb.fnum}" method="POST" id="sendFeedback">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <div class="col-sm-6">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="role" id="membershipRadios1" value="teacher" checked onclick="check();">
                                教师
                              </label>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="role" id="membershipRadios2" value="boss" onclick="check();">
                                领导
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
		
		                <table>
		                	<tr>
		                		<td>
		                				<div id="showdiv">
		                				<select name="recipient" class="form-control" style="margin-left:20px">
		                				  <c:forEach var="t" items="${requestScope.teacherList}">
			                              <option value="${t.teaNo }" >${t.teaName }</option>
			                              </c:forEach>
		                            	</select>
		                            	</div>
		                		</td>
		                		<td>
		                			<button style="margin-left:20px" class="btn btn-sm btn-outline-primary" type="submit">发送反馈</button>
		                		</td>
		                		<td>
		                			<button type="button" onclick="allhtml()">点这里</button>
		                		</td>
		                	</tr>
		                </table>
		                
		              </form>
		              
		            </div> --%>
		              
		              
		              

                      
                      
                      
                      
                      
                      




            <div class="col-md-3 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                	<h4>请选择反馈接收者</h4>
                  <form action="<%=basePath %>admin/sendCtrl?fnum=${fb.fnum}" method="POST" id="sendFeedback">
					  <div class="row" style="margin-top:33% ">

                        <div class="form-group">
                          <div class="form-check">
                            <label class="form-check-label">
                              <input type="radio" class="form-check-input" name="type" id="optionsRadios1" value="t" checked>
                              校内教师
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input type="radio" class="form-check-input" name="type" id="optionsRadios2" value="ext">
                              外聘教师
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input type="radio" class="form-check-input" name="type" id="optionsRadios1" value="b">
                              领导
                            </label>
                          </div>
                        </div>

                    

                      <div class="form-group">
		                <table>
		                	<tr>
	               				<div>
	                				<select name="t" class="form-control" style="margin-left:20px">
	                				  <c:forEach var="t" items="${requestScope.teacherList}">
		                              <option value="${t.teaNo }" >${t.teaName }</option>
		                              </c:forEach>
	                            	</select>
	                           	</div>
		                	</tr>
		                	<tr>
                				<div>
	                				<select name="ext" class="form-control" style="margin-left:20px">
	                				  <c:forEach var="ext" items="${requestScope.exTeacherList}">
		                              <option value="${ext.exTeaNo }" >${ext.exTeaName }</option>
		                              </c:forEach>
	                            	</select>
                            	</div>
		                	</tr>
		                	<tr>
                				<div>
	                				<select name="b" class="form-control" style="margin-left:20px">
	                				  <c:forEach var="b" items="${requestScope.bossList}">
		                              <option value="${b.bossnum }" >${b.bossname }</option>
		                              </c:forEach>
	                            	</select>
                            	</div>
		                	</tr>
		                </table>
		              </div>
		              <button style="margin-left:56px ; margin-top:30px" class="btn btn-sm btn-outline-primary" type="submit">发送反馈</button>
		             </div>
                  </form>
                </div>
              </div>
            </div>
		  </div>




                      
                      
                      
                      
                      
                      
                     
		                
		                
		              <div class="col-md-8">
		                <form action="<%=basePath %>admin/replyCtrl?fnum=${fb.fnum}" method="POST" >
    					  <div class="form-group">
                            <label for="exampleTextarea1">审核不通过原因</label>
                            <textarea class="form-control" name="reply" rows="8" placeholder=""></textarea>
                          </div>
                            <div>
                            	<button type="submit" class="btn btn-fw btn-outline-primary">拒绝反馈并发送原因</button>
                            	<button type="button" class="btn btn-fw btn-outline-primary" style="width:20px" onclick="history.back()">返回</button>
                            </div>
		                </form>
		              </div>



	</div>
		

  			    
  			    <!-- 插入footer之前的代码 -->
    			<jsp:include page="../partials/footer.jsp" flush="true"/>
    		</div>
    	</div>
    </div>
    
    
    

    <script type="text/javascript">
    function allhtml() {
     document.getElementById("showdiv").innerHTML ="";
        $.ajax({
            type: 'post', //可选get
            url: 'showcontent', //这里是接收数据的程序
            data: 'data=2', //传给后台的数据，多个参数用&连接
            dataType: 'html', //服务器返回的数据类型 可选XML ,Json jsonp script html text等
            success: function(msg) {
                //这里是ajax提交成功后，程序返回的数据处理函数。msg是返回的数据，数据类型在dataType参数里定义！
                document.getElementById("showdiv").innerHTML = msg;
                //$("#duoduo").innerHTML = msg;
            },
            error: function() {
                alert('对不起失败了');
            }
        })
    }
	</script>
    
    
    
    
    
  </body>
</html>





<script type="text/javascript">
	function choose(){
		alert(1)
		window.open('<%=basePath %>admin/feedbackCheck/replySucc.jsp', 'newwindow', 'height=100, width=400, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no')
	}
</script>


<script type="text/javascript">
	function check(){
	var form = document.getElementById('sendFeedback');
	var radios = document.getElementsByName('role');
	var len = radios.length;
	alert(len)
	for(var i=0;i<len;i++){
		if(radios[i].checked == true){
			alert(radios[i].value)
			//form.action = radios[i].value;
		}
		}
	}
</script>