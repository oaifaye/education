<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <a href="<%=basePath %>">首页</a>
            &nbsp;&gt;&nbsp;&nbsp;<a href="<%=basePath %>frontend/educationalCounseling_con_list.jsp" >教育资讯</a>
            <!-- 详细信息 -->
            <s:if test="educationalCounseling!=null">
            	&nbsp;&gt;&nbsp;&nbsp;<a href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=<s:property value="educationalCounseling.eduCounselingFirstInfo.id"/>&eduCounselingSecondId=<s:property value="educationalCounseling.eduCounselingSecondInfo.id"/>"><s:property value="educationalCounseling.eduCounselingFirstInfo.eduCounselingFirstName"/>&nbsp;<s:property value="educationalCounseling.eduCounselingSecondInfo.eduCounselingSecondName"/></a>
            	&nbsp;&gt;&nbsp;&nbsp;<s:property value="educationalCounseling.eduCounselingTitle"/>
            </s:if>
            <!-- 列表信息 -->
            <s:else>
            	&nbsp;&gt;&nbsp;&nbsp;<s:property value="eduCounselingFirstName"/>&nbsp;<s:property value="eduCounselingSecondName"/>
            </s:else>
            
  </body>
</html>
