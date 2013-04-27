//文本框聚焦变色(需jquery.js)
		$(function(){
			for(var i=0 ; i<array.length ; i++){
				array[i].focus(function(){
					$(this).addClass("focus");
				}).blur(function () {  
               		$(this).removeClass("focus");  
           		});  
        	}
		})
		
		