	
$(function(){
	//文本域最多字数
	$("textarea").blur(function(){
		if($(this).val().length>2000){
			alert($(this).attr("id")+"内容不能超过2000字");
		}
	});
});