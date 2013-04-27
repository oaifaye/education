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
	<link rel="stylesheet" href="<%=basePath %>kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=basePath %>kindeditor/code/prettify.css" />
	<script charset="utf-8" src="<%=basePath %>kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="<%=basePath %>kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="<%=basePath %>kindeditor/plugins/code/prettify.js"></script>	
	<script type='text/javascript' src='<%=basePath%>dwr/engine.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/util.js'></script> 
	<script type='text/javascript' src='<%=basePath%>dwr/interface/infoService.js'></script> 
	<script type='text/javascript' src='<%=basePath%>js/dwr_gradeAndCourse.js'></script>
	<script type="text/javascript">
		$(function(){
			var title=$("#title");
			var publicDate=$("#publicDate");
			$("#addyiDuiYi").submit(function(){
				var pic=$("#uploadpic").val();
				var picName=pic.substring(0,$("#uploadpic").val().lastIndexOf('.'));
				var ext=pic.substring($("#uploadpic").val().lastIndexOf('.')).toLowerCase();//上传文件后缀，并变为小写
				if (title.val() == "") {
					alert("提高班名称不能为空!");
					title.focus();
					return false;
				}else if($("#allGrade").val() == "--请选择--") {
					alert("辅导年级不能为空!");
					$("#allGrade").focus();
					return false;
				}else if($("#courseMap").val() == "--请选择--") {
					alert("辅导科目不能为空!");
					$("#courseMap").focus();
					return false;
				}else if(publicDate.val() == "") {
					alert("发布时间不能为空!");
					publicDate.focus();
					return false;
				}else if($("#招生简章").val().length>2000) {
					alert("招生简章内容不能超过2000字!");
					$("#招生简章").focus();
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
		//文本框插件
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[id="regulations"]', {
				syncType: '', afterBlur: function(){editor1.sync();},
				cssPath : '<%=path %>/kindeditor/plugins/code/prettify.css',
				uploadJson : '<%=path %>/kindeditor/upload_json.jsp',
				fileManagerJson : '<%=path %>/kindeditor/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['addyiDuiYi'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['addyiDuiYi'].submit();
					});
				}
			});
			prettyPrint();
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
  	<s:form id="addyiDuiYi" action="addyiDuiYi" enctype="multipart/form-data" theme="simple">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center"> 
					<td colspan="2" bgcolor="#FFFFFF"  style="height:50px;"> 
						<s:if test="yiDuiYi==null">
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
						<s:if test="yiDuiYi==null">
							<%@ include file="/include/b_editNews_type.jsp"%>
						</s:if>
						<s:else>
							<s:textfield value="一对一辅导" cssClass="text" readonly="true"></s:textfield>
						</s:else>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">提高班名称</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="title" name="yiDuiYi.title" cssClass="text"></s:textfield>
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
					<td align="right" bgcolor="#E7F0F9">发布日期</td>
		 			<td align="left" bgcolor="#FFFFFF">
						<s:textfield id="publicDate" name="publicDate" onclick="new Calendar().show(this)" readonly="true" cssClass="text"></s:textfield>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr id="zhiding">
			 		<td align="right" bgcolor="#E7F0F9">是否置顶</td>
					<td align="left" bgcolor="#FFFFFF">
					<s:if test="yiDuiYi==null">
						<s:radio list="%{#{'1':'是','0':'否'}}" name="yiDuiYi.displayOrder" id="displayOrder" value="0"></s:radio>
					</s:if>
					<s:else>
						<s:radio list="%{#{'1':'是','0':'否'}}" name="yiDuiYi.displayOrder" id="displayOrder"></s:radio>
					</s:else>
					</td> 
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">适合人群</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="fitPerson" name="yiDuiYi.fitPerson" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">上课时间</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="classTime" name="yiDuiYi.classTime" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#E7F0F9">咨询热线</td>
					<td align="left" bgcolor="#FFFFFF">
						<s:textfield id="phone" name="yiDuiYi.phone" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">招生简章</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="招生简章" name="yiDuiYi.regulations" id="regulations" rows="25" cols="80" ></s:textarea>
					</td>
				</tr>
				<s:if test="yiDuiYi==null||yiDuiYi.picName==null||yiDuiYi.picName==''">
					<tr id="upload">
						<td align="right" bgcolor="#E7F0F9">教师图片</td>
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
							<img src=imgUpload/<s:property value="yiDuiYi.picName"/> width="100" height="70">
							<input type="button" id="deletePic" value="删除">
							<div id="flag"><s:hidden name="flag" value="0" /></div>
						</td>
					</tr>
				</s:else>
				<tr>
					<td align="right" bgcolor="#E7F0F9">&nbsp;</td>
					<td align="center" bgcolor="#FFFFFF">
						<s:hidden name="yiDuiYi.id" value="%{yiDuiYi.id}"></s:hidden>
						<s:hidden id="gradeId" name="yiDuiYi.gradeInfo.id" value="%{yiDuiYi.gradeInfo.id}"></s:hidden>
						<s:hidden id="courseId" name="yiDuiYi.courseInfo.id" value="%{yiDuiYi.courseInfo.id}"></s:hidden>
						<!-- state目的是给struts配置文件传值 -->
						<s:if test="yiDuiYi==null">
							<!-- 添加时用 -->
							<s:hidden name="state" value="1"></s:hidden>
						</s:if>
						<s:else>
							<!-- 修改时用 -->
							<s:hidden name="state" value="%{yiDuiYi.state}"></s:hidden>
						</s:else>
						
						<s:hidden name="yiDuiYi.picName" value="%{yiDuiYi.picName}"></s:hidden>
						<s:token></s:token>
						<s:submit id="btnSave" name="btnSave" value="发布新闻"></s:submit>
					</td>
				</tr>
			</table>
	</s:form>
  </body>
</html>
