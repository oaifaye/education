<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<script type="text/javascript">
		//分页查询
		function pagerControl(currentPage,gradeId,courseId){
			//alert(gradeId+"..."+courseId);
			if(gradeId==""&&courseId==""){
				document.pageForm.action="fListgoodStudent.action?state=1"+"&currentPage="+currentPage;
			}else if(gradeId==""){
				document.pageForm.action="fListgoodStudent.action?state=1&courseId="+courseId+"&currentPage="+currentPage;
			}else if(courseId==""){
				document.pageForm.action="fListgoodStudent.action?state=1&gradeId="+gradeId+"&currentPage="+currentPage;
			}else{
				document.pageForm.action="fListgoodStudent.action?state=1&gradeId="+gradeId+"&courseId="+courseId;
			}
			document.pageForm.submit();
		}
		
	</script>

  </head>
  
  <body>
  <%@ include file="../include/front_top.jsp"%>
   	<div class="center">
       <%@ include file="../include/front_navigation_goodStudent.jsp" %>
        <div class="left">
            <div class="box_1 w_738">
                <h1>
                    <span><b id="box_5">学生案例</b></span>
                </h1>
                <div class="class_1">
                    <ul id="solid_bottom">
                        <li id="xueke">年级:</li>
                        <li>
                        	<s:if test="gradeNameSelect==null">
                        		<a class="selectedr" href="<%=basePath %>fListgoodStudent.action?state=1">全部</a>
                        	</s:if>
                        	<s:else>
                        		<a href="<%=basePath %>fListgoodStudent.action?state=1">全部</a>
                        	</s:else>
							<s:iterator value="allGrades">
                        		<s:if test="gradeName==gradeNameSelect">
                        			<a class="selectedr" href="<%=basePath %>fListgoodStudent.action?state=1&gradeId=<s:property value="id"/>"><s:property value="gradeName"/></a>
                        		</s:if>
                        		<s:else>
                        			<a href="<%=basePath %>fListgoodStudent.action?state=1&gradeId=<s:property value="id"/>"><s:property value="gradeName"/></a>
                        		</s:else>
                        	</s:iterator>
                        </li>
                    </ul>
                    <ul id="solid_bottom">
                        <li id="xueke">学科:</li>
                        <li>
                        	<s:if test="courseNameSelect==null">
                        		<a class="selectedr" href="<%=basePath %>fListgoodStudent.action?state=1">全部</a>
                        	</s:if>
                        	<s:else>
                        		<a href="<%=basePath %>fListgoodStudent.action?state=1">全部</a>
                        	</s:else>
							<s:iterator value="allCourses">
                        		<s:if test="courseNameSelect==courseName">
                        			<a class="selectedr" href="<%=basePath %>fListgoodStudent.action?state=1&gradeId=<s:property value="gradeId"/>&courseId=<s:property value="id"/>"><s:property value="courseName"/></a>
                                </s:if>
                                <s:else>
                                	<a href="<%=basePath %>fListgoodStudent.action?state=1&gradeId=<s:property value="gradeId"/>&courseId=<s:property value="id"/>"><s:property value="courseName"/></a>
                                </s:else>
                            </s:iterator>
                        </li>
                    </ul>
                </div>
                <div class="class_2">
                	<s:iterator value="paginationSupport.items">
                        <ul>
                            <li>
                            	<b>
                            		<a class="fl" target="_blank" title="<s:property value="studentName"/>" href="<%=basePath %>fDetailgoodStudent.action?goodStudentId=<s:property value="id"/>">
                            			<s:property value="studentName"/>
                            		</a>
                            	</b>
                            </li>
                            <li>
                            	<span class="fudao">
                            		辅导前:<b class="color_1"><s:property value="beforeStudy"/></b>分 
                            		辅导后:<b class="color_2"><s:property value="behindStudy"/></b>分
                            	</span>
                            </li>
                            <li>所在年级:
                            	<a title="<s:property value="gradeInfo.gradeName"/>" target="_blank"  href="<%=basePath %>fListyiDuiYi.action?state=1&gradeId=<s:property value="gradeInfo.id"/>">
                                	<s:property value="gradeInfo.gradeName"/>
                            	</a>|
                            	 辅导科目：
                            	 <a title="<s:property value="courseInfo.courseName"/>" target="_blank" href="<%=basePath %>fListyiDuiYi.action?state=1&gradeId=<s:property value="gradeInfo.id"/>&courseId=<s:property value="courseInfo.id"/>">
									<s:property value="courseInfo.courseName"/>
                                </a>|
								辅导老师：
								<a title="<s:property value="allTeacher.allTeacherName"/>" target="_blank" href="http://tianjin.xueda.com/Teacher/3513.Shtml">
									<s:property value="allTeacher.allTeacherName"/>
								</a>|
								辅导校区：
								<a title="<s:property value="campusInfo.campusName"/>" target="_blank"  href="<%=basePath %>fDetailcampus.action?campusId=<s:property value="campusInfo.id"/>">
									<s:property value="campusInfo.campusName"/>
								</a>
                            </li>
                        </ul> 
                     </s:iterator>
                </div>
            </div>
            
            <%@ include file="../include/front_pageNavigation.jsp"%>
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

</body>
</html>

