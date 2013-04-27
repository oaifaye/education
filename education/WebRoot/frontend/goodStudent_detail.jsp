<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/app.tld" prefix="app"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>明星学员</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front_top.css" />
	<link rel="stylesheet" type="text/css" href="css/front_goodStudent.css" />
	<link rel="stylesheet" type="text/css" href="css/front_class_list.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/tabmenu.js"></script>

  </head>
  
  <body>
    <%@ include file="../include/front_top.jsp"%>
    <div class="center">
        <%@ include file="../include/front_navigation_goodStudent.jsp"%>
        <!--左边内容开始-->
        <div class="left">
            <div class="box_1 w_738">
                <h1>
                    <span><b id="box_5">名星学员</b></span></h1>
                <ul class="class_3">
                    <li style="width:150px;height:200px;">
                        <img src="imgUpload/<s:property value="goodStudent.picName"/>" width="150" height="200" /></li>
                    <li>
                    	<strong class="color_6"><s:property value="goodStudent.studentName"/></strong><br/>
                    	<b>所在年级:</b> <a title="<s:property value="goodStudent.gradeInfo.gradeName"/>" target="_blank"  href="/YiDuiYiFuDao-16-0-1.html"><s:property value="goodStudent.gradeInfo.gradeName"/></a>
                   	 	<br />
                   	 	<b>辅导科目：</b> <a title="<s:property value="goodStudent.courseInfo.courseName"/>" target="_blank" href="/YiDuiYiFuDao-0-4-1.html"><s:property value="goodStudent.courseInfo.courseName"/></a>
                    	<br />
                    	<b>辅导老师：</b><a title="<s:property value="goodStudent.allTeacher.allTeacherName"/>" target="_blank" href="/Teacher/3513.Shtml"><s:property value="goodStudent.allTeacher.allTeacherName"/> </a>
                    	<br />
                    	<b>所在学校：</b><s:property value="goodStudent.allTeacher.studentSchool"/><br />
                    	<b>辅导校区：</b><s:property value="goodStudent.campusInfo.campusName"/><a target="_blank"  href="/School/92.Shtml">【查看校区】</a><br />
                    	<div id="class_4">
                            <b></b>辅导前：<span class="color_1"><s:property value="goodStudent.beforeStudy"/></span>分 辅导后：<span class="color_2"><s:property value="goodStudent.behindStudy"/></span>分
                        </div>
                    </li>
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
                        <li class="current">个性分析</li>
                        <li class="">辅导方向</li>
                    </ul>
                </div>
                <div class="qiehuan" style="display: block;">
                <div class="items box_33 w_738" >
                    <ul style="padding: 20px 40px;">
                    	<s:property value="goodStudent.geXing"/>
                        	
                    </ul>
                </div>
                </div>
                <div class="qiehuan" style="display: none;">
                <div class="items box_33 w_738" >
                    <ul style="padding: 20px 40px;">
                    	<s:property value="goodStudent.fangXiang"/>
                    </ul>
                </div>
                </div>
            </div>
            <div class="box_3 w_738 top10">
                <ul style="float: left; position: relative">
                    <li class="current">辅导老师</li>
                </ul>
            </div>
            <div class="box_33 w_738" style="display: block;">
                <ul class="items teacher_1" style="padding-bottom: 10px;">
                    <span>
                        <a title="天津家教_孟令予 老师" target="_blank" href="/Teacher/3513.Shtml"><img alt="孟令予 老师" src="http://file.xueda.com/Teacher/2012717141655528_a1fc9c42-0b1c-4076-99b0-44966ee22965.jpg" width="167" height="204" /></a>
                    </span><strong class="color_6">孟令予  </strong>
                    <br />
                    <b>辅导年级：</b> <a title="初中辅导_初中课程" target="_blank"  href="/YiDuiYiFuDao-16-0-1.html"> 初中 </a><br />
                    <b>辅导课目：</b> <a title="物理辅导_物理一对一辅导" target="_blank" href="/YiDuiYiFuDao-0-4-1.html">物理</a><br />
                    <b>学习中心：</b>-<a  href="/School/92.Shtml">【天大学习中心】</a><br />
                    <b>教学理念：</b>没有教不会的学生，我会用心、用脑，为每一位学生找到适合的方法，成功将属于每一个孩子！<br />
                    <a class="top10" id="zixun" href="javascript:;" onclick="Open()">在线咨询</a>
                    <a class="top10" id="baoming" href="#Student">立即报名</a>
                </ul>
            </div>
            <!--在线报名-->
            <div class="box_3 w_738 top10">
                <ul style="float: left; position: relative">
                    <li class="current"><a name="Student">在线报名</a></li>
                </ul>
                <span style="line-height: 35px; float: right;">带 <span class="color_7">* </span>的为必填项&nbsp;&nbsp;</span>
            </div>
            <div class="box_33 w_738" style="display: block;">
                <ul style="padding: 10px;">
                    <div class="items">
                        <form action="http://my.xueda.com/Customer/ApplyNoLogin" method="post">
                        <input id="selectParent" name="selectParent" type="hidden" value="0" />
                        <input id="selectStudent" name="selectStudent" type="hidden" value="0" />
                        <input id="parentUserID" name="parentUserID" type="hidden" value="0" />
                        <input id="stuUserID" name="stuUserID" type="hidden" value="0" />
                        <table width="100%" border="0" cellpadding="3" cellspacing="3">
                            <tr>
                                <td width="19%" align="right" class="color_4">
                                    <span class="color_7">* </span>学习方式：
                                </td>
                                <td width="77%" class="r">
                                    <input id="chbYiduiyi" name="studyWay" type="checkbox" value="1" /><input name="studyWay"
                                        type="hidden" value="false" />一对一辅导
                                    <input id="chbPeixunban" name="studyWay" type="checkbox" value="3" /><input name="studyWay"
                                        type="hidden" value="false" />培训班
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    <span class="color_7">* </span>选择校区：
                                </td>
                                <td class="r">
                                    <select id="ApplyCity" name="ApplyCity">
                                        <option value="0" selected="selected">- 城 市 -</option>
                                    </select>
                                    <select id="ApplySchool" name="ApplySchool">
                                        <option value="0">- 学习中心 -</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    <span class="color_7">* </span>学生姓名：
                                </td>
                                <td class="r">
                                    <input id="stuName" name="stuName" type="text" value="" class="apply_inp" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    学生年级：
                                </td>
                                <td>
                                    <select id="ApplyClass" name="ApplyClass">
                                        <option value="0">- 年 级 -</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    学生成绩：
                                </td>
                                <td class="r">
                                    <input id="youxiu" name="SchoolGrade" type="radio" value="1" />
                                    优秀 &nbsp;&nbsp;
                                    <input id="lianghao" name="SchoolGrade" type="radio" value="2" />
                                    良好&nbsp;&nbsp;
                                    <input id="yiban" name="SchoolGrade" type="radio" value="3" />
                                    一般&nbsp;&nbsp;
                                    <input id="jiaocha" name="SchoolGrade" type="radio" value="4" />
                                    较差
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    班级排名：
                                </td>
                                <td class="r">
                                    <input id="lingtou" name="classPosition" type="radio" value="1" />
                                    领头 &nbsp;&nbsp;
                                    <input id="shangyou" name="classPosition" type="radio" value="2" />
                                    上游&nbsp;&nbsp;
                                    <input id="zhongyou" name="classPosition" type="radio" value="3" />
                                    中游&nbsp;&nbsp;
                                    <input id="xiayou" name="classPosition" type="radio" value="4" />
                                    下游
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    薄弱科目：
                                </td>
                                <td class="r">
                                    <input id="weekSubject" name="weekSubject" type="checkbox" value="1" /><input name="weekSubject"
                                        type="hidden" value="false" />语文 &nbsp;&nbsp;
                                    <input id="weekSubject" name="weekSubject" type="checkbox" value="2" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    数学&nbsp;&nbsp;
                                    <input id="weekSubject" name="weekSubject" type="checkbox" value="3" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    英语&nbsp;&nbsp;
                                    <input id="weekSubject" name="weekSubject" type="checkbox" value="13" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    作文&nbsp;&nbsp;
                                    <input id="weekSubject" name="weekSubject" type="checkbox" value="12" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    化学&nbsp;&nbsp;
                                    <input id="Checkbox1" name="weekSubject" type="checkbox" value="4" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    物理 &nbsp;&nbsp;
                                    <input id="Checkbox2" name="weekSubject" type="checkbox" value="6" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    历史
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                </td>
                                <td class="r">
                                    <input id="Checkbox3" name="weekSubject" type="checkbox" value="15" /><input name="weekSubject"
                                        type="hidden" value="false" />政治&nbsp;&nbsp;
                                    <input id="Checkbox4" name="weekSubject" type="checkbox" value="7" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    生物&nbsp;&nbsp;
                                    <input id="Checkbox5" name="weekSubject" type="checkbox" value="14" /><input name="weekSubject"
                                        type="hidden" value="false" />
                                    地理
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    希望提高：
                                </td>
                                <td class="r">
                                    <input id="advance" name="advance" type="checkbox" value="1" /><input name="advance"
                                        type="hidden" value="false" />
                                    学科能力&nbsp;&nbsp;
                                    <input id="advance" name="advance" type="checkbox" value="2" /><input name="advance"
                                        type="hidden" value="false" />
                                    学习方法&nbsp;&nbsp;
                                    <input id="advance" name="advance" type="checkbox" value="3" /><input name="advance"
                                        type="hidden" value="false" />
                                    学习态度&nbsp;&nbsp;
                                    <input id="advance" name="advance" type="checkbox" value="4" /><input name="advance"
                                        type="hidden" value="false" />
                                    时间管理
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    <span class="color_7">* </span>家长姓名：
                                </td>
                                <td class="r">
                                    <input class="apply_inpW" id="parentName" name="parentName" type="text" value="" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    <span class="color_7">* </span>电话号码：
                                </td>
                                <td class="r">
                                    <input id="phoneNum" name="phoneNum" type="text" value="" class="apply_inpW" />
                                    &nbsp;&nbsp;
                                    <input id="shouji" name="phoneType" type="radio" value="1" />手机&nbsp;&nbsp;
                                    <input id="jiating" name="phoneType" type="radio" value="2" />家庭&nbsp;&nbsp;
                                    <input id="gongzuo" name="phoneType" type="radio" value="3" />工作
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4">
                                    <span class="color_7">* </span>电子邮箱：
                                </td>
                                <td class="r">
                                    <input class="apply_inpW" maxlength="50" id="Email" name="Email" 
                                        type="text" value="" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="color_4" valign="top">
                                    <span class="color_7">* </span>其它说明：
                                </td>
                                <td class="r">
                                    <textarea class="question" cols="50" id="remark" name="remark" rows="5"></textarea>
                                    <br />
                                    还可以输入<span id="remain"></span>,总字数为2000
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td width="4%" class="r">
                                    <input name="立即报名" type="submit" id="bao_bottom_1" onclick=" "
                                        value="立即报名" />
                                </td>
                            </tr>
                        </table>
                        </form>
                    </div>
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
        <!-- 明星学员 -->
        <app:DisplayTag_GoodStudentList />
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
   <div class="center">
    <div class="banner">
        <script type="text/javascript">InitAdv(11)</script>
        </div>
    <div class="box_2 top10 w998">
        <h1 class="w_998">
            <span>校区查询</span></h1>
        <div class="yx_city">
            <div class="clearfix">
                <div class="tabct">
                    <ul id="tabboxct">
                        <li onclick="tabct(this,0)" class="current">华北</li>
                        <li onclick="tabct(this,1)" class="">东北</li>
                        <li onclick="tabct(this,2)" class="">华东</li>
                        <li onclick="tabct(this,3)" class="">华南</li>
                        <li onclick="tabct(this,4)" class="">华中</li>
                        <li onclick="tabct(this,5)" class="">西北</li>
                        <li onclick="tabct(this,6)" class="">西南</li>
                    </ul>
                </div>
                <div class="schools clearfix">
                    <div class="yx_sec" id="tabboxct_0" style="display: block;">
                        <ul id="tabboxc1">
                            <li onclick="tabc1(this,0)" class="on">北京</li>
                            
                            <li onclick="tabc1(this,1)" >青岛</li>
                            
                            <li onclick="tabc1(this,2)" >天津</li>
                            
                            <li onclick="tabc1(this,3)" >济南</li>
                            
                            <li onclick="tabc1(this,4)" >呼和浩特</li>
                            
                            <li onclick="tabc1(this,5)" >唐山</li>
                            
                            <li onclick="tabc1(this,6)" >石家庄</li>
                            
                            <li onclick="tabc1(this,7)" >太原</li>
                            
                            <li onclick="tabc1(this,8)" >包头</li>
                            
                            <li onclick="tabc1(this,9)" >保定</li>
                            
                            <li onclick="tabc1(this,10)" >东营</li>
                            
                            <li onclick="tabc1(this,11)" >烟台</li>
                            
                            <li onclick="tabc1(this,12)" >廊坊</li>
                            
                            <li onclick="tabc1(this,13)" >晋中</li>
                            
                            <li onclick="tabc1(this,14)" >大同</li>
                            

                        </ul>
                        <div id="tabboxc1_0">
                        
                        <ul class="three">
                        
                        <li><b>海淀区</b> <span>
                        <a href="http://beijing.xueda.com/School/73.Shtml" target="_blank">北师大学习中心</a>
                        <a href="http://beijing.xueda.com/School/74.Shtml" target="_blank">航天桥学习中心</a>
                        <a href="http://beijing.xueda.com/School/75.Shtml" target="_blank">玉泉路学习中心</a>
                        <a href="http://beijing.xueda.com/School/76.Shtml" target="_blank">人大学习中心</a>
                        <a href="http://beijing.xueda.com/School/77.Shtml" target="_blank">北大学习中心</a>
                        <a href="http://beijing.xueda.com/School/78.Shtml" target="_blank">公主坟学习中心</a>
                        <a href="http://beijing.xueda.com/School/159.Shtml" target="_blank">学院路学习中心</a>
                        <a href="http://beijing.xueda.com/School/178.Shtml" target="_blank">远大路学习中心</a>
                        <a href="http://beijing.xueda.com/School/195.Shtml" target="_blank">上地学习中心</a>
                        </span>
                        </li>
                        <li><b>东城区</b> <span>
                        <a href="http://beijing.xueda.com/School/72.Shtml" target="_blank">东直门学习中心</a>
                        <a href="http://beijing.xueda.com/School/79.Shtml" target="_blank">崇文门学习中心</a>
                        <a href="http://beijing.xueda.com/School/236.Shtml" target="_blank">交道口菁英学堂</a>
                        <a href="http://beijing.xueda.com/School/327.Shtml" target="_blank">夕照寺学习中心</a>
                        <a href="http://beijing.xueda.com/School/332.Shtml" target="_blank">交道口学习中心</a>
                        </span>
                        </li>
                        <li><b>朝阳区</b> <span>
                        <a href="http://beijing.xueda.com/School/81.Shtml" target="_blank">亚运村学习中心</a>
                        <a href="http://beijing.xueda.com/School/82.Shtml" target="_blank">朝阳路学习中心</a>
                        <a href="http://beijing.xueda.com/School/83.Shtml" target="_blank">和平里学习中心</a>
                        <a href="http://beijing.xueda.com/School/84.Shtml" target="_blank">劲松学习中心</a>
                        <a href="http://beijing.xueda.com/School/85.Shtml" target="_blank">三元桥学习中心</a>
                        <a href="http://beijing.xueda.com/School/160.Shtml" target="_blank">望京学习中心</a>
                        <a href="http://beijing.xueda.com/School/328.Shtml" target="_blank">团结湖学习中心</a>
                        </span>
                        </li>
                        <li><b>西城区</b> <span>
                        <a href="http://beijing.xueda.com/School/71.Shtml" target="_blank">阜成门学习中心</a>
                        <a href="http://beijing.xueda.com/School/80.Shtml" target="_blank">宣武门学习中心</a>
                        <a href="http://beijing.xueda.com/School/149.Shtml" target="_blank">德胜门菁英学堂</a>
                        <a href="http://beijing.xueda.com/School/194.Shtml" target="_blank">四中学习中心</a>
                        <a href="http://beijing.xueda.com/School/235.Shtml" target="_blank">西直门菁英学堂</a>
                        <a href="http://beijing.xueda.com/School/325.Shtml" target="_blank">虎坊路校区</a>
                        <a href="http://beijing.xueda.com/School/326.Shtml" target="_blank">西便门校区</a>
                        </span>
                        </li>
                        <li><b>丰台区</b> <span>
                        <a href="http://beijing.xueda.com/School/86.Shtml" target="_blank">方庄学习中心</a>
                        <a href="http://beijing.xueda.com/School/335.Shtml" target="_blank">马家堡校区</a>
                        </span>
                        </li>
                        <li><b>通州区</b> <span>
                        <a href="http://beijing.xueda.com/School/87.Shtml" target="_blank">通州学习中心</a>
                        </span>
                        </li>
                        <li><b>石景山区</b> <span>
                        <a href="http://beijing.xueda.com/School/170.Shtml" target="_blank">石景山学习中心</a>
                        </span>
                        </li>
                        <li><b>大兴区</b> <span>
                        <a href="http://beijing.xueda.com/School/350.Shtml" target="_blank">大兴学习中心</a>
                        </span>
                        </li>
                        <li><b>顺义区</b> <span>
                        <a href="http://beijing.xueda.com/School/329.Shtml" target="_blank">顺义国际学习中心</a>
                        <a href="http://beijing.xueda.com/School/330.Shtml" target="_blank">怡馨家园学习中心</a>
                        </span>
                        </li>
                        <li><b>昌平区</b> <span>
                        <a href="http://beijing.xueda.com/School/331.Shtml" target="_blank">昌平学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc1_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://qingdao.xueda.com/School/27.Shtml"  target="_blank">辽宁路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://qingdao.xueda.com/School/28.Shtml"  target="_blank">宁夏路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://qingdao.xueda.com/School/29.Shtml"  target="_blank">香港路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://qingdao.xueda.com/School/30.Shtml"  target="_blank">李村学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://qingdao.xueda.com/School/320.Shtml"  target="_blank">黄岛开发区学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/88.Shtml"  target="_blank">黄河道学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/89.Shtml"  target="_blank">河东学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/90.Shtml"  target="_blank">友谊路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/91.Shtml"  target="_blank">红桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/92.Shtml"  target="_blank">天大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/93.Shtml"  target="_blank">塘沽学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/145.Shtml"  target="_blank">小树林学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/172.Shtml"  target="_blank">迎水道学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/207.Shtml"  target="_blank">大港生活区学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/244.Shtml"  target="_blank">一中学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/288.Shtml"  target="_blank">泰达千百汇学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/289.Shtml"  target="_blank">北辰学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/290.Shtml"  target="_blank">西北角学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/291.Shtml"  target="_blank">油田学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/292.Shtml"  target="_blank">东丽学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/314.Shtml"  target="_blank">广东路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/317.Shtml"  target="_blank">白堤路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tianjin.xueda.com/School/318.Shtml"  target="_blank">津南学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://jinan.xueda.com/School/129.Shtml"  target="_blank">山师学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jinan.xueda.com/School/138.Shtml"  target="_blank">杆石桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jinan.xueda.com/School/176.Shtml"  target="_blank">燕山学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jinan.xueda.com/School/226.Shtml"  target="_blank">八一学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jinan.xueda.com/School/227.Shtml"  target="_blank">舜耕学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jinan.xueda.com/School/228.Shtml"  target="_blank">洪楼学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/36.Shtml"  target="_blank">东达学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/238.Shtml"  target="_blank">万达学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/239.Shtml"  target="_blank">明泽学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/240.Shtml"  target="_blank">将军衙署学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/272.Shtml"  target="_blank">桥华学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/286.Shtml"  target="_blank">长安金座学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huhehaote.xueda.com/School/339.Shtml"  target="_blank">烟厂华联学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://tangshan.xueda.com/School/119.Shtml"  target="_blank">世博学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://tangshan.xueda.com/School/262.Shtml"  target="_blank">凤凰园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://shijiazhuang.xueda.com/School/94.Shtml"  target="_blank">裕华学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shijiazhuang.xueda.com/School/95.Shtml"  target="_blank">和平路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shijiazhuang.xueda.com/School/147.Shtml"  target="_blank">中华学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/133.Shtml"  target="_blank">长风学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/134.Shtml"  target="_blank">桃南学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/139.Shtml"  target="_blank">理工大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/142.Shtml"  target="_blank">太原青年路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/146.Shtml"  target="_blank">漪汾学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taiyuan.xueda.com/School/287.Shtml"  target="_blank">中高考补习学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://baotou.xueda.com/School/156.Shtml"  target="_blank">包百学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://baotou.xueda.com/School/246.Shtml"  target="_blank">包头万达学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://baotou.xueda.com/School/373.Shtml"  target="_blank">包头大世界学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://baoding.xueda.com/School/175.Shtml"  target="_blank">中央峰景学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://baoding.xueda.com/School/259.Shtml"  target="_blank">山水华庭学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_10" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://dongying.xueda.com/School/254.Shtml"  target="_blank">东营西四路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_11" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yantai.xueda.com/School/185.Shtml"  target="_blank">南大街学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://yantai.xueda.com/School/187.Shtml"  target="_blank">莱山学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_12" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://langfang.xueda.com/School/191.Shtml"  target="_blank">廊坊学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_13" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://jinzhong.xueda.com/School/209.Shtml"  target="_blank">榆次学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_14" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://datong.xueda.com/School/279.Shtml"  target="_blank">同煤学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_1" style="display: none;">
                        <ul id="tabboxc2">
                            <li onclick="tabc2(this,0)" class="on">长春</li>
                            
                            <li onclick="tabc2(this,1)" >沈阳</li>
                            
                            <li onclick="tabc2(this,2)" >大连</li>
                            
                            <li onclick="tabc2(this,3)" >哈尔滨</li>
                            
                            <li onclick="tabc2(this,4)" >吉林</li>
                            
                            <li onclick="tabc2(this,5)" >大庆</li>
                            
                            <li onclick="tabc2(this,6)" >抚顺</li>
                            
                            <li onclick="tabc2(this,7)" >鞍山</li>
                            
                            <li onclick="tabc2(this,8)" >阜新</li>
                            
                            <li onclick="tabc2(this,9)" >齐齐哈尔</li>
                            

                        </ul>
                        <div id="tabboxc2_0">
                        
                        <dl>
                        <dd>
                        <a href="http://changchun.xueda.com/School/45.Shtml"  target="_blank">同志街学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/46.Shtml"  target="_blank">西安大路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/47.Shtml"  target="_blank">汽车厂学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/48.Shtml"  target="_blank">经济开发区学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/112.Shtml"  target="_blank">红旗街学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/346.Shtml"  target="_blank">长春人民广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changchun.xueda.com/School/347.Shtml"  target="_blank">长春佳园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/39.Shtml"  target="_blank">皇姑学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/40.Shtml"  target="_blank">和平学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/41.Shtml"  target="_blank">沈河学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/42.Shtml"  target="_blank">铁西学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/213.Shtml"  target="_blank">大东学习中心(筹建中)</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/300.Shtml"  target="_blank">铁西兴华学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://shenyang.xueda.com/School/301.Shtml"  target="_blank">长白学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://dalian.xueda.com/School/2.Shtml"  target="_blank">中山学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/3.Shtml"  target="_blank">黑石礁学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/232.Shtml"  target="_blank">华南学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/297.Shtml"  target="_blank">西岗学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/298.Shtml"  target="_blank">马栏广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/337.Shtml"  target="_blank">三八广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dalian.xueda.com/School/351.Shtml"  target="_blank">西安路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://haerbin.xueda.com/School/12.Shtml"  target="_blank">南岗学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://haerbin.xueda.com/School/13.Shtml"  target="_blank">开发区学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://haerbin.xueda.com/School/14.Shtml"  target="_blank">道里区学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://haerbin.xueda.com/School/281.Shtml"  target="_blank">和兴学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://haerbin.xueda.com/School/283.Shtml"  target="_blank">哈尔滨菁英学堂</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://jilin.xueda.com/School/50.Shtml"  target="_blank">吉林市学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://jilin.xueda.com/School/349.Shtml"  target="_blank">化工学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://daqing.xueda.com/School/174.Shtml"  target="_blank">奥林学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://daqing.xueda.com/School/344.Shtml"  target="_blank">奥林学习中心景园教学点</a>
                        </dd>
                        <dd>
                        <a href="http://daqing.xueda.com/School/345.Shtml"  target="_blank">大庆奥林学习中心新村教学点</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://fushun.xueda.com/School/214.Shtml"  target="_blank">顺城学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://anshan.xueda.com/School/215.Shtml"  target="_blank">铁东学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://fuxin.xueda.com/School/260.Shtml"  target="_blank">阜新解放路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://qiqihaer.xueda.com/School/282.Shtml"  target="_blank">卜奎学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_2" style="display: none;">
                        <ul id="tabboxc3">
                            <li onclick="tabc3(this,0)" class="on">杭州</li>
                            
                            <li onclick="tabc3(this,1)" >南京</li>
                            
                            <li onclick="tabc3(this,2)" >上海</li>
                            
                            <li onclick="tabc3(this,3)" >合肥</li>
                            
                            <li onclick="tabc3(this,4)" >苏州</li>
                            
                            <li onclick="tabc3(this,5)" >温州</li>
                            
                            <li onclick="tabc3(this,6)" >南通</li>
                            
                            <li onclick="tabc3(this,7)" >常州</li>
                            
                            <li onclick="tabc3(this,8)" >宁波</li>
                            
                            <li onclick="tabc3(this,9)" >无锡</li>
                            
                            <li onclick="tabc3(this,10)" >扬州</li>
                            
                            <li onclick="tabc3(this,11)" >马鞍山</li>
                            
                            <li onclick="tabc3(this,12)" >台州</li>
                            
                            <li onclick="tabc3(this,13)" >绍兴</li>
                            
                            <li onclick="tabc3(this,14)" >镇江</li>
                            
                            <li onclick="tabc3(this,15)" >泰州</li>
                            
                            <li onclick="tabc3(this,16)" >宜兴</li>
                            
                            <li onclick="tabc3(this,17)" >芜湖</li>
                            
                            <li onclick="tabc3(this,18)" >盐城</li>
                            
                            <li onclick="tabc3(this,19)" >金华</li>
                            

                        </ul>
                        <div id="tabboxc3_0">
                        
                        <dl>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/53.Shtml"  target="_blank">浙大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/54.Shtml"  target="_blank">解放路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/55.Shtml"  target="_blank">文一学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/56.Shtml"  target="_blank">萧山学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/162.Shtml"  target="_blank">新世纪广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/182.Shtml"  target="_blank">朝晖学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/243.Shtml"  target="_blank">拱宸桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/265.Shtml"  target="_blank">富阳国贸学习中心(筹建中)</a>
                        </dd>
                        <dd>
                        <a href="http://hangzhou.xueda.com/School/293.Shtml"  target="_blank">滨江学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/60.Shtml"  target="_blank">南大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/61.Shtml"  target="_blank">城西学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/62.Shtml"  target="_blank">瑞金路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/63.Shtml"  target="_blank">湖南路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/154.Shtml"  target="_blank">江宁学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/237.Shtml"  target="_blank">大厂学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/275.Shtml"  target="_blank">北京东路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanjing.xueda.com/School/278.Shtml"  target="_blank">张府园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_2" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>徐汇区</b> <span>
                        <a href="http://shanghai.xueda.com/School/24.Shtml" target="_blank">上海体育馆学习中心</a>
                        <a href="http://shanghai.xueda.com/School/294.Shtml" target="_blank">上中路学习中心</a>
                        <a href="http://shanghai.xueda.com/School/307.Shtml" target="_blank">田林路学习中心</a>
                        </span>
                        </li>
                        <li><b>黄浦区</b> <span>
                        <a href="http://shanghai.xueda.com/School/23.Shtml" target="_blank">人民广场学习中心</a>
                        </span>
                        </li>
                        <li><b>虹口区</b> <span>
                        <a href="http://shanghai.xueda.com/School/15.Shtml" target="_blank">虹口足球场学习中心</a>
                        <a href="http://shanghai.xueda.com/School/22.Shtml" target="_blank">和平公园学习中心</a>
                        <a href="http://shanghai.xueda.com/School/295.Shtml" target="_blank">四川北路学习中心</a>
                        </span>
                        </li>
                        <li><b>浦东新区</b> <span>
                        <a href="http://shanghai.xueda.com/School/21.Shtml" target="_blank">陆家嘴学习中心</a>
                        <a href="http://shanghai.xueda.com/School/165.Shtml" target="_blank">金桥学习中心</a>
                        <a href="http://shanghai.xueda.com/School/205.Shtml" target="_blank">耀华路学习中心</a>
                        <a href="http://shanghai.xueda.com/School/225.Shtml" target="_blank">周浦学习中心</a>
                        <a href="http://shanghai.xueda.com/School/252.Shtml" target="_blank">高桥学习中心</a>
                        <a href="http://shanghai.xueda.com/School/305.Shtml" target="_blank">羽山路学习中心</a>
                        <a href="http://shanghai.xueda.com/School/306.Shtml" target="_blank">惠南镇学习中心</a>
                        <a href="http://shanghai.xueda.com/School/342.Shtml" target="_blank">联洋花木学习中心</a>
                        <a href="http://shanghai.xueda.com/School/343.Shtml" target="_blank">川沙学习中心</a>
                        </span>
                        </li>
                        <li><b>杨浦区</b> <span>
                        <a href="http://shanghai.xueda.com/School/20.Shtml" target="_blank">五角场学习中心</a>
                        <a href="http://shanghai.xueda.com/School/253.Shtml" target="_blank">杨浦学习中心</a>
                        </span>
                        </li>
                        <li><b>长宁区</b> <span>
                        <a href="http://shanghai.xueda.com/School/19.Shtml" target="_blank">中山公园学习中心</a>
                        <a href="http://shanghai.xueda.com/School/258.Shtml" target="_blank">娄山关路学习中心</a>
                        <a href="http://shanghai.xueda.com/School/296.Shtml" target="_blank">淞虹路学习中心</a>
                        </span>
                        </li>
                        <li><b>闵行区</b> <span>
                        <a href="http://shanghai.xueda.com/School/16.Shtml" target="_blank">虹桥镇学习中心</a>
                        <a href="http://shanghai.xueda.com/School/206.Shtml" target="_blank">莘庄学习中心</a>
                        <a href="http://shanghai.xueda.com/School/284.Shtml" target="_blank">春申路学习中心</a>
                        <a href="http://shanghai.xueda.com/School/285.Shtml" target="_blank">七宝学习中心</a>
                        </span>
                        </li>
                        <li><b>闸北区</b> <span>
                        <a href="http://shanghai.xueda.com/School/18.Shtml" target="_blank">彭浦新村学习中心</a>
                        </span>
                        </li>
                        <li><b>卢湾区</b> <span>
                        <a href="http://shanghai.xueda.com/School/17.Shtml" target="_blank">卢湾中学学习中心</a>
                        </span>
                        </li>
                        <li><b>普陀区</b> <span>
                        <a href="http://shanghai.xueda.com/School/163.Shtml" target="_blank">普陀学习中心</a>
                        </span>
                        </li>
                        <li><b>宝山区</b> <span>
                        <a href="http://shanghai.xueda.com/School/164.Shtml" target="_blank">牡丹江路学习中心</a>
                        </span>
                        </li>
                        <li><b>嘉定区</b> <span>
                        <a href="http://shanghai.xueda.com/School/220.Shtml" target="_blank">嘉定学习中心</a>
                        </span>
                        </li>
                        <li><b>金山区</b> <span>
                        <a href="http://shanghai.xueda.com/School/242.Shtml" target="_blank">上海金山学习中心</a>
                        </span>
                        </li>
                        <li><b>静安区</b> <span>
                        <a href="http://shanghai.xueda.com/School/270.Shtml" target="_blank">陕西北路学习中心</a>
                        </span>
                        </li>
                        <li><b>松江区</b> <span>
                        <a href="http://shanghai.xueda.com/School/341.Shtml" target="_blank">松江学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc3_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://hefei.xueda.com/School/96.Shtml"  target="_blank">三孝口学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hefei.xueda.com/School/97.Shtml"  target="_blank">工大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hefei.xueda.com/School/98.Shtml"  target="_blank">元一学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://hefei.xueda.com/School/152.Shtml"  target="_blank">庐阳学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_4" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>金阊区</b> <span>
                        <a href="http://suzhou.xueda.com/School/64.Shtml" target="_blank">金阊学习中心</a>
                        </span>
                        </li>
                        <li><b>工业园区</b> <span>
                        <a href="http://suzhou.xueda.com/School/144.Shtml" target="_blank">工业园学习中心</a>
                        <a href="http://suzhou.xueda.com/School/157.Shtml" target="_blank">科文学习中心</a>
                        </span>
                        </li>
                        <li><b>高新区</b> <span>
                        <a href="http://suzhou.xueda.com/School/65.Shtml" target="_blank">新区学习中心</a>
                        </span>
                        </li>
                        <li><b>吴中区</b> <span>
                        <a href="http://suzhou.xueda.com/School/192.Shtml" target="_blank">吴中学习中心</a>
                        </span>
                        </li>
                        <li><b>沧浪区</b> <span>
                        <a href="http://suzhou.xueda.com/School/193.Shtml" target="_blank">沧浪学习中心</a>
                        </span>
                        </li>
                        <li><b>昆山市</b> <span>
                        <a href="http://suzhou.xueda.com/School/66.Shtml" target="_blank">昆山学习中心</a>
                        </span>
                        </li>
                        <li><b>常熟市</b> <span>
                        <a href="http://suzhou.xueda.com/School/67.Shtml" target="_blank">常熟学习中心</a>
                        </span>
                        </li>
                        <li><b>张家港市</b> <span>
                        <a href="http://suzhou.xueda.com/School/68.Shtml" target="_blank">张家港学习中心</a>
                        </span>
                        </li>
                        <li><b>太仓市</b> <span>
                        <a href="http://suzhou.xueda.com/School/69.Shtml" target="_blank">太仓学习中心</a>
                        </span>
                        </li>
                        <li><b>吴江市</b> <span>
                        <a href="http://suzhou.xueda.com/School/70.Shtml" target="_blank">吴江学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc3_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/135.Shtml"  target="_blank">松台广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/202.Shtml"  target="_blank">时代广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/203.Shtml"  target="_blank">瑞安广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/299.Shtml"  target="_blank">鹿城路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/315.Shtml"  target="_blank">瑞安塘下学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wenzhou.xueda.com/School/316.Shtml"  target="_blank">新城学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://nantong.xueda.com/School/179.Shtml"  target="_blank">通中学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nantong.xueda.com/School/245.Shtml"  target="_blank">通海学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nantong.xueda.com/School/358.Shtml"  target="_blank">通靖学习中心（教学点）</a>
                        </dd>
                        <dd>
                        <a href="http://nantong.xueda.com/School/359.Shtml"  target="_blank">通淮学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nantong.xueda.com/School/360.Shtml"  target="_blank">通安学习中心（教学点）</a>
                        </dd>
                        <dd>
                        <a href="http://nantong.xueda.com/School/361.Shtml"  target="_blank">通沙学习中心（教学点）</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://changzhou.xueda.com/School/120.Shtml"  target="_blank">文化宫学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changzhou.xueda.com/School/171.Shtml"  target="_blank">湖塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changzhou.xueda.com/School/276.Shtml"  target="_blank">新北万达学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/130.Shtml"  target="_blank">江东学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/131.Shtml"  target="_blank">海曙学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/132.Shtml"  target="_blank">青少年宫学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/217.Shtml"  target="_blank">宁波银行学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/218.Shtml"  target="_blank">余姚四明学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/219.Shtml"  target="_blank">观海卫学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/250.Shtml"  target="_blank">宁波万达广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/319.Shtml"  target="_blank">双龙江南学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://ningbo.xueda.com/School/338.Shtml"  target="_blank">余姚舜江学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://wuxi.xueda.com/School/25.Shtml"  target="_blank">锡中学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuxi.xueda.com/School/183.Shtml"  target="_blank">锡滨学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuxi.xueda.com/School/264.Shtml"  target="_blank">锡宜学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuxi.xueda.com/School/312.Shtml"  target="_blank">锡南学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_10" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yangzhou.xueda.com/School/198.Shtml"  target="_blank">文昌阁学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://yangzhou.xueda.com/School/277.Shtml"  target="_blank">望月路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_11" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://maanshan.xueda.com/School/210.Shtml"  target="_blank">花山学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_12" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://taizhou.xueda.com/School/216.Shtml"  target="_blank">椒江凤凰学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://taizhou.xueda.com/School/311.Shtml"  target="_blank">温岭中华路校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_13" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://shaoxing.xueda.com/School/57.Shtml"  target="_blank">江南世家学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_14" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://zhenjiang.xueda.com/School/255.Shtml"  target="_blank">通润学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_15" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://taizhou2.xueda.com/School/256.Shtml"  target="_blank">通泰学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_16" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yixing.xueda.com/School/355.Shtml"  target="_blank">锡宜学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_17" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://wuhu.xueda.com/School/266.Shtml"  target="_blank">镜湖学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_18" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yancheng.xueda.com/School/269.Shtml"  target="_blank">通盐学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_19" style="display: none"   >
                        
                        <dl>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_3" style="display: none;">
                        <ul id="tabboxc4">
                            <li onclick="tabc4(this,0)" class="on">广州</li>
                            
                            <li onclick="tabc4(this,1)" >南昌</li>
                            
                            <li onclick="tabc4(this,2)" >深圳</li>
                            
                            <li onclick="tabc4(this,3)" >福州</li>
                            
                            <li onclick="tabc4(this,4)" >南宁</li>
                            
                            <li onclick="tabc4(this,5)" >东莞</li>
                            
                            <li onclick="tabc4(this,6)" >佛山</li>
                            
                            <li onclick="tabc4(this,7)" >惠州</li>
                            
                            <li onclick="tabc4(this,8)" >厦门</li>
                            

                        </ul>
                        <div id="tabboxc4_0">
                        
                        <ul class="three">
                        
                        <li><b>天河区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/103.Shtml" target="_blank">天河学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/212.Shtml" target="_blank">燕岭学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/303.Shtml" target="_blank">东圃学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/304.Shtml" target="_blank">珠江新城学习中心</a>
                        </span>
                        </li>
                        <li><b>越秀区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/108.Shtml" target="_blank">五羊新城学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/110.Shtml" target="_blank">越秀学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/211.Shtml" target="_blank">文德路学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/321.Shtml" target="_blank">黄花岗学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/322.Shtml" target="_blank">环市东学习中心</a>
                        </span>
                        </li>
                        <li><b>海珠区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/111.Shtml" target="_blank">宝岗学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/143.Shtml" target="_blank">客村学习中心</a>
                        </span>
                        </li>
                        <li><b>荔湾区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/105.Shtml" target="_blank">荔湾学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/109.Shtml" target="_blank">西村学习中心</a>
                        </span>
                        </li>
                        <li><b>番禺区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/106.Shtml" target="_blank">番禺学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/107.Shtml" target="_blank">洛溪学习中心</a>
                        </span>
                        </li>
                        <li><b>黄浦区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/104.Shtml" target="_blank">黄埔学习中心</a>
                        </span>
                        </li>
                        <li><b>白云区</b> <span>
                        <a href="http://guangzhou.xueda.com/School/102.Shtml" target="_blank">白云学习中心</a>
                        <a href="http://guangzhou.xueda.com/School/188.Shtml" target="_blank">同和学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc4_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/113.Shtml"  target="_blank">孺子路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/114.Shtml"  target="_blank">师大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/115.Shtml"  target="_blank">蓝天碧水学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/161.Shtml"  target="_blank">红谷滩学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/271.Shtml"  target="_blank">上海北路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanchang.xueda.com/School/371.Shtml"  target="_blank">坛子口学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_2" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>罗湖区</b> <span>
                        <a href="http://shenzhen.xueda.com/School/32.Shtml" target="_blank">罗湖书城学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/33.Shtml" target="_blank">洪湖学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/267.Shtml" target="_blank">东乐学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/310.Shtml" target="_blank">鸿翔学习中心</a>
                        </span>
                        </li>
                        <li><b>福田区</b> <span>
                        <a href="http://shenzhen.xueda.com/School/31.Shtml" target="_blank">景田学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/189.Shtml" target="_blank">百花学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/197.Shtml" target="_blank">香蜜湖学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/309.Shtml" target="_blank">皇岗学习中心</a>
                        </span>
                        </li>
                        <li><b>南山区</b> <span>
                        <a href="http://shenzhen.xueda.com/School/35.Shtml" target="_blank">南山书城学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/173.Shtml" target="_blank">蛇口学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/336.Shtml" target="_blank">后海学习中心</a>
                        </span>
                        </li>
                        <li><b>宝安区</b> <span>
                        <a href="http://shenzhen.xueda.com/School/34.Shtml" target="_blank">宝中学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/263.Shtml" target="_blank">宝体学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/268.Shtml" target="_blank">西乡学习中心</a>
                        </span>
                        </li>
                        <li><b>龙岗区</b> <span>
                        <a href="http://shenzhen.xueda.com/School/184.Shtml" target="_blank">龙岗中心城学习中心</a>
                        <a href="http://shenzhen.xueda.com/School/354.Shtml" target="_blank">布吉学习中心（教学点）</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc4_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://fuzhou.xueda.com/School/51.Shtml"  target="_blank">鼓楼学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://fuzhou.xueda.com/School/52.Shtml"  target="_blank">台江学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://fuzhou.xueda.com/School/180.Shtml"  target="_blank">福清学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://fuzhou.xueda.com/School/181.Shtml"  target="_blank">金山学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://fuzhou.xueda.com/School/241.Shtml"  target="_blank">杨桥学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://nanning.xueda.com/School/10.Shtml"  target="_blank">西乡塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanning.xueda.com/School/11.Shtml"  target="_blank">兴宁学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanning.xueda.com/School/151.Shtml"  target="_blank">琅东学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://nanning.xueda.com/School/353.Shtml"  target="_blank">航洋国际学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://dongguan.xueda.com/School/126.Shtml"  target="_blank">南城学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dongguan.xueda.com/School/127.Shtml"  target="_blank">莞城学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dongguan.xueda.com/School/128.Shtml"  target="_blank">东城学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://dongguan.xueda.com/School/323.Shtml"  target="_blank">厚街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://foshan.xueda.com/School/49.Shtml"  target="_blank">禅城学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://foshan.xueda.com/School/190.Shtml"  target="_blank">亚艺公园学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://foshan.xueda.com/School/229.Shtml"  target="_blank">卫国路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://foshan.xueda.com/School/230.Shtml"  target="_blank">汾江路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://huizhou.xueda.com/School/166.Shtml"  target="_blank">东平学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huizhou.xueda.com/School/167.Shtml"  target="_blank">黄冈中学学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://huizhou.xueda.com/School/168.Shtml"  target="_blank">麦地学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://xiamen.xueda.com/School/208.Shtml"  target="_blank">莲坂学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xiamen.xueda.com/School/233.Shtml"  target="_blank">思北学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xiamen.xueda.com/School/324.Shtml"  target="_blank">摩登学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_4" style="display: none;">
                        <ul id="tabboxc5">
                            <li onclick="tabc5(this,0)" class="on">郑州</li>
                            
                            <li onclick="tabc5(this,1)" >武汉</li>
                            
                            <li onclick="tabc5(this,2)" >长沙</li>
                            
                            <li onclick="tabc5(this,3)" >株洲</li>
                            
                            <li onclick="tabc5(this,4)" >洛阳</li>
                            
                            <li onclick="tabc5(this,5)" >宜昌</li>
                            

                        </ul>
                        <div id="tabboxc5_0">
                        
                        <dl>
                        <dd>
                        <a href="http://zhengzhou.xueda.com/School/43.Shtml"  target="_blank">紫荆山学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://zhengzhou.xueda.com/School/44.Shtml"  target="_blank">凯旋门学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://zhengzhou.xueda.com/School/199.Shtml"  target="_blank">蜜蜂张学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://zhengzhou.xueda.com/School/200.Shtml"  target="_blank">俭学街学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://zhengzhou.xueda.com/School/201.Shtml"  target="_blank">经三路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/136.Shtml"  target="_blank">江岸学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/137.Shtml"  target="_blank">武昌学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/141.Shtml"  target="_blank">青年路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/177.Shtml"  target="_blank">中南学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/222.Shtml"  target="_blank">钟家村学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/223.Shtml"  target="_blank">红钢城学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/273.Shtml"  target="_blank">徐东学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/274.Shtml"  target="_blank">水果湖学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://wuhan.xueda.com/School/280.Shtml"  target="_blank">王家湾学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://changsha.xueda.com/School/116.Shtml"  target="_blank">天心学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/117.Shtml"  target="_blank">东塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/118.Shtml"  target="_blank">开福学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/148.Shtml"  target="_blank">星沙学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/231.Shtml"  target="_blank">德政园学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/248.Shtml"  target="_blank">芙蓉南路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://changsha.xueda.com/School/308.Shtml"  target="_blank">长沙桐梓坡学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://zhuzhou.xueda.com/School/155.Shtml"  target="_blank">株洲神农校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://luoyang.xueda.com/School/158.Shtml"  target="_blank">牡丹广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://luoyang.xueda.com/School/340.Shtml"  target="_blank">西工凯旋广场校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yichang.xueda.com/School/224.Shtml"  target="_blank">宜昌学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_5" style="display: none;">
                        <ul id="tabboxc6">
                            <li onclick="tabc6(this,0)" class="on">兰州</li>
                            
                            <li onclick="tabc6(this,1)" >西安</li>
                            
                            <li onclick="tabc6(this,2)" >银川</li>
                            
                            <li onclick="tabc6(this,3)" >咸阳</li>
                            
                            <li onclick="tabc6(this,4)" >宝鸡</li>
                            

                        </ul>
                        <div id="tabboxc6_0">
                        
                        <dl>
                        <dd>
                        <a href="http://lanzhou.xueda.com/School/37.Shtml"  target="_blank">广场西口学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://lanzhou.xueda.com/School/38.Shtml"  target="_blank">阳光家园学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://lanzhou.xueda.com/School/249.Shtml"  target="_blank">西固虹盛学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://xian.xueda.com/School/4.Shtml"  target="_blank">交大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/5.Shtml"  target="_blank">高新学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/6.Shtml"  target="_blank">钟楼学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/7.Shtml"  target="_blank">小寨学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/8.Shtml"  target="_blank">经开学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/186.Shtml"  target="_blank">轻工学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/362.Shtml"  target="_blank">西安中学学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/363.Shtml"  target="_blank">西稍门学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/364.Shtml"  target="_blank">昆明路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/365.Shtml"  target="_blank">黄雁村学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/366.Shtml"  target="_blank">阎良学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/367.Shtml"  target="_blank">紫薇学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://xian.xueda.com/School/368.Shtml"  target="_blank">长安学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yinchuan.xueda.com/School/150.Shtml"  target="_blank">新华街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://xianyang.xueda.com/School/9.Shtml"  target="_blank">咸阳人民路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://baoji.xueda.com/School/369.Shtml"  target="_blank">宝鸡渭滨学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://baoji.xueda.com/School/370.Shtml"  target="_blank">宝鸡金台学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                    <div class="yx_sec" id="tabboxct_6" style="display: none;">
                        <ul id="tabboxc7">
                            <li onclick="tabc7(this,0)" class="on">贵阳</li>
                            
                            <li onclick="tabc7(this,1)" >重庆</li>
                            
                            <li onclick="tabc7(this,2)" >成都</li>
                            
                            <li onclick="tabc7(this,3)" >昆明</li>
                            
                            <li onclick="tabc7(this,4)" >宜宾</li>
                            
                            <li onclick="tabc7(this,5)" >曲靖</li>
                            
                            <li onclick="tabc7(this,6)" >玉溪</li>
                            

                        </ul>
                        <div id="tabboxc7_0">
                        
                        <dl>
                        <dd>
                        <a href="http://guiyang.xueda.com/School/26.Shtml"  target="_blank">南明学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://guiyang.xueda.com/School/356.Shtml"  target="_blank">贵阳瑞北学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://guiyang.xueda.com/School/357.Shtml"  target="_blank">小河学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://chongqing.xueda.com/School/99.Shtml"  target="_blank">沙坪坝学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chongqing.xueda.com/School/100.Shtml"  target="_blank">江北学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chongqing.xueda.com/School/101.Shtml"  target="_blank">解放碑学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chongqing.xueda.com/School/234.Shtml"  target="_blank">南坪学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chongqing.xueda.com/School/257.Shtml"  target="_blank">加州学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/121.Shtml"  target="_blank">双楠学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/122.Shtml"  target="_blank">八宝街学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/123.Shtml"  target="_blank">金沙学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/124.Shtml"  target="_blank">跳伞塔学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/125.Shtml"  target="_blank">科大学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/196.Shtml"  target="_blank">双流学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/221.Shtml"  target="_blank">大慈寺学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://chengdu.xueda.com/School/251.Shtml"  target="_blank">浆洗街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://kunming.xueda.com/School/58.Shtml"  target="_blank">小花园学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://kunming.xueda.com/School/59.Shtml"  target="_blank">环西路学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://kunming.xueda.com/School/140.Shtml"  target="_blank">国贸学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://kunming.xueda.com/School/204.Shtml"  target="_blank">北市区学习中心</a>
                        </dd>
                        <dd>
                        <a href="http://kunming.xueda.com/School/313.Shtml"  target="_blank">高新国际校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yibin.xueda.com/School/169.Shtml"  target="_blank">宜宾莱茵学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://qujing.xueda.com/School/247.Shtml"  target="_blank">曲靖状元楼学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="http://yuxi.xueda.com/School/153.Shtml"  target="_blank">玉溪红塔学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="foot_1 w_998">
        <ul>
            <li style="border: none;">
                <h1>
                    学大产品与服务</h1>
                <a href="http://www.xueda.com/News/68.Shtml">产品与服务</a>
                <br />
                <a href="http://www.xueda.com/News/71.Shtml">服务模式</a>
                <br />
                <a href="http://www.xueda.com/News/72.Shtml">服务流程</a>
                <br />
                <a href="http://www.xueda.com/News/73.Shtml">上课时间和收费</a></li>
            <li>
                <h1>
                    为什么选择学大</h1>
                <a href="http://www.xueda.com/News/83.Shtml">领先的理念</a>
                <br />
                <a href="http://www.xueda.com/News/84.Shtml">匹配的师资</a>
                <br />
                <a href="http://www.xueda.com/News/85.Shtml">完善的服务</a>
                <br />
                <a href="http://www.xueda.com/News/86.Shtml">可信赖的品牌</a> </li>
            <li>
                <h1>
                    关于学大</h1>
                <a href="http://www.xueda.com/News/74.Shtml">学大简介</a> | <a href="http://jobs.xueda.com/">招聘信息</a>
                <br />
                <a href="http://www.xueda.com/News/77.Shtml">社会荣誉</a> | <a href="http://www.xueda.com//News/81.Shtml">联系我们</a>
                <br />
                <a href="http://www.xueda.com/News/80.Shtml">公益活动</a> | <a href="http://www.xueda.com/Topics/hezuo/index.html">商务合作</a>
                <br />
                <a rel="nofollow" rel="nofollow" href="http://ir.xueda.com/">投资者关系</a> </li>
            <li>
                <h1>
                    客服中心</h1>
                全国免费咨询热线：<br />
                <span class="color_5"><script type="text/javascript" language="javascript">document.write(Get400Phone());</script></span>
                <br />
                服务时间：周一至周日8：00-23：00<br />
                <a href="javascript:;" onclick="Open()">在线咨询</a><br />
            </li>
        </ul>
    </div>
    <div class="foot_2 w_998">
        2010学大教育 京ICP备10045583号-6 京公网安备1101054826 <a href="http://www.xueda.com/News/82.Shtml">隐私声明</a>
