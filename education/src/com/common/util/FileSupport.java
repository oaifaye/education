package com.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.apache.struts2.ServletActionContext;

/**
 * 文件操作工具类
 * */
public class FileSupport {
	/**
	 * 文件上传
	 * @param uploadFileName 上传时文件的文件名
	 * @param uploadFile 上传的文件对象
	 * @param realPath 项目根目录开始的路径（不以'/'开头）
	 * @return String fileName 数据库中存放的文件名
	 * */
	public String filesUpload(String uploadFileName ,File uploadFile,String realPath){
		//文件重命名
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String formatDate = format.format(new Date());
		int random = new Random().nextInt(10000);
		int position = uploadFileName.lastIndexOf(".");
		String extension = uploadFileName.substring(position);
		String fileName = formatDate+random+extension;
		//图片上传
		FileInputStream uploadFileIs;
		String root = ServletActionContext.getServletContext().getRealPath("/"+realPath);
		try {
			uploadFileIs = new FileInputStream(uploadFile);
			FileOutputStream uploadFileOs = new FileOutputStream(root+"\\"+fileName);
		 	byte[] buffer = new byte[1024];
		 	int len = 0;
		 	try {
				while((len=uploadFileIs.read(buffer))>0){
					uploadFileOs.write(buffer,0,len);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}finally{
				try {
					uploadFileIs.close();
					uploadFileOs.close();
				} catch (IOException e) {
				e.printStackTrace();
			}}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return fileName;
	}
}
