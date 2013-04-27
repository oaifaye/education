		$(function(){			
			//定义DWRUtil，否则报错
			if (typeof window["DWRUtil"] == "undefined") {  
        		window.DWRUtil = dwr.util;  
    		}  
    		//初始化辅导年级,“修改”中初始化年级与课目
			managerAction.getMACAddress(
					function(data){
					}
			);
		});