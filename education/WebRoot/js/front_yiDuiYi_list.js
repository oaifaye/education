//导航
function navigationControl(typeID){
	document.navigationForm.action="frontClassList.action?typeID="+typeID;
	document.navigationForm.submit();
}

//分页查询
function pagerControl(currentPage,typeID){
	document.pageForm.action="frontClassList.action?typeID="+typeID+"&currentPage="+currentPage;
	document.pageForm.submit();
}