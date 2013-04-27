package getMACAddress;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

public class GetMACAddress {
	public String getMACAddress(String ipAddress) {
		String str = "", strMAC = "", macAddress = "";
		try {
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
		return macAddress;
	}

	public static void main(String[] args) {
		GetMACAddress getMACAddress = new GetMACAddress();
		System.out.println(getMACAddress.getMACAddress("192.168.60.11")); // 获得该ip地址的mac地址
	}

//	public static String procAll(String str) {
//		return procStringEnd(procFirstMac(procAddress(str)));
//	}
//
//	public static String procAddress(String str) {
//		int indexof = str.indexOf("Physical Address");
//		if (indexof > 0) {
//			return str.substring(indexof, str.length());
//		}
//		return str;
//	}
//
//	public static String procFirstMac(String str) {
//		int indexof = str.indexOf(":");
//		if (indexof > 0) {
//			return str.substring(indexof + 1, str.length()).trim();
//		}
//		return str;
//	}
//
//	public static String procStringEnd(String str) {
//		int indexof = str.indexOf("\r");
//		if (indexof > 0) {
//			return str.substring(0, indexof).trim();
//		}
//		return str;
//	}
}
