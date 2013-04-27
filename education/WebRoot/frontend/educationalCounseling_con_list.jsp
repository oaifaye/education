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
    
    <title>教育资讯</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front_top.css" />
	<link rel="stylesheet" type="text/css" href="css/front_class_list.css" />
	<link rel="stylesheet" type="text/css" href="css/front_educationalCounseling.css" />
  </head>
  
  <body>
     <%@ include file="../include/front_top.jsp"%>
    <div class="center">
        <div class="h_40">
            <a href="<%=basePath %>">首页</a>
            &nbsp;&gt;&nbsp;&nbsp;教育资讯
        </div>
        <div class="left">
            <div class="box_1 w_738 ">
                <h1><span><b id="box_5">学大资讯</b></span></h1>
                <div class="news_4 ">
                    <app:DisplayTag_EducationalCounselingTop eduCounselingSecondId="4028bc8e3c37cc35013c37ef8a980006"></app:DisplayTag_EducationalCounselingTop>
                </div>
                <div class="news_5 dian">
                    <ul id="none_bottom">
                    	<h3><strong>高中资讯</strong>
                    	<a href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37eebcb80002&eduCounselingSecondId=4028bc8e3c37cc35013c37ef8a980006">更多>></a></h3>
                    	<app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37ef8a980006" quantity="1"/>
                    </ul>
                    <ul id="none_bottom"><h3><strong>初中资讯</strong><a href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37eebcb80002&eduCounselingSecondId=4028bc8e3c37cc35013c37efa7090007">更多>></a></h3>
                    	<app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37efa7090007" quantity="0" />
                    </ul>
                </div>
            </div>
            <!--高中教育-->
            <div class="box_1 top10 w_738 ">
                <h1><span><b id="box_5">高中一对一</b></span></h1>
                <div class="news_4 ">
                	<app:DisplayTag_EducationalCounselingTop eduCounselingSecondId="4028bc8e3c37cc35013c37f04c800009"></app:DisplayTag_EducationalCounselingTop>
                </div>
                <div class="news_5 dian">
                    <ul>
                        <h3><strong>高考资讯</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37eee6880003&eduCounselingSecondId=4028bc8e3c37cc35013c37f04c800009">更多>></a></h3>
                        <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f04c800009" quantity="1" />
                    </ul>
                    <ul id="none_bottom"><h3><strong>考点分析</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37eee6880003&eduCounselingSecondId=4028bc8e3c37cc35013c37f06d76000a">更多>></a></h3>
                        <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f06d76000a" quantity="0" />
                    </ul>
                </div>
            </div>
            <!--初中教育-->
            <div class="box_1 top10  w_738 ">
                <h1><span><b id="box_5">初中一对一</b></span></h1>
                <div class="news_4 ">
                    <app:DisplayTag_EducationalCounselingTop eduCounselingSecondId="4028bc8e3c37cc35013c37f08f65000b"></app:DisplayTag_EducationalCounselingTop>
                </div>
                <div class="news_5 dian">
                    <ul>
                        <h3><strong>中考资讯</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37ef12e70004&eduCounselingSecondId=4028bc8e3c37cc35013c37f08f65000b">更多>></a></h3>
                        <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f08f65000b" quantity="1" />
                    </ul>
                    <ul id="none_bottom">
                        <h3><strong>考点分析</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37ef12e70004&eduCounselingSecondId=4028bc8e3c37cc35013c37f0ad4d000c">更多>></a></h3>
                        <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f0ad4d000c" quantity="0" />
                    </ul>
                </div>
            </div>
            <!--小学教育-->
            <div class="box_1 top10  w_738 ">
                <h1>
                    <span><b id="box_5">小学一对一</b></span></h1>
                <div class="news_4 ">
                    <app:DisplayTag_EducationalCounselingTop eduCounselingSecondId="4028bc8e3c37cc35013c37f0d0e3000d"></app:DisplayTag_EducationalCounselingTop>
                </div>
                <div class="news_5 dian">
                    <ul><h3><strong>小升初资讯</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37ef3c870005&eduCounselingSecondId=4028bc8e3c37cc35013c37f0d0e3000d">更多>></a></h3>
                         <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f0d0e3000d" quantity="1" />
                    </ul>
                    <ul id="none_bottom">
                        <h3><strong>考点分析</strong><a target="_blank" href="<%=basePath %>fListeducationalCounseling.action?state=1&eduCounselingFirstId=4028bc8e3c37cc35013c37ef3c870005&eduCounselingSecondId=4028bc8e3c37cc35013c37f0ee8d000e">更多>></a></h3>
                        <app:DisplayTag_EducationalCounselingList eduCounselingSecondId="4028bc8e3c37cc35013c37f0ee8d000e" quantity="0" />
                    </ul>
                </div>
            </div>
        </div>
      <div class="right">
<div class="box_2 w_248">
		<h1 class="w_248"><span style=" padding-right:130px;">热门资讯</span><a href="/News/List-0-1.html">更多>></a></h1>
		<ul class="index_kaoti">
		    <li><a title="小升初作文如何拿高分" href="http://hefei.xueda.com/News/3675.Shtml">小升初作文如何拿高分</a></li>
		                            <li><a title="小升初英语中的重复与模仿原则" href="http://hefei.xueda.com/News/3674.Shtml">小升初英语中的重复与模仿原则</a></li>
		                            <li><a title="小升初寒假读书推荐" href="http://hefei.xueda.com/News/3673.Shtml">小升初寒假读书推荐</a></li>
		                            <li><a title="2013年南开大学保送生春节后开始面试" href="http://qujing.xueda.com/News/3672.Shtml">2013年南开大学保送生春节后开始面试</a></li>
		                            <li><a title="20天寒假集训，轻松提分！" href="http://yangzhou.xueda.com/News/3671.Shtml">20天寒假集训，轻松提分！</a></li>
		                            <li><a title="学大数学家教解析：提升小升初数学成绩的三个要素" href="http://kunming.xueda.com/News/3670.Shtml">学大数学家教解析：提升小升初数学成绩的三...</a></li>
		                            <li><a title="吉林省寒假期间网吧接纳未成年人将重罚 " href="http://changchun.xueda.com/News/3667.Shtml">吉林省寒假期间网吧接纳未成年人将重罚</a></li>
		                            <li><a title="吉林利用中小学寒假为校车体检" href="http://jilin.xueda.com/News/3666.Shtml">吉林利用中小学寒假为校车体检</a></li>
		                            <li><a title="高考舞弊被抓" href="http://jilin.xueda.com/News/3664.Shtml">高考舞弊被抓</a></li>
		                            <li><a title="高三学子备战高考之寒假复习攻略" href="http://kunming.xueda.com/News/3663.Shtml">高三学子备战高考之寒假复习攻略</a></li>
		                            
		</ul>		
</div>
 <!--在线报名-->
    <script src="http://file.xueda.com/Js/Right.js" type="text/javascript"></script>
    <form>
<div class="box_2 baoming top10 w_248">
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
  </body>
</html>
