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
			$("#addgoodStudent").submit(function(){
				var pic=$("#uploadpic").val();
				var picName=pic.substring(0,$("#uploadpic").val().lastIndexOf('.'));
				var ext=pic.substring($("#uploadpic").val().lastIndexOf('.')).toLowerCase();//上传文件后缀，并变为小写
				if ($("#studentName").val() == "") {
					alert("学员姓名不能为空!");
					$("#studentName").focus();
					return false;
				}else if($("#allGrades").val() == "") {
					alert("所在年级不能为空!");
					$("#allGrades").focus();
					return false;
				}else if($("#allCourses").val() == "") {
					alert("辅导科目不能为空!");
					$("#allCourses").focus();
					return false;
				}else if($("#allTeacherList").val() == "") {
					alert("辅导老师不能为空!");
					$("#allTeacherList").focus();
					return false;
				}else if($("#allcampus").val() == "") {
					alert("辅导校区不能为空!");
					$("#allcampus").focus();
					return false;
				}else if($("#publicDate").val() == "") {
					alert("发布时间不能为空!");
					$("#publicDate").focus();
					return false;
				}else if($("#个性分析").val().length>2000) {
					alert("个性分析内容不能超过2000字!");
					$("#个性分析").focus();
					return false;
				}else if($("#辅导方向").val().length>2000) {
					alert("辅导方向内容不能超过2000字!");
					$("#辅导方向").focus();
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
			});
			
			//学习前后分数验证
			$("#beforeStudy").add("#behindStudy").blur(function(){
				if($(this).val().length!=0){
					var partten = /^\d+$/;//只能为数字
						//为数字&&小于150&&大于1
					if(!(partten.test($(this).val())&&parseInt($(this).val())<150&&$(this).val()>0)){
						$(this).val('');
						alert("辅导前分数只能为正整数且在1-150之间!");
					}
				}
			});
			
			//删除图片
			$("#deletePic").click(function(){
				if(confirm("是否删除图片")){
					$("#upload").show();
					//防止图片占用无法删除
					$("#suolue").html('<input type="hidden" name="flag" value="2">');
					$("#suolue").hide();
				}
			});
		});
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
  	<s:form id="addgoodStudent" action="addgoodStudent" enctype="multipart/form-data" theme="simple">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center"> 
					<td colspan="2" bgcolor="#FFFFFF"  style="height:50px;"> 
						<s:if test="goodStudent==null">
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
						<s:if test="goodStudent==null">
							<%@ include file="/include/b_editNews_type.jsp"%>
						</s:if>
						<s:else>
							<s:textfield value="明星学员" cssClass="text" readonly="true"></s:textfield>
						</s:else>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">学员姓名</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="studentName" name="goodStudent.studentName" cssClass="text"></s:textfield>
						<a class="xing">*</a>
					</td>
				</tr>
				<s:if test="allTeacherList!=null">
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
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导老师</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:select id="allTeacherList" list="allTeacherList" listValue="allTeacherName" listKey="id" name="goodStudent.allTeacher.id" headerKey="" headerValue="--请选择--" cssClass="text"></s:select>
						<a class="xing">*</a>
					</td>
				</tr>
				</s:if>
				<s:else>
					<script type="text/javascript">
						alert("请先填写教师名录信息");
						location="<%=basePath%>backend/editNews.jsp";
					</script>
				</s:else>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导校区</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:select id="allcampus" list="allcampus" listValue="campusName" listKey="id" name="goodStudent.campusInfo.id" headerKey="" headerValue="--请选择--" cssClass="text"></s:select>
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
					<s:if test="goodStudent==null">
						<s:radio list="%{#{'1':'是','0':'否'}}" name="goodStudent.displayOrder" id="displayOrder" value="0"></s:radio>
					</s:if>
					<s:else>
						<s:radio list="%{#{'1':'是','0':'否'}}" name="goodStudent.displayOrder" id="displayOrder"></s:radio>
					</s:else>
					</td> 
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">所在学校</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="studentSchool" name="goodStudent.studentSchool" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导前分数</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="beforeStudy" name="goodStudent.beforeStudy" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导后分数</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="behindStudy" name="goodStudent.behindStudy" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">个性分析</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="个性分析" name="goodStudent.geXing" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">辅导方向</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="辅导方向" name="goodStudent.fangXiang" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<s:if test="goodStudent==null||goodStudent.picName==null||goodStudent.picName==''">
					<tr id="upload">
						<td align="right" bgcolor="#E7F0F9">学员图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
						<s:hidden name="flag" value="0" /></td>
					</tr>
				</s:if>
				<s:else>
					<tr id="upload" style="display:none;">
						<td align="right" bgcolor="#E7F0F9">教师图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
					</tr>
					<tr id="suolue">
						<td align="right" bgcolor="#E7F0F9">缩略图</td>
						<td align="left" bgcolor="#FFFFFF">
							<img src=imgUpload/<s:property value="goodStudent.picName"/> width="100" height="70">
							<input type="button" id="deletePic" value="删除">
							<div id="flag"><s:hidden name="flag" value="0" /></div>
						</td>
					</tr>
				</s:else>
				<tr>
					<td align="right" bgcolor="#E7F0F9">&nbsp;</td>
					<td align="center" bgcolor="#FFFFFF">
						<s:hidden name="goodStudent.id" value="%{goodStudent.id}"></s:hidden>
						<s:hidden name="goodStudent.gradeInfo.id" id="gradeId" value="%{goodStudent.gradeInfo.id}"></s:hidden>
						<s:hidden name="goodStudent.courseInfo.id" id="courseId" value="%{goodStudent.courseInfo.id}"></s:hidden>
						<s:hidden name="goodStudent.picName" value="%{goodStudent.picName}"></s:hidden>
						<s:token></s:token>
						<s:submit id="btnSave" name="btnSave" value="发布新闻"></s:submit>
					</td>
				</tr>
			</table>
	</s:form>
  </body>
</html>
