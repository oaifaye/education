<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校区管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery.js" language="javascript" type="text/javascript"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.title{
			font-size:28px;
			font-weight:bold ;
		}
		.title1{
			font-weight:bold ;
			text-align:center;
			background:#FFFFFF;
		}
		.title2{
			font-weight:bold ;
		}
        table {
			font-family: "宋体";
			font-size: 14px;
        }

        table tbody tr td {
			height: 40px; 
			overflow: hidden; 
			text-overflow:ellipsis;
			padding: 3px;
        }
		.foot{
			background:#FFFFFF;
		}
		a{color: #000000;text-decoration: none;}
		a:hover{color: #ff0000;text-decoration: underline;cursor:pointer}
		
    </style>
    
    <script language="JavaScript">
        //获取url参数
		var str=window.location.href;
		//截取最后的“/”与"."之间的字符串作为selected的id
		var selectedId=str.substring(str.lastIndexOf('/')+1,str.lastIndexOf('.action'));
    	$(document).ready(function(){
    		
    		$("#"+selectedId).attr("selected",true)
    		
			$("#newsType").change(function(){
				if($("#newsType").val()!=""){
					location=$("#newsType").val();
				}else{
					location="<%=basePath%>backend/listNews.jsp"
				}
			});
			
			$("#newsType option").click(function(){
				if($("#newsType").val()!=""){
					location=$("#newsType").val();
				}else{
					location="<%=basePath%>backend/listNews.jsp"
				}
			});
			
			//每页显示行数
			$("#pageSizeList").change(function(){
				document.newsForm.action=selectedId+".action?state=1";
				document.newsForm.submit();
			})
			
		});
    	function paginate(currentPage) {
			document.newsForm.action=selectedId+".action?currentPage="+currentPage+"&state=1";
			document.newsForm.submit();
		}
		
		function del(newsType){
			flag = false;
			var ids = document.getElementsByName("ids");
			for(i = 0; i < ids.length; i++){
				if(ids[i].checked == true){
				flag = true;
				break;
				} 
			}
			if(flag == false){
				alert("至少选择一条记录！！");
			}
			else{
				if(confirm("新闻删除后将永久删除\n确定删除新闻？")) {
					document.newsForm.action=newsType+".action";
					document.newsForm.submit();
				}	
			}
		}
		
		function selectAll(sender){
			var chkList = document.getElementsByName("ids"); 		
			for(var i=0; i<chkList.length; i++) { 
		  	 chkList[i].checked = sender.checked; 
			} 
		}
	</script>		
  </head>
  
  <body>
  		<s:form name="newsForm" theme="simple" id="newsForm">
  			<table width="80%" border="0" align="center" cellpadding="10" cellspacing="1" bgcolor="#CCCCCC">
  				<tr align="center"><td colspan="9" bgcolor="#FFFFFF" style="height:50px;"><a class="title">文章管理</a></td></tr>
				<tr align="center" bgcolor="#E7F0F9">
    				<td align="left" colspan="9" style="font-weight:bold ;">
    					选择文章类型
        				<select id="newsType" class="newsType">
							<option value="">--请选择文章类别--</option>
							<option id="listcampus" value="<%=basePath%>listcampus.action">学习中心(校区)</option>
							<option id="listproTeacher" value="<%=basePath%>listproTeacher.action">优秀教师</option>
							<option id="listallTeacher" value="<%=basePath%>listallTeacher.action">教师名录</option>
							<option id="listyiDuiYi" value="<%=basePath%>listyiDuiYi.action?state='1'">一对一辅导</option>
							<option id="listgoodStudent" value="<%=basePath%>listgoodStudent.action">明星学员</option>
							<option id="listeducationalCounseling" value="<%=basePath%>listeducationalCounseling.action">教育资讯</option>
						</select>
     				</td>
				</tr>
				<s:if test="paginationSupport.items.size!=0">
					<!-- 校区start -->
					<s:if test="paginationSupport.items.get(0).campusName!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('delcampus')" >删除</a>
    					</td>
        				<td>所属地区</td>
        				<td>校区名称</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; overflow: hidden;text-overflow:ellipsis" ><NOBR><s:property value="regionSecondInfo.regSecondName"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="campusName"/></NOBR></DIV></td>
        				<td align="center">
        					<s:a action="updatecampus" >
								<s:param name="campusInfo.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    			</s:if>
    			<!-- 校区end -->
    			<!-- 优秀教师start -->
    			<s:if test="paginationSupport.items.get(0).proTeacherName!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('removeproTeacher')" >删除</a>   
    					</td>
        				<td>优秀教师姓名</td>
        				<td>辅导年级</td>
						<td>辅导科目</td>
						<td>所在校区</td>
						<td>发布日期</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#E7F0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="proTeacherName"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="gradeInfo.gradeName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="courseInfo.courseName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="campusInfo.campusName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:date name="publicDate" format="yyyy-MM-dd" /></NOBR></DIV></td>
        				<td align="center" STYLE="width: 120px; ">
        					<s:a action="updateproTeacher" >
								<s:param name="prominentTeacher.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    				</s:if>
    				<!-- 优秀教师end -->
    				<!-- 教师名录start -->
    				<s:if test="paginationSupport.items.get(0).allTeacherName!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('removeallTeacher')" >删除</a>   
    					</td>
        				<td>教师姓名</td>
        				<td>辅导年级</td>
						<td>辅导科目</td>
						<td>所在校区</td>
						<td>发布日期</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#E7F0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="allTeacherName"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="gradeInfo.gradeName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="courseInfo.courseName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="campusInfo.campusName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:date name="publicDate" format="yyyy-MM-dd" /></NOBR></DIV></td>
        				<td align="center" STYLE="width: 120px; ">
        					<s:a action="updateallTeacher" >
								<s:param name="allTeacher.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    			</s:if>
    			<!-- 教师名录end -->
    			<!-- 一对一start -->
    			<s:if test="paginationSupport.items.get(0).regulations!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('removeyiDuiYi')" >删除</a>   
    					</td>
        				<td>提高班名称</td>
        				<td>辅导年级</td>
						<td>辅导科目</td>
						<td>发布日期</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#E7F0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="title"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="gradeInfo.gradeName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="courseInfo.courseName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:date name="publicDate" format="yyyy-MM-dd" /></NOBR></DIV></td>
        				<td align="center" STYLE="width: 120px; ">
        					<s:a action="updateyiDuiYi" >
								<s:param name="yiDuiYi.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    			</s:if>
    			<!-- 一对一end -->
    			<!-- 明星学员start -->
    			<s:if test="paginationSupport.items.get(0).studentName!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('removegoodStudent')" >删除</a>   
    					</td>
        				<td>学员姓名</td>
        				<td>所在年级</td>
						<td>辅导科目</td>
						<td>辅导老师</td>
						<td>辅导校区</td>
						<td>发布日期</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#E7F0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="studentName"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="gradeInfo.gradeName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="courseInfo.courseName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="allTeacher.allTeacherName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="campusInfo.campusName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:date name="publicDate" format="yyyy-MM-dd" /></NOBR></DIV></td>
        				<td align="center" STYLE="width: 120px; ">
        					<s:a action="updategoodStudent" >
								<s:param name="goodStudent.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    			</s:if>
    			<!-- 明星学员end -->
    			<!-- 教育资讯start -->
    			<s:if test="paginationSupport.items.get(0).eduCounselingTitle!=null">
    				<tr class="title1">
    					<td>
    						<input type="checkbox"  onclick="selectAll(this)"/>
    						<a href="javascript:del('removeeducationalCounseling')" >删除</a>   
    					</td>
        				<td>教育资讯标题</td>
        				<td>所属栏目</td>
						<td>发布日期</td>
						<td>是否置顶</td>
						<td>操作</td>
    				</tr>
    				<s:iterator value="paginationSupport.items" status='st'>
    					<s:if test="#st.odd">
    						<tr bgcolor="#E7F0F9">
    					</s:if>
    					<s:else>
        					<tr bgcolor="#FFFFFF">
        				</s:else>
        				<td align="center"><input type="checkbox" name="ids" value='${id}'/></td>
        				<td align="center"><DIV STYLE="width: 120px; overflow: hidden;text-overflow:ellipsis" ><NOBR><s:property value="eduCounselingTitle"/></NOBR></DIV></td>  	
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:property value="eduCounselingSecondInfo.eduCounselingSecondName"/></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 120px; " ><NOBR><s:date name="publicDate" format="yyyy-MM-dd" /></NOBR></DIV></td>
        				<td align="center"><DIV STYLE="width: 100px;">
        					<NOBR>
        						<s:if test='displayOrder == "0"'>否</s:if>
        						<s:else>是</s:else>
        					</NOBR>
        				</DIV></td>
        				<td align="center" STYLE="width: 120px; ">
        					<s:a action="updateeducationalCounseling" >
								<s:param name="educationalCounseling.id" value="id"></s:param>
								修改
							</s:a>
						</td>
    				</s:iterator>
    			</s:if>
    			<!-- 教育资讯end -->
    				<tr class="foot">
						<td colspan="9" align="right">	
            				共${paginationSupport.totalCount}条&nbsp;
            				第${currentPage}页&nbsp;
							每页显示<s:select id="pageSizeList" name="pageSize" list="%{#{'5':'5','10':'10','15':'15'}}"theme="simple"></s:select>条数据
							<a href="javascript:paginate(${1})">首页</a>
							<a href="javascript:paginate(${paginationSupport.previousPage})">上一页</a>
							<a href="javascript:paginate(${paginationSupport.nextPage})">下一页</a>
							<a href="javascript:paginate(${paginationSupport.lastPage})">尾页</a>
        				</td>
					</tr>    
   				</s:if>
			</table>
		</s:form>
  </body>
</html>
