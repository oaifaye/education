<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    
    <title>navigation</title>

	<!-- JS需使用function navigationControl(typeID),@param typeID 文章类型的id -->
  </head>
  
  <body>
    <div class="h_40">
        <s:form name="navigationForm">
            <a href=<%=basePath%>>首页</a>
            &nbsp;&gt;&nbsp;&nbsp;<a href="<%=basePath%>fListgoodStudent.action?state=1">明星学员</a>
            <s:if test="gradeNameSelect!=null">
            	&nbsp;&gt;&nbsp;&nbsp;<a href="<%=basePath%>fListgoodStudent.action?state=1&gradeId=<s:property value="gradeId"/>"><s:property value="gradeNameSelect"/></a>
            </s:if>
            <s:if test="courseNameSelect!=null">
            	&nbsp;&gt;&nbsp;&nbsp;<a href="<%=basePath%>fListgoodStudent.action?state=1&gradeId=<s:property value="gradeId"/>&courseId=<s:property value="courseId"/>"><s:property value="courseNameSelect"/></a>
            </s:if>
            <s:if test="goodStudent!=null">
            	&nbsp;&gt;&nbsp;&nbsp;<s:property value="goodStudent.studentName"/>
            </s:if>
            </s:form>
        </div>
  </body>
</html>
