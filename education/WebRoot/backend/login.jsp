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
    
    <title>数据管理后台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
	body{background:#fff;margin:0;padding:0;color:#333;}
	h1{float:left;width:410px;margin:20px;display:inline;}
	h1 img{float:left;}
	h1 span{float:right;width:290px;height:47px;background:#ebebeb;font:22px/46px "黑体";text-indent:20px;}
	.login-body{margin-top:50px;height:392px;width:100%;text-align:center;background:url(images/lor_bg.gif) repeat-x;}
	.login-con{width:450px;height:392px;background:url(images/login_bg.gif) no-repeat;margin:0 auto;}
	.login{float:right;width:290px;margin-right:20px;display:inline}
	.login li{float:left;width:100%;margin-bottom:20px;}
	.login label{float:left;width:100%;font-size:14px;margin-bottom:3px;}
	.login input{float:left;padding:4px 2px;margin:0}
	.login table tr td{height:60px;width:200px}
	.submit{float:left;border:none;width:70px; height:28px;background:transparent url(images/lg_buttom.gif) no-repeat;cursor: pointer;font-size:14px;color:#fff;font-weight:bold;}
	#username,#password{font:#234567;margin-left:0px;}
	.focus{ 
	border: 1px solid #F78181;
	background:#FBEFEF
	} 
	-->
	</style>
	<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		var $loginForm=$("#loginForm");
		var $username=$("#username");
		var $password=$("#password");
		var array=[$username,$password];
		
		$("#reset").click(function(){
				$("#username").val("");
				$("#password").val("");
			});
			
		//文本框聚焦变色
		$(function(){
			for(var i=0 ; i<array.length ; i++){
				array[i].focus(function(){
					$(this).addClass("focus");
				}).blur(function () {  
               		$(this).removeClass("focus");  
           		});  
        	}
		})
		
		//文本框聚焦去掉默认值，离开，恢复默认值
		$username.focus(function(){
				if($username.val()=="请输入用户名")
					$username.val("");
		})
		$username.blur(function(){
				if($username.val()=="")
					$username.val("请输入用户名");
		})
			
		//用户名密码提交验证
			$loginForm.submit(function(){
				if ($username.val() == ""||$username.val()=="请输入用户名") {
					alert("请输入您的用户名!")
					$username.focus();
					return false;
				}
				else if($password.val() == ""){
					alert("请输入您的密码!")
					$password.focus();
					return false;
				}
				else{
					return true;
				}
			})
		});		
	</script>
	<style type="text/css">
			form .errorMessage { margin-left:5px;color:red }
	</style>
 	</head>
 	<body> 
		<div class="login-body">
			<div class="login-con">
				<h1><img src="images/login_logo.gif"/><span>数据管理后台</span></h1><h3></h3>
					<div class="login">
						<s:form id="loginForm" name="loginForm" action="loginBack" method="post" theme="simple">
							<table align="center" >
            					<tr>
									<td><label>用户名： </label><s:textfield id="username" name="username" maxlength="15" cssStyle="width:160px;color:#8E8E8E" value="sa"/></td>
								</tr>
								<tr>
									<td><label>密   码：</label><s:password id="password" name="password" maxlength="15" cssStyle="width:160px;color:#8E8E8E" cssClass="{required:true,messages:{required:'请输入密码'}}" value="sa"/></td>
            					</tr>
 								<tr>
 									<td>
 										<s:submit value="登录"></s:submit>
 										<input id="reset" type="button" value="重置" style="margin-left:15px;"/>
 									</td>     
								</tr>
								<tr>
	                 				<td><s:actionerror cssStyle="font-weight:bold;color:red"/><s:fielderror value="loginBack.error" cssStyle="font-weight:bold;color:red"/></TD>
           						</tr>   
							</table>
						</s:form>
					</div>
				</div>
			</div>
	</body>
</html>

