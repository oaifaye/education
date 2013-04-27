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

	<script type="text/javascript">
		$(function(){
			var $regSecond=$("#regSecond")
			var $campusName=$("#campusName")
			$("#addcampus").submit(function(){
				var pic=$("#uploadpic").val();
				var picName=pic.substring(0,$("#uploadpic").val().lastIndexOf('.'));
				var ext=pic.substring($("#uploadpic").val().lastIndexOf('.')).toLowerCase();//上传文件后缀，并变为小写
				
				if ($regSecond.val() == "") {
					alert("校区所属地区不能为空!")
					$regSecond.focus();
					return false;
				}else if($campusName.val() == "") {
					alert("校区名称不能为空!")
					$campusName.focus();
					return false;
				}else if($("#校区地址").val().length>2000) {
					alert("校区地址内容不能超过2000字!");
					$("#校区地址").focus();
					return false;
				}else if($("#公交路线").val().length>2000) {
					alert("公交路线内容不能超过2000字!");
					$("#公交路线").focus();
					return false;
				}else if($("#中心介绍").val().length>2000) {
					alert("中心介绍内容不能超过2000字!");
					$("#中心介绍").focus();
					return false;
				}else if($("#师资力量").val().length>2000) {
					alert("师资力量内容不能超过2000字!");
					$("#师资力量").focus();
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
	</style>
  </head>
  
  <body style="overflow-x: hidden">
  	<s:form id="addcampus" action="addcampus" enctype="multipart/form-data" theme="simple">
			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
				<tr align="center"> 
					<td colspan="2" bgcolor="#FFFFFF"  style="height:50px;"> 
						<s:if test="campusInfo==null">
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
						<s:if test="campusInfo==null">
							<%@ include file="/include/b_editNews_type.jsp"%>
						</s:if>
						<s:else>
							<s:textfield value="学习中心(校区)" cssClass="text" readonly="true"></s:textfield>
						</s:else>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">所属地区</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:select id="regSecond" list="allRegSecond" listValue="regSecondName" listKey="id" name="campusInfo.regionSecondInfo.id" headerKey="" headerValue="--请选择--" cssClass="text"></s:select>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">校区名称</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="campusName" name="campusInfo.campusName" cssClass="text"></s:textfield>
						<a class="xing">*</a>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">预约时间</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="reserveTime" name="campusInfo.reserveTime" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">电话</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textfield id="phone" name="campusInfo.phone" cssClass="text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">校区地址</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="校区地址" name="campusInfo.address" rows="2" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">公交路线</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="公交路线" name="campusInfo.traffic" rows="2" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">中心介绍</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="中心介绍" name="campusInfo.introduction" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<tr>
					<td width="15%" align="right" bgcolor="#E7F0F9">师资力量</td>
					<td width="85%" align="left" bgcolor="#FFFFFF">
						<s:textarea id="师资力量" name="campusInfo.teachers" rows="4" cols="80" ></s:textarea>
					</td>
				</tr>
				<s:if test="campusInfo==null||campusInfo.picName==null||campusInfo.picName==''">
					<tr id="upload">
						<td align="right" bgcolor="#E7F0F9">校区图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
						<s:hidden name="flag" value="0" /></td>
					</tr>
				</s:if>
				<s:else>
					<tr id="upload" style="display:none;">
						<td align="right" bgcolor="#E7F0F9">校区图片</td>
						<td align="left" bgcolor="#FFFFFF"><s:file id="uploadpic" name="uploadpic"></s:file>
					</tr>
					<tr id="suolue">
						<td align="right" bgcolor="#E7F0F9">缩略图</td>
						<td align="left" bgcolor="#FFFFFF">
							<img src=imgUpload/<s:property value="campusInfo.picName"/> width="100" height="70">
							<input type="button" id="deletePic" value="删除">
							<div id="flag"><s:hidden name="flag" value="0" /></div>
						</td>
					</tr>
				</s:else>
				<tr>
					<td align="right" bgcolor="#E7F0F9">&nbsp;</td>
					<td align="center" bgcolor="#FFFFFF">
						<s:hidden name="campusInfo.id" value="%{campusInfo.id}"></s:hidden>
						<s:hidden name="campusInfo.picName" value="%{campusInfo.picName}"></s:hidden>
						<s:token></s:token>
						<s:submit id="btnSave" name="btnSave" value="发布新闻"></s:submit>
					</td>
				</tr>
			</table>
	</s:form>
  </body>
</html>
