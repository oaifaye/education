<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/WEB-INF/app.tld" prefix="app"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>精品教育</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front_index.css" />
	<link rel="stylesheet" type="text/css" href="css/front_top.css" />
	<link href="css/lunxun.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
	<script type="text/javascript" src="js/slider.js"></script>
	<script type="text/javascript" src="js/tabmenu.js"></script>
	
  </head>
  
  <body>
	<%@ include file="include/front_top.jsp"%>
	<div class="center">
		<div class="index_left">
			<div class="course">
				<h1>1对1辅导课程</h1>
				<ul>
                    <li>
                        <h2> 高中辅导课程</h2>
                        <app:DisplayTag_YiDuiYiList gradeId="4028bc8e3be97bc1013be97dc02d0004"/>
 					</li>
                    <li>
                        <h2>初中辅导课程</h2>
                        <app:DisplayTag_YiDuiYiList gradeId="4028bc8e3be97bc1013be97d874b0001"/>
 					</li>
                    <li>
                        <h2>小学辅导课程</h2>
                        <app:DisplayTag_YiDuiYiList gradeId="4028bc8e3beb105e013beb198b5e000f"/>
 					</li>
                    <li id="none_bottom">
                        <h2>特色辅导课程</h2>
                        <app:DisplayTag_YiDuiYiList gradeId="4028bc8e3beb105e013beb19d5570010"/>
 					</li>
                </ul>
            </div>
	
	  		<div class="box_2 top10 xueyuan_1 w_213">
	  			<!-- 明星学员 -->
                <app:DisplayTag_GoodStudentList />
            </div>
      	</div>
        
	<!--  -->
		<div class="index_center top_10">
			<div class="content_right">
  				<div class="ad" >
    				<ul class="slider" >
      					<li><a href="#"><img src="imgUpload/buttom_0.jpg"/></a></li>
      					<li><a href="#"><img src="imgUpload/buttom_1.jpg"/></a></li>
      					<li><a href="#"><img src="imgUpload/buttom_2.jpg"/></a></li>
      					<li><a href="3"><img src="imgUpload/buttom_3.jpg"/></a></li>
      					<li><a href="3"><img src="imgUpload/buttom_4.jpg"/></a></li>
    				</ul>
   					<ul class="num" >
      					<li>1</li>
      					<li>2</li>
      					<li>3</li>
      					<li>4</li>
      					<li>5</li>
    				</ul>
  				</div>
			</div>
            <div class="zhuanti">
                <ul>
                
                <h1>名校直通车</h1>
                
                <a title="名校直通车" href="http://www.xueda.com/topics/20110913baoming/index_u.shtml" target="_blank">
                
                <img alt="名校直通车" src="http://file.xueda.com/Sowing/f027688305274c4.jpg" width="100" height="100" />
                
                </a>
                
                考上好大学是每一个人的梦想，高三孩子成绩不好、成绩提高慢，家长、孩子都着急，但是...
                <span class="color_10">
                
                <a  href="http://www.xueda.com/topics/20110913baoming/index_u.shtml" target="_blank">
                
                [详情]
                
                </a>
                
                </span>
                
                </ul>
                
                <ul>
                
                <h1>学大名师助阵，期末冲刺100分</h1>
                
                <a title="学大名师助阵，期末冲刺100分" href="http://www.xueda.com/Topics/qmcc/index.html" target="_blank">
                
                <img alt="学大名师助阵，期末冲刺100分" src="http://file.xueda.com/Sowing/427b8c2e6e354b6.jpg" width="100" height="100" />
                
                </a>
                
                个性化辅导模式由学大教育首次提出!
                
                “每一个孩子都是独特的”，个性化辅导根据每...
                <span class="color_10">
                
                <a  href="http://www.xueda.com/Topics/qmcc/index.html" target="_blank">
                
                [详情]
                
                </a>
                
                </span>
                
                </ul>
                
                <ul>
                
                <h1>抓住必考点才能稳胜</h1>
                
                <a title="抓住必考点才能稳胜" href="http://www.xueda.com/Topics//mid-term_exam/index.shtml" target="_blank">
                
                <img alt="抓住必考点才能稳胜" src="http://file.xueda.com/Sowing/5f13c380ebe64bf.jpg" width="100" height="100" />
                
                </a>
                
                中、高考进入最后冲刺阶段，家长可知晓，家长怎样才能帮助孩子“多提分”？孩子怎样才...
                <span class="color_10">
                
                <a  href="http://www.xueda.com/Topics//mid-term_exam/index.shtml" target="_blank">
                
                [详情]
                
                </a>
                
                </span>
                
                </ul>
                
                <ul>
                
                <h1>天才进化论21edu</h1>
                
                <a title="天才进化论21edu" href="http://v.21edu.com/special/tiancai.html" target="_blank">
                
                <img alt="天才进化论21edu" src="http://file.xueda.com/Sowing/0fb6c44e2e0e415.jpg" width="100" height="100" />
                
                </a>
                
                作为首部关注教育题材的网络剧，《天才进化论》在开机前即受到媒体广泛关注。该剧由“...
                
                <span class="color_10">
                
                <a  href="http://v.21edu.com/special/tiancai.html" target="_blank">
                
                [详情]
                
                </a>
                
                </span>
                
                </ul>
                

            </div>
            <div class="box_1 top10 v_1 w_548">
                <h1>
                    <span><b>1对1辅导优势</b></span></h1>
                <ul>
                    <li id="v_1">根据孩子的实际情况和性格特点进行因材施教的辅导，补习特别薄弱的科目或者不明白的知 识，所以提分快！</li>
                    <li id="v_2">能够使孩子更加集中精神，效率更高，提分更快。</li>
                    <li id="v_3">上课时间灵活，孩子可以根据自己的时间情况灵活 调整上课时间，学习时间更合理。</li>
                    <li id="v_4">可以任意挑选合适自己的、自己满意的老师，师生关系融洽，有助于更快提分。</li>
                    <li id="v_5">根据孩子的实际情况和性格特点进行因材施教的辅导，补习特别的科目或者不明白的知识点，所以提分！</li>
                </ul>
            </div>
        </div>
	<!--  -->
	
	
	<div class="index_right top_10">
            <div class="item">
                <div class="tab box_3 w_213">
                    <ul id="tabmenu1">
                        <li class="current">校区查询</li>
                        <li class="">最新公告</li>
                    </ul>
                </div>
                <div class="qiehuan" style="display: block;">
               		<div class="index_xiaoqiu box_33" >
                    	<ul>
                       		<li><a target="_blank" title="黄河道学习中心" href="/School/88.Shtml">黄河道学习中心</a></li>
                        	<li><a target="_blank" title="河东学习中心" href="/School/89.Shtml">河东学习中心</a></li>
                        	<li><a target="_blank" title="友谊路学习中心" href="/School/90.Shtml">友谊路学习中心</a></li>
                        	<li><a target="_blank" title="红桥学习中心" href="/School/91.Shtml">红桥学习中心</a></li>
                        	<li><a target="_blank" title="天大学习中心" href="/School/92.Shtml">天大学习中心</a></li>
                        	<li><a target="_blank" title="塘沽学习中心" href="/School/93.Shtml">塘沽学习中心</a></li>
                        	<li><a target="_blank" title="河北校区" href="/School/145.Shtml">河北校区</a></li>
                        	<li><a target="_blank" title="迎水道学习中心" href="/School/172.Shtml">迎水道学习中心</a></li>
                        	<li><a target="_blank" title="大港学习中心" href="/School/207.Shtml">大港学习中心</a></li>
 							<span><a href="/School/Index.Shtml">更多>></a></span>
                    	</ul>
                    </div>
                </div>
                <div class="qiehuan" style="display: none;">
                	<div class="index_news box_33" >
                    	<ul class="dian">
                       		<li><a target="_blank" title="如何备战期末考？" href="http://xian.xueda.com/News/1844.Shtml">如何备战期末考？</a></li>
                        	<li><a target="_blank" title="《2013高考大型系列公益讲座》门票免费领取遭疯抢" href="http://beijing.xueda.com/News/1437.Shtml">《2013高考大型系列公益讲...</a></li>
                        	<li><a target="_blank" title="期中考试后治失分，学大教育帮您忙！" href="http://beijing.xueda.com/News/1337.Shtml">期中考试后治失分，学大教...</a></li>
                        	<li><a target="_blank" title="不同的环境，别样的人生" href="http://xian.xueda.com/News/1955.Shtml">不同的环境，别样的人生</a></li>
                        	<li><a target="_blank" title="美国高中交换生（AYP）项目" href="http://xian.xueda.com/News/1954.Shtml">美国高中交换生（AYP）项目</a></li>
                        	<li><a target="_blank" title="2013年节假日补课 校长要被撤职" href="http://qingdao.xueda.com/News/1801.Shtml">2013年节假日补课 校长要被...</a></li>
                        	<li><a target="_blank" title="初三高三：模考如何步步为赢？" href="http://xian.xueda.com/News/1716.Shtml">初三高三：模考如何步步为...</a></li>
                        	<li><a target="_blank" title="清华大学自主招生新规定" href="http://xian.xueda.com/News/1599.Shtml">清华大学自主招生新规定</a></li>
                        	<li><a target="_blank" title="中考家长扮演什么角色？" href="http://xian.xueda.com/News/1567.Shtml">中考家长扮演什么角色？</a></li>
                    	</ul>
                    </div>
                </div>
            </div>
            <div class="box_2 top10 laoshi w_213">
                <h1 class="w_213">
                    <span>名师推荐</span> <a target="_blank" href="/MingShi/">更多>></a></h1>
                 <ul>
                <span><a target="_blank"  href="/Teacher/3542.Shtml">
                <img src="http://file.xueda.com/Teacher/20128610183965_a1490c15-c409-4051-8fc5-88786bf92edb.JPG" width="76" height="76" /></a></span>
                 <a target="_blank"  href="/Teacher/3542.Shtml">付玉</a> <br/>
                 科目：<a target="_blank" title="小学辅导_小学课程"   href="/XiaoXue-14-3-1.html"> 小学英语 </a><br/>
                <a onclick="Open()" href="javascript:;"><img  src="http://file.xueda.com/images/zxzx.gif" /></a>
                
                                           </ul>
                 <ul>
                <span><a target="_blank"  href="/Teacher/3543.Shtml">
                <img src="http://file.xueda.com/Teacher/20128813131551_66838e4b-90ef-4a6f-8e2a-332e347dae3c.jpg" width="76" height="76" /></a></span>
                 <a target="_blank"  href="/Teacher/3543.Shtml">潘虹</a> <br/>
                 科目：<a target="_blank" title="小学辅导_小学课程"   href="/XiaoXue-14-4-1.html"> 小学物理 </a><br/>
                <a onclick="Open()" href="javascript:;"><img  src="http://file.xueda.com/images/zxzx.gif" /></a>
                
                                           </ul>
                 <ul>
                <span><a target="_blank"  href="/Teacher/3544.Shtml">
                <img src="http://file.xueda.com/Teacher/201288131654891_56e261fb-f2ca-4785-b6b9-d7e44ab78b7b.jpg" width="76" height="76" /></a></span>
                 <a target="_blank"  href="/Teacher/3544.Shtml">全绍华</a> <br/>
                 科目：<a target="_blank" title="小学辅导_小学课程"   href="/XiaoXue-14-4-1.html"> 小学物理 </a><br/>
                <a onclick="Open()" href="javascript:;"><img  src="http://file.xueda.com/images/zxzx.gif" /></a>
                
                                           </ul>
                 <ul>
                <span><a target="_blank"  href="/Teacher/3545.Shtml">
                <img src="http://file.xueda.com/Teacher/201288141036578_18093425-779c-4022-9538-3720429ccba7.jpg" width="76" height="76" /></a></span>
                 <a target="_blank"  href="/Teacher/3545.Shtml">杨帆</a> <br/>
                 科目：<a target="_blank" title="小学辅导_小学课程"   href="/XiaoXue-14-2-1.html"> 小学数学 </a><br/>
                <a onclick="Open()" href="javascript:;"><img  src="http://file.xueda.com/images/zxzx.gif" /></a>
                
                                           </ul>
                 <ul>
                <span><a target="_blank"  href="/Teacher/3814.Shtml">
                <img src="http://file.xueda.com/Teacher/55fc21f470984cb.jpg" width="76" height="76" /></a></span>
                 <a target="_blank"  href="/Teacher/3814.Shtml">张纪梅</a> <br/>
                 科目：<a target="_blank" title="初中辅导_初中课程"   href="/ZhongKao-16-1-1.html"> 初中语文 </a><br/>
                <a onclick="Open()" href="javascript:;"><img  src="http://file.xueda.com/images/zxzx.gif" /></a>
                
                                           </ul>

            </div>
        </div>
