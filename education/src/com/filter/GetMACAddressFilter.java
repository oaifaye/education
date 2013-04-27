package com.filter;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

public class GetMACAddressFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		String str = "", strMAC = "", macAddress = "";
		try {
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
			System.out.println("111");
		}
		//
		if (strMAC.length() == 18) {
			System.out.println("222");
			macAddress = strMAC.substring(0, 2) + ":" + strMAC.substring(3, 5)
					+ ":" + strMAC.substring(6, 8) + ":" + strMAC.substring(9, 11)
					+ ":" + strMAC.substring(12, 14) + ":"
					+ strMAC.substring(15, 17);
		}

		
		//
		System.out.println(macAddress);
		chain.doFilter(request, response);

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
