package jxust.isp4nm.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

public class Tools {
	/**
	 * 获取扩展名的方法
	 */
	public static String getExtension(String name) {		
		return name.substring(name.lastIndexOf(".") + 1);
	}
	public static String getNowTime() {
		SimpleDateFormat fileFormatter = new SimpleDateFormat(
				"yyyyMMddHHmmssSSS");		
		Date dNow = new Date();
		return fileFormatter.format(dNow);
	}
	public static String getRealPath(String path){
		return ServletActionContext.getServletContext().getRealPath(path);
	}
	
	
	/**
	 * 截图
	 */
	public static boolean change(String ffmpegPath, String videoPath,
			String imgPath) {
		List<String> commend = new java.util.ArrayList<String>();
		commend.add(ffmpegPath);
		commend.add("-i");
		commend.add(videoPath);
		commend.add("-y");
		commend.add("-f");
		commend.add("image2");
		commend.add("-ss");
		commend.add("2");
		commend.add("-t");
		commend.add("0.001");
		commend.add("-s");
		commend.add("320x240 ");
		commend.add(imgPath);

		try {
			ProcessBuilder builder = new ProcessBuilder();
			builder.command(commend);
			builder.start();
			 //Process.exec(commend);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	public static String SubStr(String string){
		int length=15;
		if (string.length()<=length) {
			return string;
		}else {
			return string.substring(0, length);
		}
		
	}
}
