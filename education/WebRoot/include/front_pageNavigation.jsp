<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
	<style type="text/css">
		.pagecount{float:left; _float:none;width:718px; padding:10px;  border-bottom:1px solid #e6e6e6; border-left:1px solid #e6e6e6;border-right:1px solid #e6e6e6; line-height:35px; position:relative; text-align:center; background:#fff;}
		.pagecount a{ padding:5px 7px; border:1px solid #e1e1e1; color:#666; }
		.pagecount a:hover,.current{border:1px solid #cc9933; background-color:#ff9933; color:#FFFFFF;text-decoration:none;}
	</style>
	<!-- JS需使用function pagerControl(currentPage,typeID),@param currentPage 要跳转的页数,@param typeID 文章类型的id -->
  </head>
  <body>
	<s:form name="pageForm">
    	<div class="pagecount">
    		<!-- 当前页数为1 -->
			<s:if test="currentPage==1">
            	<a>首页</a>&nbsp;&nbsp;
            	<a>上一页</a>&nbsp;&nbsp;
            </s:if>
            <s:else>
            	<a href="javascript:pagerControl(1,'${param1}','${param2}')">首页</a>&nbsp;&nbsp;
            	<a href="javascript:pagerControl(${paginationSupport.previousPage},'${param1}','${param2}')">上一页</a>&nbsp;&nbsp;
            </s:else>
            <!-- 当前页大于3时 -->
            <s:if test="currentPage>3">
            	<a href="javascript:pagerControl(${currentPage-3},'${param1}','${param2}')">...</a>&nbsp;&nbsp;
            </s:if>
            <!-- 当前页大于2时 -->
            <s:if test="currentPage>2">
            	<a href="javascript:pagerControl(${currentPage-2},'${param1}','${param2}')">${currentPage-2}</a>&nbsp;&nbsp;
            </s:if>
            <!-- 当前页大于1时 -->
            <s:if test="currentPage>1">
            	<a href="javascript:pagerControl(${currentPage-1},'${param1}','${param2}')">${currentPage-1}</a>&nbsp;&nbsp;
            </s:if>
            <!-- 当前页 -->
            	<a class="current">${currentPage}</a>&nbsp;&nbsp;
            <!-- 当前页小于总页数时 -->
            <s:if test="paginationSupport.lastPage-currentPage>0">
            	<a href="javascript:pagerControl(${currentPage+1},'${param1}','${param2}')">${currentPage+1}</a>&nbsp;&nbsp;
            </s:if>
            <!-- 当前页比总页数小1以上时 -->
            <s:if test="paginationSupport.lastPage-currentPage>1">
            	<a href="javascript:pagerControl(${currentPage+2},'${param1}','${param2}')">${currentPage+2}</a>&nbsp;&nbsp;
            </s:if>
            <!-- 当前页比总页数小2以上时 -->
     		<s:if test="paginationSupport.lastPage-currentPage>2">
     		  	<a href="javascript:pagerControl(${currentPage+3},'${param1}','${param2}')">...</a>&nbsp;&nbsp;
     		</s:if>
     		<!-- 当前页数与总页数相等 -->
     		<s:if test="currentPage==paginationSupport.lastPage">
            	<a>下一页</a>&nbsp;&nbsp;
            	<a>末页</a>&nbsp;&nbsp;
            </s:if>
            <s:else>
            	<a href="javascript:pagerControl(${paginationSupport.nextPage},'${param1}','${param2}')">下一页</a>&nbsp;&nbsp; 
            	<a href="javascript:pagerControl(${paginationSupport.lastPage},'${param1}','${param2}')">末页</a>
            </s:else>
		</div>
    </s:form>
  </body>
</html>
