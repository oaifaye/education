<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息发布</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<style type="text/css">
		.xing{
			color:red;
		}
		.title{
			font-size:28px;
			font-weight:bold ;
		}
	</style>
  </head>
  
  <body style="overflow-x: hidden">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center">
					<td colspan="2" bgcolor="#FFFFFF" style="height:50px;">
						<a class="title">信息发布</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">所属分类</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<%@ include file="/include/b_editNews_type.jsp"%>
						<a class="xing">*</a>
					</td>
				</tr>
			</table>
  </body>
</html>
