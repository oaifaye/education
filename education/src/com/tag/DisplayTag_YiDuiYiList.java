package com.tag;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.bean.CourseInfo;
import com.service.InfoService;

public class DisplayTag_YiDuiYiList extends TagSupport {
	private String gradeId;
	
	public String getGradeId() {
		return gradeId;
	}

	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
	}

	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		WebApplicationContext wc = WebApplicationContextUtils.getRequiredWebApplicationContext(pageContext.getServletContext());
		 InfoService infoService = (InfoService) wc.getBean("infoService");
		 List<CourseInfo> courseList = infoService.findCourseByGrade(gradeId);
		 try {
				for (CourseInfo courseInfo : courseList) {
					out.println("<a href=\"fListyiDuiYi.action?state=1&gradeId="+gradeId+"&courseId="+courseInfo.getId()+"\" target=\"_self\">"+courseInfo.getCourseName()+"</a>|");	
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			return super.doEndTag();
	}
}
