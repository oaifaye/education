<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/WEB-INF/app.tld" prefix="app"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校区查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/front_top.css" />
	<link rel="stylesheet" type="text/css" href="css/front_class_list.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/tabmenu.js"></script>
	

  </head>
  
  <body>
    <%@ include file="../include/front_top.jsp"%>
    <div class="center">
        <div class="h_40">
            <a href="/">首页</a> > 
            <a href="http://www.xueda.com/School/Index.Shtml">学大教育校区查询</a> >
             <a href="http://tianjin.xueda.com/School/Index.Shtml">天津学大教育校区查询</a> > 
            学大教育广东路家教辅导中心
        </div>
        <div class="left">
            <div class="box_1  w_738">
                <h1>
                    <span ><b id="box_4"><s:property value="campusInfo.campusName"/></b></span></h1>
                <ul class="school_1">
                    <span>
                       <div id="KinSlideshows" style="width:329px;">
                          <a><img src="http://file.xueda.com/SchoolImg/pandoraschool.jpg" width="329" height="231" /></a>
                        </div>
                    </span>
                    <strong><s:property value="campusInfo.campusName"/>预约时间：</strong><s:property value="campusInfo.reserveTime"/><br />
                    <strong><s:property value="campusInfo.campusName"/>电话：</strong><s:property value="campusInfo.phone"/><br />
                    <strong><s:property value="campusInfo.campusName"/>地址：</strong><s:property value="campusInfo.address"/><br />
                    <strong><s:property value="campusInfo.campusName"/>交通线路：</strong><s:property value="campusInfo.traffic"/><br />
                </ul>
                <ul class="ckepop">
                    <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
                        <span class="bds_more">分享到：</span> <a class="bds_tsina">新浪微博</a> <a class="bds_tqq">
                            腾讯微博</a> <a class="bds_renren">人人网</a> <a class="bds_kaixin001">开心网</a> <a class="bds_tsohu">
                                搜狐微博</a> <a class="bds_douban">豆瓣网</a> <a class="bds_t163">网易微博</a>
                    </div>
                    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=2188177"></script>
                    <script type="text/javascript" id="bdshell_js"></script>
                    <script type="text/javascript">
                        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours();
                    </script>
                </ul>
            </div>
            <div class="item top_10">
                <div class="tab box_3 w_738">
                    <ul id="tabmenu1">
                        <li class="current"><s:property value="campusInfo.campusName"/>介绍</li>
                        <li class=""><s:property value="campusInfo.campusName"/>师资力量</li>
                    </ul>
                </div>
                <div class="qiehuan" style="display: block;">
                	<div class="items box_33 w_738" >
                    	<ul style="padding: 20px; font-size: 14px;">
							<s:property value="campusInfo.introduction"/>
                    	</ul>
                	</div>
                </div>
                <div class="qiehuan" style="display: none;">
                	<div class="items box_33 w_738" >
                   		<ul style="padding: 20px; font-size: 14px;">
                       		<s:property value="campusInfo.teachers"/>
                    	</ul>
                	</div>
                </div>
            </div>
            <div class="box_3 w_738 top10">
                <ul>
                    <li class="current">校区地图</li>
                </ul>
            </div>
            <div class="box_33 w_738" style="display: block;">
                <ul style="padding: 10px;">
                  <div style="width:718px;height:350px;border:#ccc solid 1px;" id="dituContent"></div>
                </ul>
            </div>
        </div>
        <div class="right">
    <!--在线报名-->
    <script src="http://file.xueda.com/Js/Right.js" type="text/javascript"></script>
    <form>
    <div class="box_2 baoming w_248 ">
        <h1>
            <span style="padding-right: 130px;">在线报名</span></h1>
        <ul>
            <li>选择城市：
                <select name="regCity" id="regCity">
                    <option value="0">- 城 市 -</option>
                </select>
            </li>
            <li>选择校区：
                <select id="regSchool"  name="regSchool">
                    <option value="0">- 学习中心 -</option>
                </select>
            </li>
            <li>所在年级：
                <select name="regClass" id="regClass">
                    <option value="0">- 年级 -</option>
                </select>
            </li>
            <li>补习科目：
                <select name="regSubject" id="regSubject">
                    <option value="0">-科目-</option>
                </select>
            </li>
            <li>家长姓名：
                <input type="text" id="regParentName" name="regParentName" value="" size="10" />
            </li>
            <li>家长电话：
                <input type="text" id="regPhoneNum" name="regPhoneNum" value="" size="15" />
            </li>
            <li class="top_10 bottom_10" id="dashed_bottom">
                <input name="bao_bottom_1" type="button" id="bao_bottom_1" onclick="CheckReg()" value="立即报名" />
                <input name="重填" type="reset" id="bao_bottom_2" value="重填" />
            </li>
            <li class="top_10">请完整输入以上信息，<br />
                点击“<span class="color_1">立即报名</span>”按钮提交，<br />
                我们会进行电话回访！<br />
            </li>
        </ul>
    </div>
    </form>
    <div class="box_2 top10 xueyuan_2 w_248">
        <h1 class="w_213">
            <span style="padding-right: 130px;">明星学员</span><a href="/MingXingXueYuan/">更多>></a></h1>
        <ul>
           <li >
           <a href="http://yangzhou.xueda.com/Student/3341.Shtml">沈云鹏</a>-
           <span class="color_4"><a href="http://yangzhou.xueda.com/School/277.Shtml">望月路学习中心</a></span><br />
           辅导科目： <a title="数学辅导_数学课程_数学补习" target="_blank"  href="http://yangzhou.xueda.com/yiduiyifudao-ShuXue-0-2-1.html"> 数学 </a><br />
           辅导前：<span class="color_1">90.0</span>分 
           辅导后：<span class="color_2">126.0</span>分 
           </li>
           <li >
           <a href="http://yangzhou.xueda.com/Student/3340.Shtml">汤慧</a>-
           <span class="color_4"><a href="http://yangzhou.xueda.com/School/277.Shtml">望月路学习中心</a></span><br />
           辅导科目： <a title="英语辅导_英语课程_英语补习" target="_blank"  href="http://yangzhou.xueda.com/yiduiyifudao-YingYu-0-3-1.html"> 英语 </a><br />
           辅导前：<span class="color_1">110.0</span>分 
           辅导后：<span class="color_2">124.0</span>分 
           </li>
           <li id="none_bottom">
           <a href="http://nanjing.xueda.com/Student/3289.Shtml">蒋新彧</a>-
           <span class="color_4"><a href="http://nanjing.xueda.com/School/63.Shtml">湖南路学习中心</a></span><br />
           辅导科目： <a title="数学辅导_数学课程_数学补习" target="_blank"  href="http://nanjing.xueda.com/yiduiyifudao-ShuXue-0-2-1.html"> 数学 </a><br />
           辅导前：<span class="color_1">70.0</span>分 
           辅导后：<span class="color_2">89.0</span>分 
           </li>

        </ul>
    </div>
    <div class="tel_2">
        <script type="text/javascript" language="javascript">document.write(Get400Phone());</script>
    </div>
    <div class="help top10">
        <ul>
            <a href="http://www.xueda.com/News/50.Shtml">成长苦恼</a> <a href="http://www.xueda.com/News/53.Shtml">紧张焦虑</a> <a href="http://www.xueda.com/News/54.Shtml">目标缺失</a> <a href="http://www.xueda.com/News/55.Shtml">情绪波动</a>
        </ul>
        <ul>
            <a href="http://www.xueda.com/News/56.Shtml">一做就错</a> <a href="http://www.xueda.com/News/57.Shtml">裹足不前</a> <a href="http://www.xueda.com/News/58.Shtml">苦学无效</a> <a href="http://www.xueda.com/News/59.Shtml">缺少思路</a>
        </ul>
        <ul>
            <a href="http://www.xueda.com/News/60.Shtml">基础不牢</a> <a href="http://www.xueda.com/News/61.Shtml">偏科瘸腿</a> <a href="http://www.xueda.com/News/62.Shtml">眼高手低</a> <a href="http://www.xueda.com/News/63.Shtml">知识漏缺</a>
        </ul>
        <ul>
            <a href="http://www.xueda.com/News/64.Shtml">竞赛辅导</a> <a href="http://www.xueda.com/News/65.Shtml">考前冲刺</a> <a href="http://www.xueda.com/News/66.Shtml">名校点睛</a> <a href="http://www.xueda.com/News/67.Shtml">思维训练</a>
        </ul>
    </div>
</div>

        </div>
  </body>
</html>
