$(document).ready(function(){
			//index.jsp校区查询最新公告选项卡、campus.jsp中心介绍与师资历练选项卡
			$("#tabmenu1 li").mouseover(function(){
				 if (!$(this).hasClass('current')){ 
					$(this).addClass("current").siblings().removeClass();    
					$(".qiehuan").attr("style","display:none;");
					$(".qiehuan:eq("+$('#tabmenu1 > li').index(this)+")").attr("style","display:block;");
				 }
			});
			
			//index.jsp教育资讯选项卡
			$("#tabmenu2 li").mouseover(function(){
				 if (!$(this).hasClass('current')){ 
					$(this).addClass("current").siblings().removeClass();    
					$(".qiehuan2").attr("style","display:none;");
					$(".qiehuan2:eq("+$('#tabmenu2 > li').index(this)+")").attr("style","display:block;");
				 }
			});
		});