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
	
	<script type="text/javascript">
		//分页查询
		function pagerControl(currentPage,eduCounselingFirstId,eduCounselingSecondId){
			document.pageForm.action="fListeducationalCounseling.action?state=1&eduCounselingFirstId="+eduCounselingFirstId+"&eduCounselingSecondId="+eduCounselingSecondId+"&currentPage="+currentPage;
			document.pageForm.submit();
		}
		
	</script>
	
  </head>
  
  <body>
     <%@ include file="../include/front_top.jsp"%>
    <div class="center">
        <div class="h_40">
            <%@ include file="../include/front_navigation_educationalCounseling.jsp"%>
        </div>
        <div class="left">
            <div class="box_1 w_738 ">
                <h1>
                    <span><b id="box_5"><s:property value="eduCounselingSecondName"/></b></span></h1>
                <ul class="news_3 dian">
                	<s:iterator value="paginationSupport.items">
                		<li>
                      		<a target="_blank" title="<s:property value="eduCounselingTitle"/>" href="<%=basePath%>fDetaileducationalCounseling.action?state=1&educationalCounselingId=<s:property value="id"/>"><s:property value="eduCounselingTitle"/></a> 
                      		<span class="color_4">
                      			<s:date name="publicDate" format="yyyy-MM-dd" />
                      		</span>
                      	</li>
                	</s:iterator>
                </ul>
            </div>
            <%@ include file="../include/front_pageNavigation.jsp"%>
        </div>

                                     <div class="right">
<div class="box_2 w_248">
		<h1 class="w_248"><span style=" padding-right:130px;">热门资讯</span><a href="/News/List-0-1.html">更多>></a></h1>
		<ul class="index_kaoti">
		    <li><a title="昆明中考生需知：中考冲刺寒假复习攻略" href="http://kunming.xueda.com/News/3696.Shtml">昆明中考生需知：中考冲刺寒假复习攻略</a></li>
		                            <li><a title="“一年多考”增加高考改革公平性" href="http://jilin.xueda.com/News/3695.Shtml">“一年多考”增加高考改革公平性</a></li>
		                            <li><a title="“学大教育杯”参赛作品——每一个母亲都是天使（管悦）" href="http://changchun.xueda.com/News/3694.Shtml">“学大教育杯”参赛作品——每一个母亲都是...</a></li>
		                            <li><a title="基础薄弱型中考考生寒假数学备考攻略" href="http://yuxi.xueda.com/News/3693.Shtml">基础薄弱型中考考生寒假数学备考攻略</a></li>
		                            <li><a title="学大财富广场校区寒假托管班招生简章" href="http://hefei.xueda.com/News/3688.Shtml">学大财富广场校区寒假托管班招生简章</a></li>
		                            <li><a title="2013年云南大学自主选拔于2月22日笔试" href="http://kunming.xueda.com/News/3683.Shtml">2013年云南大学自主选拔于2月22日笔试</a></li>
		                            <li><a title="寒假语文复习方法" href="http://jilin.xueda.com/News/3682.Shtml">寒假语文复习方法</a></li>
		                            <li><a title="2013中考复习需提高效率" href="http://changchun.xueda.com/News/3681.Shtml">2013中考复习需提高效率</a></li>
		                            <li><a title="小升初作文如何拿高分" href="http://hefei.xueda.com/News/3675.Shtml">小升初作文如何拿高分</a></li>
		                            <li><a title="小升初英语中的重复与模仿原则" href="http://hefei.xueda.com/News/3674.Shtml">小升初英语中的重复与模仿原则</a></li>
		                            
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