<a  target=_blank href="http://www.xueda.com/sitemap.xml">站点地图</a>
<br />
        增值电信业务经营许可证京B2-20100091 电信与信息服务业务经营许可证京ICP证100956号
    </div>
    <script type="text/javascript" charset="utf-8"     src="http://gate.looyu.com/41098/102172.js"></script>
<script type="text/javascript">
<!-- 
var bd_cpro_rtid="nHDvr0";
//-->
</script>
<script type="text/javascript" src="http://cpro.baidu.com/cpro/ui/rt.js"></script>
<noscript>
<div style="display:none;">
<img height="0" width="0" style="border-style:none;" src="http://eclick.baidu.com/rt.jpg?t=noscript&rtid=nHDvr0" />
   </div>
  </noscript>
</div>
 <script type="text/javascript">jQuery(document).ready(function(){try{jQuery(".yx_city").each(function(){var url=window.location.href.toLowerCase();var City_Url="http://"+url.substring(7).substring(0,url.substring(7).indexOf('/'));if(jQuery(this).find("a[href^='"+City_Url+"']")){var finddiv=jQuery(this).find("a[href^='"+City_Url+"']:first").parents("div");var divid=finddiv.attr("id");if(divid!=""){var array=divid.split("_");var parentID=array[0];var MarkingID=array[1];var _did=finddiv.parents("div").attr("id");var parentID_1=_did.split("_")[0];var MarkingID_1=_did.split("_")[1];jQuery(".yx_city div[id^='"+parentID+"_']").removeAttr('style');jQuery(".yx_city div[id^='"+parentID+"_']").attr("style","display: none;");jQuery("#"+divid).attr("style","display: block;");jQuery(".yx_city div[id^='"+parentID_1+"_']").attr("style","display: none;");jQuery("#"+_did).attr("style","display: block;");jQuery("#"+_did+" ul").find("li").removeClass("on");jQuery("#"+_did+" ul").find("li").each(function(index){var str=jQuery(this).attr("onclick");if(str!=""&&str!=null){if(str.toString().indexOf(MarkingID)>-1){if(index==parseInt(MarkingID)){jQuery(this).addClass("on");}}}})
jQuery("#tabboxct").find("li").removeClass("current");jQuery("#tabboxct").find("li").each(function(index){var str=jQuery(this).attr("onclick");if(str!=""&&str!=null){if(str.toString().indexOf(MarkingID_1)>-1){jQuery(this).addClass("current");}}})}}});}catch(e){return;}})</script>
   <script type="text/javascript" src="http://file.xueda.com/js/Course.js"> </script>
</body>
</html>
