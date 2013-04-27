package com.action;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Manager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ManagerService;



public class ManagerAction extends ActionSupport {
	ManagerService managerService;
	private String username;
	private String password;
	
	// -------------------------- 功能开发 start --------------------------
	/**
	 * 后台登陆验证
	 * */
	public String login()throws Exception{
		Manager manager=managerService.getLoginPerson(username, password);
		if(manager==null){
			addFieldError("error","用户名或密码错");
			return ERROR;
		}else{
			ActionContext.getContext().getSession().put("manager", manager);
			ActionContext.getContext().getSession().put("managerUserName", username);
			return SUCCESS;
		}
	}

	
	
	// -------------------------- 功能开发 end ----------------------------
	
	// -------------------------- get&&set start --------------------------
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public ManagerService getManagerService() {
		return managerService;
	}



	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	
	// -------------------------- get&&set end --------------------------

	
	//---------------------------------
	public String getMACAddress() {
		String str = "", strMAC = "", macAddress = "";
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String ipAddress = request.getRemoteAddr();
			Process pp = Runtime.getRuntime().exec("nbtstat -a " + ipAddress);
			InputStreamReader ir = new InputStreamReader(pp.getInputStream());
			LineNumberReader input = new LineNumberReader(ir);
			for (int i = 1; i < 100; i++) {
				str = input.readLine();
				if (str != null) {
					if (str.indexOf("MAC Address") > 1) {
						strMAC = str.substring(str.indexOf("MAC Address") + 14,
								str.length());
						break;
					}
				}
			}
		} catch (IOException ex) {
			return "Can't Get MAC Address!";
		}
		//
		if (strMAC.length() < 17) {
			return "Error!";
		}

		macAddress = strMAC.substring(0, 2) + ":" + strMAC.substring(3, 5)
				+ ":" + strMAC.substring(6, 8) + ":" + strMAC.substring(9, 11)
				+ ":" + strMAC.substring(12, 14) + ":"
				+ strMAC.substring(15, 17);
		//
		System.out.println(macAddress);
		return macAddress;
	}
}
