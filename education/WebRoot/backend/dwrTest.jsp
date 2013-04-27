<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dwrTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/interface/campusAction.js'></script> 
	<script type="text/javascript">
		function testFun() { 
			var name = "aaaaa"; 
			campusAction.testDwr(name, returnFun);  //调用java方法，第二个参数是回调函数
		}
		function returnFun(data) {  //data对应着java方法的返回值 
			//	var str="";
			//	for(var i=0;i<data.length;i++){
			//		str+=data[i];
			//	}
			//	alert(str);
			alert(data[0].id)
		} 
  
	</script>
	
	</head>
  
  <body onload="testFun()">
    
  </body>
</html>
