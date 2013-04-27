<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
 		<base href="<%=basePath%>">
    
    	<title>数据管理后台</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="css/frame.css" rel="stylesheet" type="text/css" />
		<title>后台管理</title>
		<script src="js/jquery.js" language="javascript" type="text/javascript"></script>
		<script src="js/frame.js" language="javascript" type="text/javascript"></script>
		<script language="javascript">
			//刷新次数
			if(window.name=="")
			window.name = "0";
			else
			window.name = eval(window.name) + 1;   
			//时间显示
			function startTime(){ 
				var today=new Date() 
  				var week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); 
				var year=today.getFullYear() 
  				var month=today.getMonth()+1 
  				var date=today.getDate() 
  				var day=today.getDay() 
  				var h=today.getHours() 
  				var m=today.getMinutes() 
  				var s=today.getSeconds() 
  				// add a zero in front of numbers<10 
  				h=checkTime(h) 
  				m=checkTime(m) 
  				s=checkTime(s) 
  				document.getElementById('time').innerHTML=" "+year+"年"+month+"月"+date+"日  "+week[day]+"  "+h+":"+m+":"+s+" " 
  				t=setTimeout('startTime()',500) 
 			} 
 			function checkTime(i){ 
 				if (i<10){i="0" + i} 
   				return i 
 			} 
		</script>
	</head>
	<body class="showmenu" onload="startTime()">
		<div class="head">
			<div class="top_logo"> <img src="images/logo.gif"  alt="分数宝Logo" /> </div>
    		<div class="top_link">
      			<ul>
      				<li><script language="javascript">document.write("已经刷新"+ window.name+'次'); </script>&nbsp;&nbsp;</li>
        			<li>&nbsp;&nbsp;<span id="time"></span>&nbsp;&nbsp;</li>
	    			<li class="welcome">&nbsp;&nbsp;&nbsp;管理员：<%=session.getAttribute("managerUserName") %>&nbsp;&nbsp;&nbsp;|</li>
        			<li><a href="<%=basePath%>index.jsp" target="_blank">网站首页</a></li>     
        			<li><a href="<%=basePath%>backend/logout.jsp" target="_top">[退出]</a></li>
				</ul>
			</div>
		</div>
		<!-- header end -->
		<div class="left">
			<div class="menu" id="menu">
				<dl>
					<dt style="background-position:left bottom">内容管理</dt>
					<dd style="display:block">
						<ul>
							<li><a href="<%=basePath%>backend/editNews.jsp" target="main">信息发布</a></li>
							<li><a href="<%=basePath%>backend/listNews.jsp" target="main">信息管理</a></li>
							<li><a href="initInfo.action" target="main">基础信息</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
        			<dt>系统设置</dt>
        			<dd>
          				<ul>
							<li><a href="" target="main">系统基本参数</a></li>
							<li><a href="#" target="main">系统用户管理</a></li>
							<li><a href="#" target="main">用户组设定</a></li>
							<li><a href="#" target="main">系统日志管理</a></li>
							<li><a href="#" target="main">图片水印设置</a></li>
							<li><a href="#" target="main">自定义数据属性</a></li>
							<li><a href="#" target="main">搜索关键词维护</a></li>
							<li><a href="#" target="main">数据库备份/还原</a></li>
							<li><a href="#" target="main">SQL命令行工具</a></li>
							<li><a href="#" target="main">病毒扫描[S]</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
        			<dt>系统设置</dt>
        			<dd>
          				<ul>
							<li><a href="#" target="main">系统基本参数</a></li>
							<li><a href="#" target="main">系统用户管理</a></li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
		<!-- left end -->
		<div class="right">
  			<div class="main">
    			<iframe id="main" name="main" frameborder="0" src="backend/index_body.jsp"></iframe>
  			</div>
		</div>
		<!-- right end -->
	</body>
</html>
