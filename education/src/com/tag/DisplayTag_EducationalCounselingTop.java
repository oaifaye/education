package com.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.bean.EducationalCounseling;
import com.service.EducationalCounselingService;

public class DisplayTag_EducationalCounselingTop extends TagSupport{
	private String eduCounselingSecondId;
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		WebApplicationContext wc = WebApplicationContextUtils.getRequiredWebApplicationContext(pageContext.getServletContext());
		EducationalCounselingService educationalCounselingService = (EducationalCounselingService) wc.getBean("educationalCounselingService");
		List<EducationalCounseling> educationalCounselingList = educationalCounselingService.findEducationalCounselingBySecondId(eduCounselingSecondId);
		//取第一篇文章，然后然后将</p>换成</br>，去掉其余html标签
		if(educationalCounselingList.size()!=0){
			String content = educationalCounselingList.get(0).getContent().replaceAll("</p>","aiFaye").replaceAll("</?[^>]+>","").replaceAll("aiFaye","</br>");
			if(content.length()>100){
				content=content.substring(0, 100)+"...";
			}
			try {
				out.print("<span>");
				out.print("<a target=\"_blank\"  title=\""+educationalCounselingList.get(0).getEduCounselingTitle()+"\" href=\"fDetaileducationalCounseling.action?educationalCounselingId="+educationalCounselingList.get(0).getId()+"\" >");
				out.print("<img src=\"imgUpload/"+educationalCounselingList.get(0).getPicName()+"\" alt="+educationalCounselingList.get(0).getEduCounselingTitle()+" width=\"136\" height=\"136\" />");
				out.print("</a>");
				out.print("</span>");
				out.print("<h2><a target=\"_blank\" title=\""+educationalCounselingList.get(0).getEduCounselingTitle()+"\" href=\"fDetaileducationalCounseling.action?educationalCounselingId="+educationalCounselingList.get(0).getId()+"\">"+educationalCounselingList.get(0).getEduCounselingTitle()+"</a></h2>");
				out.print("<br>");
				out.print("<br>");
				out.print(content);
				out.print("<span class=\"color_10\">");
				out.print("<a  target=\"_blank\" title=\""+educationalCounselingList.get(0).getEduCounselingTitle()+"\" href=\"fDetaileducationalCounseling.action?educationalCounselingId="+educationalCounselingList.get(0).getId()+"\">[详情]</a>");
				out.print("</span>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return super.doEndTag();
	}
	
	
	public String getEduCounselingSecondId() {
		return eduCounselingSecondId;
	}
	public void setEduCounselingSecondId(String eduCounselingSecondId) {
		this.eduCounselingSecondId = eduCounselingSecondId;
	}
	
	
}

