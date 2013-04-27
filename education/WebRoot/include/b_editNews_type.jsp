<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
  	<style type="text/css">
  		.newsType{
			width:160px;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			//获取url参数
			var str=window.location.href;
			//截取最后的“/”与"."之间的字符串作为selected的id
			var selectedId=str.substring(str.lastIndexOf('/')+1,str.lastIndexOf('.'));
    		$("#"+selectedId).attr("selected",true)
			$("#newsType").change(function(){
				if($("#newsType").val()!=""){
					location=$("#newsType").val();
				}else{
					location="<%=basePath%>backend/editNews.jsp"
				}
			});
		});

	</script>
  </head>
  
  <body>
		<select id="newsType" class="newsType">
			<option value="">--请选择文章类别--</option>
			<option id="initcampus" value="<%=basePath%>initcampus.action">学习中心(校区)</option>
			<option id="initproTeacher" value="<%=basePath%>initproTeacher.action">优秀教师</option>
			<option id="initallTeacher" value="<%=basePath%>initallTeacher.action">教师名录</option>
			<option id="inityiDuiYi" value="<%=basePath%>inityiDuiYi.action">一对一辅导</option>
			<option id="initgoodStudent" value="<%=basePath%>initgoodStudent.action">明星学员</option>
			<option id="initeducationalCounseling" value="<%=basePath%>initeducationalCounseling.action">教育资讯</option>
		</select>
  </body>
</html>
