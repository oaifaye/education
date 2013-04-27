package com.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.bean.GoodStudent;
import com.service.GoodStudentService;

public class DisplayTag_GoodStudentList extends TagSupport {

	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		WebApplicationContext wc = WebApplicationContextUtils.getRequiredWebApplicationContext(pageContext.getServletContext());
		GoodStudentService goodStudentService = (GoodStudentService) wc.getBean("goodStudentService");
		List<GoodStudent> goodStudentList = goodStudentService.findAllGoodStudent();
		
		try {
			out.println("<h1 class=\"w_213\">");
			out.println("<span style=\"padding-right: 130px;\">明星学员</span>");
			out.println("<a href=\"fListgoodStudent.action?state=1\">更多>></a>");
			out.println("</h1>");
			out.println("<ul>");
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		if(goodStudentList.size()<3&&goodStudentList.size()!=0){
			try {
				for (GoodStudent goodStudent : goodStudentList) {
					
					out.println("<li>");
					out.println("<a target=\"_blank\" href=\"fDetailgoodStudent.action?goodStudentId="+goodStudent.getId()+"\">"+goodStudent.getStudentName()+"</a>-");	
					out.println("<span class=\"color_4\">");
					out.println("<a target=\"_blank\" href=\"#\">"+goodStudent.getCampusInfo().getCampusName()+"</a>");
					out.println("</span><br />");
					out.println("辅导科目1:<a target=\"_blank\" title=\""+goodStudent.getCourseInfo().getCourseName()+"  href=\"fListyiDuiYi.action?state=1&gradeId="+goodStudent.getGradeInfo().getId()+"&courseId="+goodStudent.getCourseInfo().getId()+"\">"+goodStudent.getCourseInfo().getCourseName()+"</a><br />");
					out.println("辅导前:<span class=\"color_1\">"+goodStudent.getBeforeStudy()+"</span>分 ");
					out.println("辅导后:<span class=\"color_2\">"+goodStudent.getBehindStudy()+"</span>分 ");
					out.println("</li>");
					
				}
				out.println("</ul>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				for(int i=0;i<=2;i++){
					out.println("<li>");
					out.println("<a target=\"_blank\" href=\"fDetailgoodStudent.action?goodStudentId="+goodStudentList.get(i).getId()+"\">"+goodStudentList.get(i).getStudentName()+"</a>-");	
					out.println("<span class=\"color_4\">");
					out.println("<a target=\"_blank\" href=\"#\">"+goodStudentList.get(i).getCampusInfo().getCampusName()+"</a>");
					out.println("</span><br />");
					out.println("辅导科目:<a target=\"_blank\" title=\""+goodStudentList.get(i).getCourseInfo().getCourseName()+"\"  href=\"fListyiDuiYi.action?state=1&gradeId="+goodStudentList.get(i).getGradeInfo().getId()+"&courseId="+goodStudentList.get(i).getCourseInfo().getId()+"\">"+goodStudentList.get(i).getCourseInfo().getCourseName()+"</a><br />");
					out.println("辅导前:<span class=\"color_1\">"+goodStudentList.get(i).getBeforeStudy()+"</span>分 ");
					out.println("辅导后:<span class=\"color_2\">"+goodStudentList.get(i).getBehindStudy()+"</span>分 ");
					out.println("</li>");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			out.println("</ul>");
		} catch (IOException e) {
			e.printStackTrace();
		}
			return super.doEndTag();
	}
}
