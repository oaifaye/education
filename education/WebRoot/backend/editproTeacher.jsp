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
    
    <title>信息发布</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=basePath %>js/Calendar3.js"></script>		
	<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/interface/infoService.js'></script> 
	<script type='text/javascript' src='<%=basePath%>js/dwr_gradeAndCourse.js'></script>
	<script type="text/javascript">
		$(function(){
			var proTeacherName=$("#proTeacherName")
			var allGrades=$("#allGrades")
			var allCourses=$("#allCourses")
			var allRegionSecond=$("#allRegionSecond")
			var publicDate=$("#publicDate")
			$("#addproTeacher").submit(function(){
				var pic=$("#uploadpic").val();
				var picName=pic.substring(0,$("#uploadpic").val().lastIndexOf('.'));
				var ext=pic.substring($("#uploadpic").val().lastIndexOf('.')).toLowerCase();//上传文件后缀，并变为小写
				if (proTeacherName.val() == "") {
					alert("优秀教师姓名不能为空!")
					proTeacherName.focus();
					return false;
				}else if($("#allGrade").val() == "--请选择--") {
					alert("辅导年级不能为空!");
					$("#allGrade").focus();
					return false;
				}else if($("#courseMap").val() == "--请选择--") {
					alert("辅导科目不能为空!");
					$("#courseMap").focus();
					return false;
				}else if(allRegionSecond.val() == "") {
					alert("所在校区不能为空!")
					allRegionSecond.focus();
					return false;
				}else if(publicDate.val() == "") {
					alert("发布时间不能为空!")
					publicDate.focus();
					return false;
				}else if($("#教学理念").val().length>2000) {
					alert("教学理念内容不能超过2000字!");
					$("#教学理念").focus();
					return false;
				}else if($("#高考名师").val().length>2000) {
					alert("高考名师内容不能超过2000字!");
					$("#高考名师").focus();
					return false;
				}else if($("#中考名师").val().length>2000) {
					alert("中考名师内容不能超过2000字!");
					$("#中考名师").focus();
					return false;
				}else if($("#小升初名师").val().length>2000) {
					alert("小升初名师内容不能超过2000字!");
					$("#小升初名师").focus();
					return false;
				}else if($("#艺考名师").val().length>2000) {
					alert("艺考名师内容不能超过2000字!");
					$("#艺考名师").focus();
					return false;
				}else if($("#资深名师").val().length>2000) {
					alert("资深名师内容不能超过2000字!");
					$("#资深名师").focus();
					return false;
				}else if($("#专题名师").val().length>2000) {
					alert("专题名师内容不能超过2000字!");
					$("#专题名师").focus();
					return false;
				}else if($("#培优名师").val().length>2000) {
					alert("培优名师内容不能超过2000字!");
					$("#培优名师").focus();
					return false;
				}else if(pic!=""){
					if(ext!=".bmp"&&ext!=".png"&&ext!=".gif"&&ext!=".jpg"&&ext!=".jpeg"&&ext!=""){
						alert("图片限于bmp,png,gif,jpeg,jpg格式");
						return false;
					}else if(picName.length>50){
						alert("图片名称长度应小于50字符");
						return false;
					}else{
						return true;
					}
				}else{
					return true;
				}
			})
			
			//删除图片
			$("#deletePic").click(function(){
				if(confirm("是否删除图片")){
					$("#upload").show();
					//防止图片占用无法删除
					$("#suolue").html('<input type="hidden" name="flag" value="2">');
					$("#suolue").hide();
				}
			})
		})
	</script>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.xing{
			color:red;
		}
		.title{
			font-size:28px;
			font-weight:bold ;
		}
		.text{
			 width:160px;
		}
		.nobr br{display:none} 
	</style>
  </head>
  
  <body style="overflow-x: hidden">
  	<s:form id="addproTeacher" action="addproTeacher" enctype="multipart/form-data" theme="simple">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center"> 
					<td colspan="2" bgcolor="#FFFFFF"  style="height:50px;"> 
						<s:if test="prominentTeacher==null">
							<a class="title">信息发布</a>
						</s:if>
						<s:else>
							<a class="title">信息修改</a>
						</s:else>
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#E7F0F9">所属分类</td>
					<td align="left" bgcolor="#FFFFFF">
						<s:if test="prominentTeacher==null">
							<%@ include file="/include/b_editNews_type.jsp"%>
						</s:if>
						<s:else>
							<s:textfield value="优秀教师" cssClass="text" readonly="true"></s:textfield>
						</s:else>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">优秀教师姓名</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="proTeacherName" name="prominentTeacher.proTeacherName" cssClass="text"></s:textfield>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导年级</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<select name="gradeInfo" id="allGrade" class="text">
							<option value="--请选择--">--请选择--</option>
						</select> 
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导科目</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<select name="courseInfo" id="courseMap" class="text">
							<option value="--请选择--">--请选择--</option>
						</select> 
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#E7F0F9">所在校区</td>
					<td align="left" bgcolor="#FFFFFF" class="nobr">
						<s:doubleselect list="allRegionSecond" listKey="id" listValue="regSecondName" headerKey="" headerValue="--请选择--" name="prominentTeacher.regionSecondInfo.id" cssClass="text" id="allRegionSecond"
							doubleList="campusMap[top.id]" doubleListKey="id" doubleListValue="campusName" doubleName="prominentTeacher.campusInfo.id" doubleHeaderKey="-1" doubleHeaderValue ="--请选择--" doubleId="doubleProTeacher" theme="simple" doubleCssClass="text"></s:doubleselect>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#E7F0F9">发布日期</td>
		 			<td align="left" bgcolor="#FFFFFF">
						<s:textfield id="publicDate" name="publicDate" onclick="new Calendar().show(this)" readonly="true" cssClass="text"></s:textfield>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr id="zhiding">
			 		<td align="right" bgcolor="#E7F0F9">是否置顶</td>
					<td align="left" bgcolor="#FFFFFF">
					<s:if test="prominentTeacher==null">
						<s:radio list="%{#{'1':'是','0':'否'}}" name="prominentTeacher.displayOrder" id="displayOrder" value="0"></s:radio>
					</s:if>
					<s:else>
						<s:radio list="%{#{'1':'是','0':'否'}}" name="prominentTeacher.displayOrder" id="displayOrder"></s:radio>
					</s:else>
					</td> 
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">优秀教师头衔</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="proTeacherHonour" name="prominentTeacher.proTeacherHonour" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">工作年限</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="proTeacherWorkTime" name="prominentTeacher.proTeacherWorkTime" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">毕业院校</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="proTeacherGraduate" name="prominentTeacher.proTeacherGraduate" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">教学理念</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="教学理念" name="prominentTeacher.proTeacherLogos" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">高考名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="高考名师" name="prominentTeacher.gaoKao" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">中考名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="中考名师" name="prominentTeacher.zhongKao" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">小升初名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="小升初名师" name="prominentTeacher.xiaoShengChu" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">艺考名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="艺考名师" name="prominentTeacher.yiKao" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">资深名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="资深名师" name="prominentTeacher.zishen" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">专题名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="专题名师" name="prominentTeacher.zhuanti" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">培优名师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="培优名师" name="prominentTeacher.peiYou" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<s:if test="prominentTeacher==null||prominentTeacher.picName==null||prominentTeacher.picName==''">
					<tr id="upload">
						<td align="right" bgcolor="#E7F0F9">优秀教师图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
						<s:hidden name="flag" value="0" /></td>
					</tr>
				</s:if>
				<s:else>
					<tr id="upload" style="display:none;">
						<td align="right" bgcolor="#E7F0F9">优秀教师图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
					</tr>
					<tr id="suolue">
						<td align="right" bgcolor="#E7F0F9">缩略图</td>
						<td align="left" bgcolor="#FFFFFF">
							<img src=imgUpload/<s:property value="prominentTeacher.picName"/> width="100" height="70">
							<input type="button" id="deletePic" value="删除">
							<div id="flag"><s:hidden name="flag" value="0" /></div>
						</td>
					</tr>
				</s:else>
				<tr>
					<td align="right" bgcolor="#E7F0F9">&nbsp;</td>
					<td align="center" bgcolor="#FFFFFF">
						<s:hidden name="prominentTeacher.id" value="%{prominentTeacher.id}"></s:hidden>
						<s:hidden id="gradeId" name="prominentTeacher.gradeInfo.id" value="%{prominentTeacher.gradeInfo.id}"></s:hidden>
						<s:hidden id="courseId" name="prominentTeacher.courseInfo.id" value="%{prominentTeacher.courseInfo.id}"></s:hidden>
						<s:hidden name="prominentTeacher.picName" value="%{prominentTeacher.picName}"></s:hidden>
						<s:token></s:token>
						<s:submit id="btnSave" name="btnSave" value="发布新闻"></s:submit>
					</td>
				</tr>
			</table>
	</s:form>
  </body>
</html>
