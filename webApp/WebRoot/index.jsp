<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
  </head>
  		<div class="panel panel-primary">
		   <div class="panel-heading">
		      <h3 class="panel-title">HBase</h3>
		   </div>
		   <div class="panel-body">
		   		
		   		<h4>导入数据</h4>
				<form class="form-inline" method="">
				  <div class="form-group">
				      <input type="text" class="form-control" name="path" placeholder="导入数据路径">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" name="consumer" placeholder="消费者线程数">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" name="producer" placeholder="生产者线程数">
				  </div>
				  <div class="form-group">
				      <button type="submit" class="btn btn-primary">提交导入</button>
				  </div>
				</form>
				<% 
					String data_path = request.getParameter("path");
					String msg = "导入错误";
					if(data_path != null){
						out.println("<div class='alert alert-danger' role='alert'>"+msg+"</div>");
					}
				%>
				
			</div>
		</div>
		<div class="panel panel-primary">
		   <div class="panel-heading"><h3 class="panel-title">Hive</h3></div>
		   <div class="panel-body">
		   		
		   		<h4>Hive导入</h4>
		   		<form class="form-inline">
				  <div class="form-group">
				      <input type="text" class="form-control" name="search" placeholder="导入路径">
				  </div>
				  <div class="form-group">
				      <button type="submit" class="btn btn-primary">提交导入</button>
				  </div>
				 </form>
				
				<h4>用户轨迹查询</h4>
		   		<form class="form-inline">
				  <div class="form-group">
				      <input type="text" class="form-control" name="startTime" placeholder="查询开始时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" id="endTime" name="endTime" placeholder="查询结束时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" name="userMac" placeholder="用户mac地址">
				  </div>
				  <div class="form-group">
				      <button type="submit" class="btn btn-primary">提交查询</button>
				  </div>
				</form>
				
				<h4>伴随情况分析</h4>
		   		<form class="form-inline">
				  <div class="form-group">
				      <input type="text" class="form-control" name="startTime" placeholder="查询开始时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" id="endTime" name="endTime" placeholder="查询结束时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" name="userMac" placeholder="用户mac地址">
				  </div>
				  <div class="form-group">
				      <button type="submit" class="btn btn-primary">提交查询</button>
				  </div>
				</form>
				
				<h4>碰撞分析</h4>
		   		<form class="form-inline">
				  <div class="form-group">
				      <input type="text" class="form-control" name="startTime" placeholder="查询开始时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" id="endTime" name="endTime" placeholder="查询结束时间">
				  </div>
				  <div class="form-group">
				      <input type="text" class="form-control" name="deviceMac" placeholder="设备Mmac">
				  </div>
				  <div class="form-group">
				      <button type="submit" class="btn btn-primary">提交查询</button>
				  </div>
				</form>
		
		   </div>		   
</div>
  <body>
	
  </body>
</html>
