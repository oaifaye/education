		$(function(){			
			//定义DWRUtil，否则报错
			if (typeof window["DWRUtil"] == "undefined") {  
        		window.DWRUtil = dwr.util;  
    		}  
    		//初始化辅导年级,“修改”中初始化年级与课目
			infoService.findAllGradeToMap(
				
				function(data){
					DWRUtil.removeAllOptions("allGrade"); 
					DWRUtil.addOptions("allGrade", ["--请选择--"]); 
     				DWRUtil.addOptions("allGrade", data); 
     				//确定辅导年级选中项
     				if($("#gradeId").val()!=""){
     					infoService.gradeSelected($("#gradeId").val(),
							function(data){
								DWRUtil.setValue("allGrade",data);
							}
						);
					}
					
     				if($("#courseId").val()!=""){
     					infoService.findCourseMapByGrade($("#gradeId").val(),
							function(data){
								DWRUtil.removeAllOptions("courseMap"); 
								DWRUtil.addOptions("courseMap", ["--请选择--"]); 
     							DWRUtil.addOptions("courseMap", data); 
     							//确定辅导课目选中项
     	     					infoService.courseSelected($("#courseId").val(),
     	     						function(data){
     	     							DWRUtil.setValue("courseMap",data);
     	     						}
     	     					);
							}
						);
     					
     				}
				}
			);
			//根据辅导年级id初始化科目下拉框
			$("#allGrade").change(function(){
				if($(this).val()!=""){
					infoService.findCourseMapByGrade($("#allGrade").val(),
						function(data){
							DWRUtil.removeAllOptions("courseMap"); 
							DWRUtil.addOptions("courseMap", ["--请选择--"]); 
     						DWRUtil.addOptions("courseMap", data); 
						}
					);
				}
			});
		});