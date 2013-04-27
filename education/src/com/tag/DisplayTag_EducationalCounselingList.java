package com.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.bean.EducationalCounseling;
import com.bean.GoodStudent;
import com.service.EducationalCounselingService;
import com.service.GoodStudentService;

public class DisplayTag_EducationalCounselingList extends TagSupport {
	private String eduCounselingSecondId;
	private Integer quantity;//确定新闻从第几条开始
	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		WebApplicationContext wc = WebApplicationContextUtils.getRequiredWebApplicationContext(pageContext.getServletContext());
		EducationalCounselingService educationalCounselingService = (EducationalCounselingService) wc.getBean("educationalCounselingService");
		List<EducationalCounseling> eduCounselingList = educationalCounselingService.findEducationalCounselingBySecondId(eduCounselingSecondId);
		int s;
		int m;
		if(eduCounselingList.size()!=0&&quantity!=null){
			if(eduCounselingList.size()<quantity+5){
				s=eduCounselingList.size();
			}else{
				s=quantity+5;
			}
			m=quantity;
			for(int i=m;i<s;i++){
				try {
					out.print("<li>");
					out.print("<a target=\"_blank\"  title=\""+eduCounselingList.get(i).getEduCounselingTitle()+"\" href=\"fDetaileducationalCounseling.action?educationalCounselingId="+eduCounselingList.get(i).getId()+"\" >"+eduCounselingList.get(i).getEduCounselingTitle()+"</a></li>");
					out.print("</li>");
				} catch (IOException e) {
					e.printStackTrace();
				}
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

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	
	
	
}
