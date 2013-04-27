	//文本框插件
	KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[id="content"]', {
				syncType: '', afterBlur: function(){editor1.sync();},
				cssPath : '<%=path %>/kindeditor/plugins/code/prettify.css',
				uploadJson : '<%=path %>/kindeditor/upload_json.jsp',
				fileManagerJson : '<%=path %>/kindeditor/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['saveForm'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['saveForm'].submit();
					});
				}
			});
			prettyPrint();
	});
	
	
		$(document).ready(function(){
			var $title = $("#title");
			var $firstLevel = $("#firstLevel");
			var $secondLevel = $("#secondLevel");
			var $thirdLevel = $("#thirdLevel");
			var $publishDate = $("#publishDate");
			var $content = $("#content");
			//文本框聚焦变色
			var array=[$title,$publishDate];
			$(function(){
				for(var i=0 ; i<array.length ; i++){
					array[i].focus(function(){
						$(this).addClass("focus");
					}).blur(function () {  
            	   		$(this).removeClass("focus");  
           			});  
        		}
			})
			
			//新闻添加提交验证
			$("#saveForm").submit(function(){
				if ($title.val() == "") {
					alert("文章标题不能为空!")
					$title.focus();
					return false;
				}
				else if($firstLevel.val()==""){
					alert("文章类型不能为空!")
					$firstLevel.focus();
					return false;
				}
				else if($secondLevel.get(0).options.length!=1&&$secondLevel.val()==""){
					alert("请填写二级文章类型!")
					$secondLevel.focus();
					return false;
				}
				else if($thirdLevel.get(0).options.length!=1&&$thirdLevel.val()==""){
					alert("请填写三级文章类型!")
					$thirdLevel.focus();
					return false;
				}
				else if($publishDate.val() == ""){
					alert("发布时间不能为空!")
					$publishDate.focus();
					return false;
				}
				else if($content.val() == ""){
					alert("文章内容不能为空!")
					$content.focus();
					return false;
				}
				else{
					return true;
				}
			})
			
			//是否为图片新闻
			$("#upload").hide();
			$("#uploadN").hide();
			
			$("#show").click(function(){
				$("#upload").show();
			})
			
			$("#hide").click(function(){
				$("#upload").hide();
			})
			
			//删除图片
			$("#deletePic").click(function(){
				if(confirm("是否删除图片")){
					$("#uploadN").show();
					//防止图片占用无法删除
					$("#change1").html('<input type="hidden" name="flag" value="2">');
					$("#change1").hide();
				}
			})
			//下拉菜单第一级,
			$.post("newsFirstLevel.action", 
				{typeId:$("#id").val()},
				function (data) {
					var firstLevelList = eval("("+data.callbackFirstLevel+")");
					var secondLevelList = eval("("+data.callbackSecondLevel+")");
					var thirdLevelList = eval("("+data.callbackThirdLevel+")");
					var firstSelected = data.initFirstLevel;
					var secondSelected = data.initSecondLevel;
					var thirdSelected = data.initThirdLevel;
					for (var i = 0; i < firstLevelList.length; i++) {  
						var $option = $("<option></option>");  
						$option.attr("value", firstLevelList[i].id);  
						$option.text(firstLevelList[i].name); 
						if(firstSelected==firstLevelList[i].id){
							$option.attr("selected","selected");
						}
						$("#firstLevel").append($option);  
					}  
					if(secondSelected!=null){
						for (var i = 0; i < secondLevelList.length; i++) {  
							var $option = $("<option></option>");  
							$option.attr("value", secondLevelList[i].id);  
							$option.text(secondLevelList[i].name); 
							if(secondSelected==secondLevelList[i].id){
								$option.attr("selected","selected");
							}
							$("#secondLevel").append($option);  
						}  
					}
					if(thirdSelected!=null){
						for (var i = 0; i < thirdLevelList.length; i++) {  
							var $option = $("<option></option>");  
							$option.attr("value", thirdLevelList[i].id);  
							$option.text(thirdLevelList[i].name); 
							if(thirdSelected==thirdLevelList[i].id){
								$option.attr("selected","selected");
							}
							$("#thirdLevel").append($option);  
						}  
					}
					
				},
				'json'
			)
			
			//下拉菜单第二级
			$("#firstLevel").change(function(){
				$.post("newsSecondLevel.action", 
					{Lid:$("#firstLevel").val()}, 
					function (data) {  
						$("#secondLevel option[value!='']").remove();
						$("#thirdLevel option[value!='']").remove();
						if($("#firstLevel").val()!=""){
							var jsonObj = eval("("+data.callbackLevel+")");
							for (var i = 0; i < jsonObj.length; i++) {  
								var $option = $("<option></option>");  
								$option.attr("value", jsonObj[i].id);  
								$option.text(jsonObj[i].name); 
								$("#secondLevel").append($option);  
							}  
						}
					},
					'json'
				)
			})
			
			//下拉菜单第三级
			$("#secondLevel").change(function(){
					$.post("newsThirdLevel.action", 
						{Lid:$("#secondLevel").val()}, 
						function (data) {  
							$("#thirdLevel option[value!='']").remove();
							if($("#secondLevel").val()!=""){
								var jsonObj = eval("("+data.callbackLevel+")");
								for (var i = 0; i < jsonObj.length; i++) {  
									var $option = $("<option></option>");  
									$option.attr("value", jsonObj[i].id);  
									$option.text(jsonObj[i].name); 
									$("#thirdLevel").append($option);  
								}  
							}
						},
						'json'
					)
			})
		})