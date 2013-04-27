<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>精品教育</title>
    

  </head>
  
  <body>
		<%response.setContentType("text/html; charset=gb2312");

			response.sendRedirect("loginBack.action"); %>
  </body>
</html>