</div>

 <div class="banner">
            <script type="text/javascript">                addLoadEvent(InitAdv(14))</script>
        </div>
    </div>
    <div class="center">
        <div class="index_left">
            <div class="box_2 top10 index_ceping w_213">
                <h1 class="w_213">
                    <span>学力测评</span><a target="_blank" href="http://etest.xueda.com/">更多>></a></h1>
                <ul>
                    <li class="index_ceping_1 top_10"><a target="_blank" href="http://qaa.xueda.com/TestPaper/BuildPaper?t=1&g=3">
                        <span id="ce_bottom_1"></span>高中测评</a> <a target="_blank" href="http://qaa.xueda.com/TestPaper/BuildPaper?t=1&g=2">
                            <span id="ce_bottom_2"></span>初中测评 </a><a target="_blank" href="http://qaa.xueda.com/TestPaper/BuildPaper?t=1&g=1">
                                <span id="ce_bottom_3"></span>小学测评</a> </li>
                    <li class="top_10"><strong>测评目的：</strong> 掌握个性化学习策略、方法和技巧；学会如何调整目标、稳定情绪，如何赢得自信、拥有健康的心态。<br />
                        参与测评人数：<span class="color_2">16729</span>人</li>
                    <li class="top_10" id="cha_bottom"><a target="_blank" href="http://etest.xueda.com/TestReport/List">
                        查看测评报告</a></li>
                </ul>
            </div>
            <div class="box_2 top10 index_cctv w_213">
                <h1 class="w_213">
                    <span>网络课堂</span><a target="_blank" href="/video/">更多>></a></h1>
                <ul>
                 <h4><a title="高一政治：生产劳动与经营习题课" target="_blank" href="/CCTV/11489.Shtml">高一政治：生产劳动与经营习题课</a></h4>
                 <a target="_blank" href="/CCTV/11489.Shtml"><img width="80" height="78" alt="高一政治：生产劳动与经营习题课" src="http://file.xueda.com/Images/cctv-1.gif" /></a> 讲师：高帆<br />
                  课程：高一政治<br />
                  <span class="color_3">10.00</span>学币
                 </ul>
                <ul>
                 <h4><a title="高一政治：第四单元习题课" target="_blank" href="/CCTV/11488.Shtml">高一政治：第四单元习题课</a></h4>
                 <a target="_blank" href="/CCTV/11488.Shtml"><img width="80" height="78" alt="高一政治：第四单元习题课" src="http://file.xueda.com/Images/cctv-2.gif" /></a> 讲师：高帆<br />
                  课程：高一政治<br />
                  <span class="color_3">10.00</span>学币
                 </ul>

            </div>
        </div>
        <div class="index_center">
            <div class="box_1 top10  w_548">
                <h1>
                    <span><b id="box_5">名师指导</b></span></h1>
                <ul class="index_tiku_2 dian" style="padding: 18px 0;">
                    <li><a target="_blank" title="影响高一数学学习障碍的主要原因" href="http://www.xueda.com/News/1553.Shtml">影响高一数学学习障碍的主要原因</a><span class="color_4">2012年11月15日</span></li>
                    <li><a target="_blank" title="高中数学与初中数学有什么不同？" href="http://www.xueda.com/News/1550.Shtml">高中数学与初中数学有什么不同？</a><span class="color_4">2012年11月15日</span></li>
                    <li><a target="_blank" title="高一数学学习的五个不良学习状态" href="http://www.xueda.com/News/1548.Shtml">高一数学学习的五个不良学习状态</a><span class="color_4">2012年11月15日</span></li>
                    <li><a target="_blank" title="高一新生如何学好数学？" href="http://www.xueda.com/News/1547.Shtml">高一新生如何学好数学？</a><span class="color_4">2012年11月15日</span></li>
                    <li><a target="_blank" title="名师指导-高一新生应该怎么学？" href="http://www.xueda.com/News/1546.Shtml">名师指导-高一新生应该怎么学？</a><span class="color_4">2012年11月15日</span></li>
                    <li><a target="_blank" title="高考作文怎么写至关重要" href="http://www.xueda.com/News/1251.Shtml">高考作文怎么写至关重要</a><span class="color_4">2012年09月29日</span></li>
                    <li><a target="_blank" title="高三学生心理辅导：稳定心态　树立信心" href="http://www.xueda.com/News/246.Shtml">高三学生心理辅导：稳定心态　树立信心</a><span class="color_4">2012年03月28日</span></li>
                    <li><a target="_blank" title="高考临近 如何摆脱“心理高原期”" href="http://www.xueda.com/News/244.Shtml">高考临近 如何摆脱“心理高原期”</a><span class="color_4">2012年03月28日</span></li>
                    <li><a target="_blank" title="专家：正视学生身心负担 减负从小学做起" href="http://www.xueda.com/News/243.Shtml">专家：正视学生身心负担 减负从小学做起</a><span class="color_4">2012年03月28日</span></li>
                    <li><a target="_blank" title="备战中考：数学重抓“双基” 英语每日听读" href="http://www.xueda.com/News/242.Shtml">备战中考：数学重抓“双基” 英语每日听读</a><span class="color_4">2012年03月28日</span></li>
                    <li><a target="_blank" title="初三女生爱钻研诗词格律 把同学名写成藏头诗" href="http://www.xueda.com/News/131.Shtml">初三女生爱钻研诗词格律 把同学名写成藏头诗</a><span class="color_4">2012年03月06日</span></li>

                </ul>
            </div>
            <div class="item top_10">
                <div class="tab box_3 w_548">
                    <ul id="tabmenu2">
                        <li class="current"><a href="/News/List-1-0-1.html">学大资讯</a></li>
                        <li class=""><a href="/News/List-81-0-1.html">高中一对一</a></li>
                        <li class=""><a href="/News/List-9-0-1.html">初中一对一</a></li>
                        <li class=""><a href="/News/List-10-0-1.html">小学一对一</a></li>
                    </ul>
                </div>
                <div class="qiehuan2" style="display: block;">
                <div class="items box_33">
                    <ul class="index_zixun_1">
                    
                    <a target="_blank" href="http://www.xueda.com/News/123.Shtml">
                    
                    <img src="http://file.xueda.com/Images/no_img.jpg" width="100" height="100" /></a>
                    
                    <h1>
                    
                    <a target="_blank" href="http://www.xueda.com/News/123.Shtml">怎样理解高考政治学科的哲学原理</a>
                    
                    </h1>
                    
                    Normal07.8磅02falsefalsefalseEN-USZH-CNX-NONE中国教育在线讯哲学&ldquo;标志性&rdquo;词语的运用实质上是一种提炼关键词的学习方法。下面就以典型试题为例，剖析如何抓住哲学&ldquo;标志性&r...
                    <span class="color_10">
                    
                    <a target="_blank" href="http://www.xueda.com/News/123.Shtml">[详情]</a>
                    
                    </span>
                    
                    </ul>
                    
                    <ul class="dian index_zixun_2">
                    
                    <li><a target="_blank" title="艺考考题花样百出 外表也不是唯一标准" href="http://www.xueda.com/News/122.Shtml">艺考考题花样百出 外表也不是唯一...</a></li>
                    <li><a target="_blank" title="关注高考：已录取保送生不得参加高考" href="http://www.xueda.com/News/121.Shtml">关注高考：已录取保送生不得参加高...</a></li>
                    <li><a target="_blank" title="教育部：随迁子女就地高考各地必须出台政策" href="http://www.xueda.com/News/120.Shtml">教育部：随迁子女就地高考各地必须...</a></li>
                    <li><a target="_blank" title="文综专题“北京精神”" href="http://www.xueda.com/News/119.Shtml">文综专题“北京精神”</a></li>
                    <li><a target="_blank" title="教育部：解决异地高考不能影响京沪考生权益" href="http://www.xueda.com/News/118.Shtml">教育部：解决异地高考不能影响京沪...</a></li>
                    <li><a target="_blank" title="盘点：关注度最高的高考八大本科专业解读" href="http://www.xueda.com/News/117.Shtml">盘点：关注度最高的高考八大本科专...</a></li>
                    <li><a target="_blank" title="学生文化课基础差，是美术生，能有针对性地辅导后，保证文化课成绩达到高考录取要求吗？ " href="http://www.xueda.com/News/113.Shtml">学生文化课基础差，是美术生，能有...</a></li>
                    <li><a target="_blank" title="飞得更高" href="http://www.xueda.com/News/69.Shtml">飞得更高</a></li>
                    </ul>
                    

                </div>
                </div>
                <div class="qiehuan2" style="display: none;">
                <div class="items index_zixun box_33">
                    <ul class="index_zixun_1">
                    
                    <a target="_blank" href="http://www.xueda.com/News/95.Shtml">
                    
                    <img src="http://file.xueda.com/Images/no_img.jpg" width="100" height="100" /></a>
                    
                    <h1>
                    
                    <a target="_blank" href="http://www.xueda.com/News/95.Shtml">文科综合：主观题没有三科综合题</a>
                    
                    </h1>
                    
                    考试时间为150分钟。试卷满分为240分。选做题不跨学科、不跨选考模块命题。必做题部分根据思想政治、历史和地理学科的必考内容命题。其中，思想政治必做题的分值比重约占36%，地理、历史必做题...
                    <span class="color_10">
                    
                    <a target="_blank" href="http://www.xueda.com/News/95.Shtml">[详情]</a>
                    
                    </span>
                    
                    </ul>
                    
                    <ul class="dian index_zixun_2">
                    
                    <li><a target="_blank" title="高考函数不再怕 导数是解题关键" href="http://www.xueda.com/News/94.Shtml">高考函数不再怕 导数是解题关键</a></li>
                    <li><a target="_blank" title="3月份高考冲刺关键点及追分要点" href="http://www.xueda.com/News/93.Shtml">3月份高考冲刺关键点及追分要点</a></li>
                    <li><a target="_blank" title="教育部部长：异地高考方案10个月内公布" href="http://www.xueda.com/News/92.Shtml">教育部部长：异地高考方案10个月内...</a></li>
                    <li><a target="_blank" title="距离高考100天——给您提几个醒" href="http://www.xueda.com/News/88.Shtml">距离高考100天——给您提几个醒</a></li>
                    <li><a target="_blank" title="一本录取率不足5% 高考对河南考生不公" href="http://www.xueda.com/News/167.Shtml">一本录取率不足5% 高考对河南考生...</a></li>
                    <li><a target="_blank" title="小语种 大世界---高考小语种面面观" href="http://www.xueda.com/News/91.Shtml">小语种 大世界---高考小语种面面观</a></li>
                    <li><a target="_blank" title="解说平行志愿" href="http://www.xueda.com/News/90.Shtml">解说平行志愿</a></li>
                    <li><a target="_blank" title="如何破解文科考生选专业的难题" href="http://www.xueda.com/News/89.Shtml">如何破解文科考生选专业的难题</a></li>
                    </ul>
                    

                </div>
                </div>
                <div class="qiehuan2" style="display: none;">
                <div class="items index_zixun box_33">
                    <ul class="index_zixun_1">
                    
                    <a target="_blank" href="http://www.xueda.com/News/100.Shtml">
                    
                    <img src="http://file.xueda.com/Images/no_img.jpg" width="100" height="100" /></a>
                    
                    <h1>
                    
                    <a target="_blank" href="http://www.xueda.com/News/100.Shtml">历年中考英语出现频率较高的知识点(4)</a>
                    
                    </h1>
                    
                    　　deserve&nbsp;to&nbsp;do&nbsp;sth.&nbsp;值得干某事&nbsp;　　形容词/副词+enough&nbsp;to&nbsp;do&nbsp;sth.&nbsp;足以做某事&nbsp;　　encourage&nbsp;sb.&nbsp;to&nbsp;do&nbsp;sth.&nb...
                    <span class="color_10">
                    
                    <a target="_blank" href="http://www.xueda.com/News/100.Shtml">[详情]</a>
                    
                    </span>
                    
                    </ul>
                    
                    <ul class="dian index_zixun_2">
                    
                    <li><a target="_blank" title="历年中考英语出现频率较高的知识点(3)" href="http://www.xueda.com/News/99.Shtml">历年中考英语出现频率较高的知识点...</a></li>
                    <li><a target="_blank" title="历年中考英语出现频率较高的知识点(2)" href="http://www.xueda.com/News/98.Shtml">历年中考英语出现频率较高的知识点...</a></li>
                    <li><a target="_blank" title="历年中考英语出现频率较高的知识点(1)" href="http://www.xueda.com/News/97.Shtml">历年中考英语出现频率较高的知识点...</a></li>
                    <li><a target="_blank" title="中考冲刺应讲究“增值”技巧" href="http://www.xueda.com/News/233.Shtml">中考冲刺应讲究“增值”技巧</a></li>
                    <li><a target="_blank" title="【中考签约】基本知识：中考校外签约程序步骤" href="http://www.xueda.com/News/103.Shtml">【中考签约】基本知识：中考校外签...</a></li>
                    <li><a target="_blank" title="指导：家长如何帮助孩子从容面对中考" href="http://www.xueda.com/News/102.Shtml">指导：家长如何帮助孩子从容面对中...</a></li>
                    <li><a target="_blank" title="专家指导：2012中考英语百日冲刺学习规划" href="http://www.xueda.com/News/101.Shtml">专家指导：2012中考英语百日冲刺学...</a></li>
                    <li><a target="_blank" title="2012年中考考生冷静备考 避开四大误区" href="http://www.xueda.com/News/96.Shtml">2012年中考考生冷静备考 避开四大...</a></li>
                    </ul>
                    
				</div>
                </div>
                <div class="qiehuan2" style="display: none;">
                <div class="items index_zixun box_33">
                    <ul class="index_zixun_1">
                    
                    <a target="_blank" href="http://www.xueda.com/News/111.Shtml">
                    
                    <img src="http://file.xueda.com/Images/no_img.jpg" width="100" height="100" /></a>
                    
                    <h1>
                    
                    <a target="_blank" href="http://www.xueda.com/News/111.Shtml">教育部:学雷锋纳入学生素质评价体系</a>
                    
                    </h1>
                    
                    根据教育部网站28日公布的教育系统深入开展学雷锋活动实施方案，各地教育部门和各级各类学校要将学雷锋活动纳入学生综合素质评价体系，纳入中小学生思想道德教育和大学生思想政治教育工作质量评...
                    <span class="color_10">
                    
                    <a target="_blank" href="http://www.xueda.com/News/111.Shtml">[详情]</a>
                    
                    </span>
                    
                    </ul>
                    
                    <ul class="dian index_zixun_2">
                    
                    <li><a target="_blank" title="新时期，如何教孩子“学雷锋”？" href="http://www.xueda.com/News/109.Shtml">新时期，如何教孩子“学雷锋”？</a></li>
                    <li><a target="_blank" title="雷锋精神的时代内涵" href="http://www.xueda.com/News/108.Shtml">雷锋精神的时代内涵</a></li>
                    <li><a target="_blank" title="小学生英语单词记忆八大方法" href="http://www.xueda.com/News/239.Shtml">小学生英语单词记忆八大方法</a></li>
                    <li><a target="_blank" title="教育部严禁幼升小选拔考试 禁提前教小学内容" href="http://www.xueda.com/News/132.Shtml">教育部严禁幼升小选拔考试 禁提前...</a></li>
                    <li><a target="_blank" title="小学班干部为何惹起大争论 不淡定的是成人" href="http://www.xueda.com/News/107.Shtml">小学班干部为何惹起大争论 不淡定...</a></li>
                    <li><a target="_blank" title="北京严禁中学组织“小升初”培训班" href="http://www.xueda.com/News/106.Shtml">北京严禁中学组织“小升初”培训班</a></li>
                    <li><a target="_blank" title="教育部力推小学初中对口入学以破解小升初难题" href="http://www.xueda.com/News/105.Shtml">教育部力推小学初中对口入学以破解...</a></li>
                    <li><a target="_blank" title="小升初较量又翻新花样 报名表开打"拼爹战"" href="http://www.xueda.com/News/104.Shtml">小升初较量又翻新花样 报名表开打"...</a></li>
                    </ul>
                    

                </div>
            </div>
            </div>
        </div>
        <div class="index_right">
            <div class="box_2 top10 w_213">
                <h1 class="w_213">
                    <span>学员之声</span> <a target="_blank" href="/News/List-6-1.html">更多>></a></h1>
                <ul class="index_kaoti" style="height: 192px;">
                    <li><a target="_blank" title="过来人分享：学习上习惯今日事今日毕" href="http://www.xueda.com/News/1782.Shtml">过来人分享：学习上习惯今...</a></li>
                    <li><a target="_blank" title="文科高分经验：数学分版块进行复习" href="http://www.xueda.com/News/1781.Shtml">文科高分经验：数学分版块...</a></li>
                    <li><a target="_blank" title="【学生来信】我想请教一下英语的学习方法和应该养成的学习习惯。" href="http://www.xueda.com/News/1757.Shtml">【学生来信】我想请教一下...</a></li>
                    <li><a target="_blank" title="家庭教育的三点误区及对策" href="http://www.xueda.com/News/1741.Shtml">家庭教育的三点误区及对策</a></li>
                    <li><a target="_blank" title="和孩子一起打赢小升初战役" href="http://www.xueda.com/News/1500.Shtml">和孩子一起打赢小升初战役</a></li>
                    <li><a target="_blank" title="我的期中考试" href="http://www.xueda.com/News/1324.Shtml">我的期中考试</a></li>
                    <li><a target="_blank" title="迎接期中考试心得" href="http://www.xueda.com/News/1321.Shtml">迎接期中考试心得</a></li>

                </ul>
            </div>
            <div class="tel_1">
                <script type="text/javascript" language="javascript">                    document.write(Get400Phone());</script>
            </div>
            <div class="box_2 top10 w_213" style="padding-bottom: 3px;">
                <h1 class="w_213" style="border-bottom: none;">
                    <span>教学视频</span></h1>
                <ul class="index_viode">
                    <li style=" height:0px;"></li>
                    <li class="viodeted"><a title="2011年高考学员战绩" class="various iframe" href="/tv/voide-1.html">
                        2011年高考学员战绩<br />
                        <img src="http://file.xueda.com/images/voide_1.jpg" />
                    </a></li>
                    <li><a class="various iframe" title="2011年学大教育品牌形象宣传片" href="/tv/voide-2.html">2011年学大教育品牌形象宣传片<br />
                        <img src="http://file.xueda.com/images/voide_2.jpg" />
                    </a></li>
                    <li><a class="various iframe" title="2011全新电视广告“知人善教”" href="/tv/voide-3.html">2011全新电视广告“知人善教”<br />
                        <img src="http://file.xueda.com/images/voide_3.jpg" />
                    </a></li>
                    <li><a class="various iframe" title="北京卫视：华尔街IPO近日升温" href="/tv/voide-4.html">北京卫视：华尔街IPO近日升温<br />
                        <img src="http://file.xueda.com/images/voide_4.jpg" />
                    </a></li>
                    <li><a class="various iframe" title="《天才进化论》宣传预告片" href="/tv/voide-5.html">《天才进化论》宣传预告片<br />
                        <img src="http://file.xueda.com/images/voide_5.jpg" />
                    </a></li>
                    <b style="height: 0px;"></b>
                </ul>
            </div>
        </div>
    </div>
    <div class="center">
    <div class="banner">
       <script type="text/javascript" id="zp_script_180" src="http://mcc.chinauma.net/static/scripts/p.js?id=180&w=1000&h=90&sl=1&delay=5" zp_type="1"></script>
    </div>
    <div class="box_2 w_998">
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
                        <a href="/School/73.Shtml" target="_blank">北师大学习中心</a>
                        <a href="/School/74.Shtml" target="_blank">航天桥学习中心</a>
                        <a href="/School/75.Shtml" target="_blank">玉泉路学习中心</a>
                        <a href="/School/76.Shtml" target="_blank">人大学习中心</a>
                        <a href="/School/77.Shtml" target="_blank">北大学习中心</a>
                        <a href="/School/78.Shtml" target="_blank">公主坟学习中心</a>
                        <a href="/School/159.Shtml" target="_blank">学院路学习中心</a>
                        <a href="/School/178.Shtml" target="_blank">远大路学习中心</a>
                        <a href="/School/195.Shtml" target="_blank">上地学习中心</a>
                        </span>
                        </li>
                        <li><b>东城区</b> <span>
                        <a href="/School/72.Shtml" target="_blank">东直门学习中心</a>
                        <a href="/School/79.Shtml" target="_blank">崇文门学习中心</a>
                        <a href="/School/236.Shtml" target="_blank">交道口菁英学堂</a>
                        <a href="/School/327.Shtml" target="_blank">夕照寺学习中心</a>
                        <a href="/School/332.Shtml" target="_blank">交道口学习中心</a>
                        </span>
                        </li>
                        <li><b>朝阳区</b> <span>
                        <a href="/School/81.Shtml" target="_blank">亚运村学习中心</a>
                        <a href="/School/82.Shtml" target="_blank">朝阳路学习中心</a>
                        <a href="/School/83.Shtml" target="_blank">和平里学习中心</a>
                        <a href="/School/84.Shtml" target="_blank">劲松学习中心</a>
                        <a href="/School/85.Shtml" target="_blank">三元桥学习中心</a>
                        <a href="/School/160.Shtml" target="_blank">望京学习中心</a>
                        <a href="/School/328.Shtml" target="_blank">团结湖学习中心</a>
                        </span>
                        </li>
                        <li><b>西城区</b> <span>
                        <a href="/School/71.Shtml" target="_blank">阜成门学习中心</a>
                        <a href="/School/80.Shtml" target="_blank">宣武门学习中心</a>
                        <a href="/School/149.Shtml" target="_blank">德胜门菁英学堂</a>
                        <a href="/School/194.Shtml" target="_blank">四中学习中心</a>
                        <a href="/School/235.Shtml" target="_blank">西直门菁英学堂</a>
                        <a href="/School/325.Shtml" target="_blank">虎坊路校区</a>
                        <a href="/School/326.Shtml" target="_blank">西便门校区</a>
                        </span>
                        </li>
                        <li><b>丰台区</b> <span>
                        <a href="/School/86.Shtml" target="_blank">方庄学习中心</a>
                        <a href="/School/335.Shtml" target="_blank">马家堡校区</a>
                        </span>
                        </li>
                        <li><b>通州区</b> <span>
                        <a href="/School/87.Shtml" target="_blank">通州学习中心</a>
                        </span>
                        </li>
                        <li><b>石景山区</b> <span>
                        <a href="/School/170.Shtml" target="_blank">石景山学习中心</a>
                        </span>
                        </li>
                        <li><b>大兴区</b> <span>
                        <a href="/School/350.Shtml" target="_blank">大兴学习中心</a>
                        </span>
                        </li>
                        <li><b>顺义区</b> <span>
                        <a href="/School/329.Shtml" target="_blank">顺义国际学习中心</a>
                        <a href="/School/330.Shtml" target="_blank">怡馨家园学习中心</a>
                        </span>
                        </li>
                        <li><b>昌平区</b> <span>
                        <a href="/School/331.Shtml" target="_blank">昌平学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc1_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/27.Shtml"  target="_blank">辽宁路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/28.Shtml"  target="_blank">宁夏路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/29.Shtml"  target="_blank">香港中路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/30.Shtml"  target="_blank">李村学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/320.Shtml"  target="_blank">黄岛开发区学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/88.Shtml"  target="_blank">黄河道学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/89.Shtml"  target="_blank">河东学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/90.Shtml"  target="_blank">友谊路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/91.Shtml"  target="_blank">红桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/92.Shtml"  target="_blank">天大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/93.Shtml"  target="_blank">塘沽学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/145.Shtml"  target="_blank">河北校区</a>
                        </dd>
                        <dd>
                        <a href="/School/172.Shtml"  target="_blank">迎水道学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/207.Shtml"  target="_blank">大港学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/244.Shtml"  target="_blank">南京路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/288.Shtml"  target="_blank">泰达千百汇学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/289.Shtml"  target="_blank">北辰学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/290.Shtml"  target="_blank">西北角学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/291.Shtml"  target="_blank">大港油田学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/292.Shtml"  target="_blank">东丽学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/314.Shtml"  target="_blank">广东路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/317.Shtml"  target="_blank">白堤路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/318.Shtml"  target="_blank">津南学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/129.Shtml"  target="_blank">山师学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/138.Shtml"  target="_blank">杆石桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/176.Shtml"  target="_blank">燕山学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/226.Shtml"  target="_blank">八一学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/227.Shtml"  target="_blank">舜耕学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/228.Shtml"  target="_blank">洪楼学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/36.Shtml"  target="_blank">东达学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/238.Shtml"  target="_blank">万达学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/239.Shtml"  target="_blank">明泽学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/240.Shtml"  target="_blank">将军衙署学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/272.Shtml"  target="_blank">桥华学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/286.Shtml"  target="_blank">长安金座学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/339.Shtml"  target="_blank">烟厂华联学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/119.Shtml"  target="_blank">世博学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/262.Shtml"  target="_blank">凤凰园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/94.Shtml"  target="_blank">裕华学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/95.Shtml"  target="_blank">光华学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/147.Shtml"  target="_blank">中华学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/133.Shtml"  target="_blank">长风学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/134.Shtml"  target="_blank">桃南学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/139.Shtml"  target="_blank">理工大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/142.Shtml"  target="_blank">太原青年路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/146.Shtml"  target="_blank">漪汾学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/287.Shtml"  target="_blank">中高考补习学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/156.Shtml"  target="_blank">包百学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/246.Shtml"  target="_blank">包头万达学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/175.Shtml"  target="_blank">中央峰景学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/259.Shtml"  target="_blank">山水华庭学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_10" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/254.Shtml"  target="_blank">东营西四路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_11" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/185.Shtml"  target="_blank">南大街学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/187.Shtml"  target="_blank">莱山学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_12" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/191.Shtml"  target="_blank">廊坊学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_13" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/209.Shtml"  target="_blank">榆次学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc1_14" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/279.Shtml"  target="_blank">同煤学习中心</a>
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
                        <a href="/School/45.Shtml"  target="_blank">同志街学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/46.Shtml"  target="_blank">西安大路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/47.Shtml"  target="_blank">汽车厂学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/48.Shtml"  target="_blank">经济开发区学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/112.Shtml"  target="_blank">红旗街学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/346.Shtml"  target="_blank">长春人民广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/347.Shtml"  target="_blank">长春佳园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/39.Shtml"  target="_blank">皇姑学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/40.Shtml"  target="_blank">和平学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/41.Shtml"  target="_blank">沈河学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/42.Shtml"  target="_blank">铁西学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/213.Shtml"  target="_blank">大东学习中心(筹建中)</a>
                        </dd>
                        <dd>
                        <a href="/School/300.Shtml"  target="_blank">铁西兴华学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/301.Shtml"  target="_blank">长白学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/2.Shtml"  target="_blank">中山学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/3.Shtml"  target="_blank">黑石礁学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/232.Shtml"  target="_blank">华南学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/297.Shtml"  target="_blank">西岗学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/298.Shtml"  target="_blank">马栏广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/337.Shtml"  target="_blank">三八广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/351.Shtml"  target="_blank">西安路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/12.Shtml"  target="_blank">南岗学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/13.Shtml"  target="_blank">开发区学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/14.Shtml"  target="_blank">道里区学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/281.Shtml"  target="_blank">和兴学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/283.Shtml"  target="_blank">哈尔滨菁英学堂</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/50.Shtml"  target="_blank">吉林市学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/349.Shtml"  target="_blank">化工学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/174.Shtml"  target="_blank">奥林学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/344.Shtml"  target="_blank">奥林学习中心景园教学点</a>
                        </dd>
                        <dd>
                        <a href="/School/345.Shtml"  target="_blank">大庆奥林学习中心新村教学点</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/214.Shtml"  target="_blank">顺城学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/215.Shtml"  target="_blank">铁东学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/260.Shtml"  target="_blank">阜新解放路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc2_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/282.Shtml"  target="_blank">卜奎学习中心</a>
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
                            

                        </ul>
                        <div id="tabboxc3_0">
                        
                        <dl>
                        <dd>
                        <a href="/School/53.Shtml"  target="_blank">浙大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/54.Shtml"  target="_blank">解放路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/55.Shtml"  target="_blank">文一学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/56.Shtml"  target="_blank">萧山学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/162.Shtml"  target="_blank">新世纪广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/182.Shtml"  target="_blank">朝晖学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/243.Shtml"  target="_blank">拱宸桥学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/265.Shtml"  target="_blank">富阳国贸学习中心(筹建中)</a>
                        </dd>
                        <dd>
                        <a href="/School/293.Shtml"  target="_blank">滨江学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/60.Shtml"  target="_blank">南大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/61.Shtml"  target="_blank">城西学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/62.Shtml"  target="_blank">城东学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/63.Shtml"  target="_blank">湖南路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/154.Shtml"  target="_blank">江宁学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/237.Shtml"  target="_blank">大厂学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/275.Shtml"  target="_blank">北京东路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/278.Shtml"  target="_blank">张府园学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_2" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>徐汇区</b> <span>
                        <a href="/School/24.Shtml" target="_blank">上海体育馆学习中心</a>
                        <a href="/School/294.Shtml" target="_blank">上中路学习中心</a>
                        <a href="/School/307.Shtml" target="_blank">田林路学习中心</a>
                        </span>
                        </li>
                        <li><b>黄浦区</b> <span>
                        <a href="/School/23.Shtml" target="_blank">人民广场学习中心</a>
                        </span>
                        </li>
                        <li><b>虹口区</b> <span>
                        <a href="/School/15.Shtml" target="_blank">虹口足球场学习中心</a>
                        <a href="/School/22.Shtml" target="_blank">和平公园学习中心</a>
                        <a href="/School/295.Shtml" target="_blank">四川北路学习中心</a>
                        </span>
                        </li>
                        <li><b>浦东新区</b> <span>
                        <a href="/School/21.Shtml" target="_blank">陆家嘴学习中心</a>
                        <a href="/School/165.Shtml" target="_blank">金桥学习中心</a>
                        <a href="/School/205.Shtml" target="_blank">耀华路学习中心</a>
                        <a href="/School/225.Shtml" target="_blank">周浦学习中心</a>
                        <a href="/School/252.Shtml" target="_blank">高桥学习中心</a>
                        <a href="/School/305.Shtml" target="_blank">羽山路学习中心</a>
                        <a href="/School/306.Shtml" target="_blank">惠南镇学习中心</a>
                        <a href="/School/342.Shtml" target="_blank">联洋花木学习中心</a>
                        <a href="/School/343.Shtml" target="_blank">川沙学习中心</a>
                        </span>
                        </li>
                        <li><b>杨浦区</b> <span>
                        <a href="/School/20.Shtml" target="_blank">五角场学习中心</a>
                        <a href="/School/253.Shtml" target="_blank">杨浦学习中心</a>
                        </span>
                        </li>
                        <li><b>长宁区</b> <span>
                        <a href="/School/19.Shtml" target="_blank">中山公园学习中心</a>
                        <a href="/School/258.Shtml" target="_blank">娄山关路学习中心</a>
                        <a href="/School/296.Shtml" target="_blank">淞虹路学习中心</a>
                        </span>
                        </li>
                        <li><b>闵行区</b> <span>
                        <a href="/School/16.Shtml" target="_blank">虹桥镇学习中心</a>
                        <a href="/School/206.Shtml" target="_blank">莘庄学习中心</a>
                        <a href="/School/284.Shtml" target="_blank">春申路学习中心</a>
                        <a href="/School/285.Shtml" target="_blank">七宝学习中心</a>
                        </span>
                        </li>
                        <li><b>闸北区</b> <span>
                        <a href="/School/18.Shtml" target="_blank">彭浦新村学习中心</a>
                        </span>
                        </li>
                        <li><b>卢湾区</b> <span>
                        <a href="/School/17.Shtml" target="_blank">卢湾中学学习中心</a>
                        </span>
                        </li>
                        <li><b>普陀区</b> <span>
                        <a href="/School/163.Shtml" target="_blank">普陀学习中心</a>
                        </span>
                        </li>
                        <li><b>宝山区</b> <span>
                        <a href="/School/164.Shtml" target="_blank">牡丹江路学习中心</a>
                        </span>
                        </li>
                        <li><b>嘉定区</b> <span>
                        <a href="/School/220.Shtml" target="_blank">嘉定学习中心</a>
                        </span>
                        </li>
                        <li><b>金山区</b> <span>
                        <a href="/School/242.Shtml" target="_blank">上海金山学习中心</a>
                        </span>
                        </li>
                        <li><b>静安区</b> <span>
                        <a href="/School/270.Shtml" target="_blank">陕西北路学习中心</a>
                        </span>
                        </li>
                        <li><b>松江区</b> <span>
                        <a href="/School/341.Shtml" target="_blank">松江学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc3_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/96.Shtml"  target="_blank">三孝口学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/97.Shtml"  target="_blank">工大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/98.Shtml"  target="_blank">元一学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/152.Shtml"  target="_blank">庐阳学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_4" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>金阊区</b> <span>
                        <a href="/School/64.Shtml" target="_blank">金阊学习中心</a>
                        </span>
                        </li>
                        <li><b>工业园区</b> <span>
                        <a href="/School/144.Shtml" target="_blank">工业园学习中心</a>
                        <a href="/School/157.Shtml" target="_blank">科文学习中心</a>
                        </span>
                        </li>
                        <li><b>高新区</b> <span>
                        <a href="/School/65.Shtml" target="_blank">新区学习中心</a>
                        </span>
                        </li>
                        <li><b>吴中区</b> <span>
                        <a href="/School/192.Shtml" target="_blank">吴中学习中心</a>
                        </span>
                        </li>
                        <li><b>沧浪区</b> <span>
                        <a href="/School/193.Shtml" target="_blank">沧浪学习中心</a>
                        </span>
                        </li>
                        <li><b>昆山市</b> <span>
                        <a href="/School/66.Shtml" target="_blank">昆山学习中心</a>
                        </span>
                        </li>
                        <li><b>常熟市</b> <span>
                        <a href="/School/67.Shtml" target="_blank">常熟学习中心</a>
                        </span>
                        </li>
                        <li><b>张家港市</b> <span>
                        <a href="/School/68.Shtml" target="_blank">张家港学习中心</a>
                        </span>
                        </li>
                        <li><b>太仓市</b> <span>
                        <a href="/School/69.Shtml" target="_blank">太仓学习中心</a>
                        </span>
                        </li>
                        <li><b>吴江市</b> <span>
                        <a href="/School/70.Shtml" target="_blank">吴江学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc3_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/135.Shtml"  target="_blank">松台广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/202.Shtml"  target="_blank">时代广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/203.Shtml"  target="_blank">瑞安广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/299.Shtml"  target="_blank">鹿城路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/315.Shtml"  target="_blank">瑞安塘下学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/316.Shtml"  target="_blank">新城学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/179.Shtml"  target="_blank">通中学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/245.Shtml"  target="_blank">通海学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/120.Shtml"  target="_blank">常州学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/171.Shtml"  target="_blank">湖塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/276.Shtml"  target="_blank">新北学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/130.Shtml"  target="_blank">江东学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/131.Shtml"  target="_blank">海曙学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/132.Shtml"  target="_blank">青少年宫学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/217.Shtml"  target="_blank">宁波银行学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/218.Shtml"  target="_blank">余姚四明学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/219.Shtml"  target="_blank">观海卫学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/250.Shtml"  target="_blank">宁波万达广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/319.Shtml"  target="_blank">双龙江南学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/338.Shtml"  target="_blank">余姚舜江学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_9" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/25.Shtml"  target="_blank">锡中学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/183.Shtml"  target="_blank">锡滨学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/264.Shtml"  target="_blank">锡宜学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/312.Shtml"  target="_blank">锡南学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_10" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/198.Shtml"  target="_blank">文昌阁学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/277.Shtml"  target="_blank">望月路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_11" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/210.Shtml"  target="_blank">花山学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_12" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/216.Shtml"  target="_blank">椒江凤凰学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/311.Shtml"  target="_blank">温岭中华路校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_13" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/57.Shtml"  target="_blank">江南世家学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_14" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/255.Shtml"  target="_blank">通润学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_15" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/256.Shtml"  target="_blank">通泰学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_16" style="display: none"   >
                        
                        <dl>
                        </dl>
                        </div>
                        <div id="tabboxc3_17" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/266.Shtml"  target="_blank">镜湖学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc3_18" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/269.Shtml"  target="_blank">通盐学习中心(筹建中)</a>
                        </dd>
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
                        <a href="/School/103.Shtml" target="_blank">天河学习中心</a>
                        <a href="/School/212.Shtml" target="_blank">燕岭学习中心</a>
                        <a href="/School/303.Shtml" target="_blank">东圃学习中心</a>
                        <a href="/School/304.Shtml" target="_blank">珠江新城学习中心</a>
                        </span>
                        </li>
                        <li><b>越秀区</b> <span>
                        <a href="/School/108.Shtml" target="_blank">五羊新城学习中心</a>
                        <a href="/School/110.Shtml" target="_blank">越秀学习中心</a>
                        <a href="/School/211.Shtml" target="_blank">文德路学习中心</a>
                        <a href="/School/321.Shtml" target="_blank">黄花岗学习中心</a>
                        <a href="/School/322.Shtml" target="_blank">环市东学习中心</a>
                        </span>
                        </li>
                        <li><b>海珠区</b> <span>
                        <a href="/School/111.Shtml" target="_blank">宝岗学习中心</a>
                        <a href="/School/143.Shtml" target="_blank">客村学习中心</a>
                        </span>
                        </li>
                        <li><b>荔湾区</b> <span>
                        <a href="/School/105.Shtml" target="_blank">荔湾学习中心</a>
                        <a href="/School/109.Shtml" target="_blank">西村学习中心</a>
                        </span>
                        </li>
                        <li><b>番禺区</b> <span>
                        <a href="/School/106.Shtml" target="_blank">番禺学习中心</a>
                        <a href="/School/107.Shtml" target="_blank">洛溪学习中心</a>
                        </span>
                        </li>
                        <li><b>黄浦区</b> <span>
                        <a href="/School/104.Shtml" target="_blank">黄埔学习中心</a>
                        </span>
                        </li>
                        <li><b>白云区</b> <span>
                        <a href="/School/102.Shtml" target="_blank">白云学习中心</a>
                        <a href="/School/188.Shtml" target="_blank">同和学习中心</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc4_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/113.Shtml"  target="_blank">孺子路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/114.Shtml"  target="_blank">师大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/115.Shtml"  target="_blank">蓝天碧水学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/161.Shtml"  target="_blank">红谷滩学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/271.Shtml"  target="_blank">上海北路学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_2" style="display: none"   >
                        
                        <ul class="three">
                        
                        <li><b>罗湖区</b> <span>
                        <a href="/School/32.Shtml" target="_blank">罗湖书城学习中心</a>
                        <a href="/School/33.Shtml" target="_blank">洪湖学习中心</a>
                        <a href="/School/267.Shtml" target="_blank">东乐学习中心</a>
                        <a href="/School/310.Shtml" target="_blank">鸿翔学习中心</a>
                        </span>
                        </li>
                        <li><b>福田区</b> <span>
                        <a href="/School/31.Shtml" target="_blank">景田学习中心</a>
                        <a href="/School/189.Shtml" target="_blank">百花学习中心</a>
                        <a href="/School/197.Shtml" target="_blank">香蜜湖学习中心</a>
                        <a href="/School/309.Shtml" target="_blank">皇岗学习中心</a>
                        </span>
                        </li>
                        <li><b>南山区</b> <span>
                        <a href="/School/35.Shtml" target="_blank">南山书城学习中心</a>
                        <a href="/School/173.Shtml" target="_blank">蛇口学习中心</a>
                        <a href="/School/336.Shtml" target="_blank">后海学习中心</a>
                        </span>
                        </li>
                        <li><b>宝安区</b> <span>
                        <a href="/School/34.Shtml" target="_blank">宝中学习中心</a>
                        <a href="/School/263.Shtml" target="_blank">宝体学习中心</a>
                        <a href="/School/268.Shtml" target="_blank">西乡学习中心</a>
                        </span>
                        </li>
                        <li><b>龙岗区</b> <span>
                        <a href="/School/184.Shtml" target="_blank">龙岗中心城学习中心</a>
                        <a href="/School/354.Shtml" target="_blank">布吉学习中心（教学点）</a>
                        </span>
                        </li>
                        </ul>
                        </div>
                        <div id="tabboxc4_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/51.Shtml"  target="_blank">鼓楼学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/52.Shtml"  target="_blank">台江学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/180.Shtml"  target="_blank">福清学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/181.Shtml"  target="_blank">金山学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/241.Shtml"  target="_blank">杨桥学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/10.Shtml"  target="_blank">西乡塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/11.Shtml"  target="_blank">兴宁学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/151.Shtml"  target="_blank">琅东学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/353.Shtml"  target="_blank">航洋国际学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/126.Shtml"  target="_blank">南城学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/127.Shtml"  target="_blank">莞城学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/128.Shtml"  target="_blank">东城学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/323.Shtml"  target="_blank">厚街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/49.Shtml"  target="_blank">禅城学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/190.Shtml"  target="_blank">亚艺公园学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/229.Shtml"  target="_blank">卫国路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/230.Shtml"  target="_blank">汾江路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_7" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/166.Shtml"  target="_blank">东平学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/167.Shtml"  target="_blank">黄冈中学学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/168.Shtml"  target="_blank">麦地学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc4_8" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/208.Shtml"  target="_blank">莲坂学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/233.Shtml"  target="_blank">思北学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/324.Shtml"  target="_blank">摩登学习中心</a>
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
                        <a href="/School/43.Shtml"  target="_blank">紫荆山学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/44.Shtml"  target="_blank">凯旋门学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/199.Shtml"  target="_blank">蜜蜂张学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/200.Shtml"  target="_blank">俭学街学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/201.Shtml"  target="_blank">经三路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/136.Shtml"  target="_blank">江岸学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/137.Shtml"  target="_blank">武昌学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/141.Shtml"  target="_blank">青年路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/177.Shtml"  target="_blank">中南学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/222.Shtml"  target="_blank">汉阳学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/223.Shtml"  target="_blank">红钢城学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/273.Shtml"  target="_blank">徐东学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/274.Shtml"  target="_blank">水果湖学习中心(筹建中)</a>
                        </dd>
                        <dd>
                        <a href="/School/280.Shtml"  target="_blank">王家湾学习中心(筹建中)</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/116.Shtml"  target="_blank">天心学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/117.Shtml"  target="_blank">东塘学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/118.Shtml"  target="_blank">开福学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/148.Shtml"  target="_blank">星沙学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/231.Shtml"  target="_blank">德政园学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/248.Shtml"  target="_blank">芙蓉南路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/308.Shtml"  target="_blank">长沙桐梓坡学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/155.Shtml"  target="_blank">株洲神农校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/158.Shtml"  target="_blank">牡丹广场学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/340.Shtml"  target="_blank">西工凯旋广场校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc5_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/224.Shtml"  target="_blank">宜昌学习中心</a>
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
                        <a href="/School/37.Shtml"  target="_blank">广场西口学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/38.Shtml"  target="_blank">阳光家园学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/249.Shtml"  target="_blank">西固虹盛学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/4.Shtml"  target="_blank">交大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/5.Shtml"  target="_blank">高新学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/6.Shtml"  target="_blank">钟楼学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/7.Shtml"  target="_blank">小寨学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/8.Shtml"  target="_blank">经开学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/186.Shtml"  target="_blank">轻工学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/150.Shtml"  target="_blank">新华街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/9.Shtml"  target="_blank">咸阳人民路学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc6_4" style="display: none"   >
                        
                        <dl>
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
                        <a href="/School/26.Shtml"  target="_blank">南明学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_1" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/99.Shtml"  target="_blank">沙坪坝学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/100.Shtml"  target="_blank">江北学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/101.Shtml"  target="_blank">解放碑学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/234.Shtml"  target="_blank">南坪学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/257.Shtml"  target="_blank">加州学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_2" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/121.Shtml"  target="_blank">双楠学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/122.Shtml"  target="_blank">八宝街学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/123.Shtml"  target="_blank">金沙学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/124.Shtml"  target="_blank">跳伞塔学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/125.Shtml"  target="_blank">科大学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/196.Shtml"  target="_blank">双流学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/221.Shtml"  target="_blank">大慈寺学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/251.Shtml"  target="_blank">浆洗街学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_3" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/58.Shtml"  target="_blank">小花园学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/59.Shtml"  target="_blank">环西路学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/140.Shtml"  target="_blank">国贸学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/204.Shtml"  target="_blank">北市区学习中心</a>
                        </dd>
                        <dd>
                        <a href="/School/313.Shtml"  target="_blank">高新国际校区</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_4" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/169.Shtml"  target="_blank">宜宾莱茵学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_5" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/247.Shtml"  target="_blank">曲靖状元楼学习中心</a>
                        </dd>
                        </dl>
                        </div>
                        <div id="tabboxc7_6" style="display: none"   >
                        
                        <dl>
                        <dd>
                        <a href="/School/153.Shtml"  target="_blank">玉溪红塔学习中心</a>
                        </dd>
                        </dl>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box_2 top10 w_998">
        <h1 class="w_998">
            <span>友情链接</span><a target="_blank" href="http://www.xueda.com/News/1277.Shtml">申请友链</a></h1>
        <div class="links">
            <ul>
                <li><a  target="_blank" href="http://edu.163.com/"> <img src="http://file.xueda.com/Links/13446FF77159430.gif"/></a></li>

            </ul>
            <ul class="linka">
                <a target="_blank" href="http://banbao.chazidian.com"> 板报网  </a>
                <a target="_blank" href="http://www.101jiajiao.com"> 家教</a>
                <a target="_blank" href="http://dongying.baixing.com"> 东营百姓网</a>
                <a target="_blank" href="http://www.usaedu.net"> 美国留学</a>
                <a target="_blank" href="http://www.dezhi.com"> 德智教育</a>
                <a target="_blank" href="http://www.01study.com/"> 源知网</a>
                <a target="_blank" href="http://www.ceoedu.com.cn"> 第一培训网</a>
                <a target="_blank" href="http://www.hhxx.com.cn/"> 好好学习网</a>
                <a target="_blank" href="http://www.xuexifangfa.com"> 学习方法网</a>
                <a target="_blank" href="http://www.114la.com"> 114啦</a>

            </ul>
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
                <a href="http://www.xueda.com/News/74.Shtml">学大简介</a> | <a href="http://jobs.xueda.com/">
                    招聘信息</a>
                <br />
                <a href="http://www.xueda.com/News/77.Shtml">社会荣誉</a> | <a href="http://www.xueda.com/News/81.Shtml">
                    联系我们</a>
                <br />
                <a href="http://www.xueda.com/News/80.Shtml">公益活动</a> | <a href="http://www.xueda.com/Topics/hezuo/index.html">
                    商务合作</a>
                <br />
                <a rel="nofollow" href="http://ir.xueda.com/">投资者关系</a> </li>
            <li>
                <h1>
                    客服中心</h1>
                全国免费咨询热线：<br />
                <span class="color_5">
                    <script type="text/javascript" language="javascript">                        document.write(Get400Phone());</script>
                </span>
                <br />
                服务时间：周一至周日8：00-23：00<br />
                <a href="javascript:;" onclick="Open()">在线咨询</a><br />
            </li>
        </ul>
    </div>
    <div class="foot_2 w_998">
        2010学大教育 京ICP备10045583号-6 京公网安备1101054826 <a href="http://www.xueda.com/News/82.Shtml">
            隐私声明</a>   <a  target=_blank href="http://www.xueda.com/sitemap.xml">站点地图</a><br />
        增值电信业务经营许可证京B2-20100091 电信与信息服务业务经营许可证京ICP证100956号
    </div>
  </body>
</html>
