<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基础信息添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath %>css/tools.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		$(document).ready(function(){
			$("#addInfoRegFirst").submit(function(){
				if($("#regFirstName").val()==""){
					alert("文章标题不能为空!");
					$("#regFirstName").focus();
					return false;
				}
			});
			$("#delInfoRegSecond").click(function(){
				location="delInfoRegSecond.action?regSecondId="+$("#doubleRegionSecond").val();
			});
		});
		
	</script>
	<style type="text/css">
		.xing{
			color:red;
		}
		.title{
			font-size:28px;
			font-weight:bold ;
		}

		.nobr br{display:none}   
	</style>
  </head>
  
  <body style="overflow-x: hidden">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center">
					<td colspan="2" bgcolor="#FFFFFF">
							<a class="title">基础信息增加</a>
					</td>
				</tr>
				<s:form action="addInfoRegFirst" theme="simple" id="addInfoRegFirst">
					<tr>
						<td width="15%" align="right" bgcolor="#E7F0F9">大区添加<a class="xing">*</a></td>
						<td width="85%" align="left" bgcolor="#FFFFFF">
							<s:textfield id="regFirstName" name="regionFirstInfo.regFirstName" disabled="false"></s:textfield>
							<s:submit value="保存" disabled="false"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:select list="AllRegionFirst" listValue="regFirstName"></s:select>
						</td>
					</tr>
				</s:form>
				<!-- 大区添加end -->
				<s:form action="InfoRegSecond" theme="simple" id="addInfoRegSecond">
					<tr>
						<td align="right" bgcolor="#E7F0F9">地区添加<a class="xing">*</a></td>
						<td align="left" bgcolor="#FFFFFF" class="nobr">
							<s:select list="allRegionFirst" listValue="regFirstName" name="regionSecondInfo.regionFirstInfo.id" listKey="id" ></s:select>
							<s:textfield id="regSecondName" name="regionSecondInfo.regSecondName"></s:textfield>
							<s:submit value="保存"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:doubleselect list="allRegionFirst" listKey="id" listValue="regFirstName" doubleId="doubleRegionSecond" doubleList="regionSecondMap[top.id]" doubleName="regionSecondMap.id" doubleListKey="id" doubleListValue="regSecondName" theme="simple"></s:doubleselect>
							&nbsp;<input type="button" value="删除" id="delInfoRegSecond">
						</td>
					</tr>
				</s:form>
				<!-- 地区添加end -->
				<s:form action="addInfoGrade" theme="simple" id="addInfoGrade">
					<tr>
						<td width="15%" align="right" bgcolor="#E7F0F9">年级添加<a class="xing">*</a></td>
						<td width="85%" align="left" bgcolor="#FFFFFF">
							<s:textfield id="gradeName" name="gradeInfo.gradeName"></s:textfield>
							<s:submit value="保存"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:select list="allGrade" listValue="gradeName"></s:select>
						</td>
					</tr>
				</s:form>
				<!-- 年级添加end -->
				<s:form action="addInfoCourse" theme="simple" id="addInfoCourse">
					<tr>
						<td width="15%" align="right" bgcolor="#E7F0F9">科目添加<a class="xing">*</a></td>
						<td width="85%" align="left" bgcolor="#FFFFFF" class="nobr">
							<s:select list="allGrade" listKey="id" listValue="gradeName" name="courseInfo.gradeInfo.id"></s:select>
							<s:textfield id="courseName" name="courseInfo.courseName"></s:textfield>
							<s:submit value="保存"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:doubleselect list="allGrade" listKey="id" listValue="gradeName" doubleList="courseMap[top.id]" doubleName="courseMap.id" doubleListKey="id" doubleListValue="courseName" theme="simple"></s:doubleselect>
						</td>
					</tr>
				</s:form>
				<!-- 科目添加end -->
				<s:form action="addInfoEduCounselingFirst" theme="simple" id="addEduCounselingFirstInfo">
					<tr>
						<td width="15%" align="right" bgcolor="#E7F0F9">教育资讯一级添加<a class="xing">*</a></td>
						<td width="85%" align="left" bgcolor="#FFFFFF">
							<s:textfield id="eduCounselingFirstName" name="eduCounselingFirstInfo.eduCounselingFirstName"></s:textfield>
							<s:submit value="保存"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:select list="allEduCounselingFirst" listValue="eduCounselingFirstName"></s:select>
						</td>
					</tr>
				</s:form>
				<!-- 教育资讯一级添加end -->
				<s:form action="addInfoEduCounselingSecond" theme="simple" id="addInfoEduCounselingSecond">
					<tr>
						<td align="right" bgcolor="#E7F0F9">教育资讯二级添加<a class="xing">*</a></td>
						<td align="left" bgcolor="#FFFFFF" class="nobr">
							<s:select list="allEduCounselingFirst" listValue="eduCounselingFirstName" name="eduCounselingSecondInfo.eduCounselingFirstInfo.id" listKey="id" ></s:select>
							<s:textfield id="eduCounselingSecondName" name="eduCounselingSecondInfo.eduCounselingSecondName"></s:textfield>
							<s:submit value="保存"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							预览：
							<s:doubleselect list="allEduCounselingFirst" listKey="id" listValue="eduCounselingFirstName" doubleList="eduCounselingSecondMap[top.id]" doubleName="eduCounselingSecondMap.id" doubleListKey="id" doubleListValue="eduCounselingSecondName" ></s:doubleselect>
						</td>
					</tr>
				</s:form>
				<!-- 教育资讯二级添加end -->
			</table>
  </body>
</html>
