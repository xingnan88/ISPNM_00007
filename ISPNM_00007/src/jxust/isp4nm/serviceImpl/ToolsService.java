package jxust.isp4nm.serviceImpl;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class ToolsService {
	public static int parseToInt(String str) {
		int i = 0;
		if (str == null || str == "") {
			return i;
		}
		try {
			i = Integer.parseInt(str);
		} catch (NumberFormatException e) {
			return i;
		}
		return i;
	}

	public static int parseToInt(Object obj) {
		Integer i;
		try {
			i = new Integer(obj.toString());
		} catch (NumberFormatException nfe) {
			System.out.println("parseToInt:Object --exception");
			i = 0;
		}
		return i;
	}

	public static String toChinese(String str) {
		String toCast = "";
		try {
			toCast = new String(str.getBytes("iso-8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return toCast;
	}

	public static int[] spilt(String tarStr, String regex) {
		String[] resultStr = tarStr.split(regex);
		int[] result = new int[resultStr.length];
		for (int i = 0; i < resultStr.length; i++) {
			result[i] = parseToInt(resultStr[i]);
		}
		return result;
	}

	/*
	 * 功能说明： 1，根据给定的字符串返回所有可能的子串。
	 */
	public static List<String> mySpilt(String str) {
		//
		if (str.matches("^.+工程$")) {
			str = str.substring(0, str.length() - 2);
		}
		//
		int length = str.length();
		List<String> strList = new ArrayList<String>();
		// 首先判断字符串长度是否小于或等于1，如果是就返回仅含有该字符串本身的数组列表。
		if (length < 4) {
			strList.add(str);
			return strList;
		} else {
			if (length == 4) {
				strList.add(str.substring(0, 2));
				strList.add(str.substring(2, 4));
			}
			if (length >= 5) {
				strList.add(str.substring(0, 2));
				strList.add(str.substring(2, length));
				strList.add(str.substring(0, 3));
				strList.add(str.substring(3, length));
			}
			return strList;
		}

	}

	@SuppressWarnings("unchecked")
	public static Object getFieldValue(String name, Object obj) {
		Object tarValue = new Object();
		Class cla = obj.getClass();
		PropertyDescriptor pd;
		Method getMethod;
		try {
			pd = new PropertyDescriptor(name, cla);
			getMethod = pd.getReadMethod();
			tarValue = getMethod.invoke(obj);
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tarValue;
	}

	public static void main(String[] args) {
		// String tarStr = "1:2:3:4:5:";
		// int[] result = spilt(tarStr, ":");
		// System.out.println(result.length);
		// for (int i = 0; i < result.length; i++) {
		// System.out.print(result[i]);
		// }
		// System.out.println();
		// System.out.println("".length());
		// String[] strArr=new String[0];
		// System.out.println(strArr.length);
		// System.out.println(strArr[0]);
		// String str1 = "String";
		// System.out.println(str.getClass().getSimpleName() == str1);
		// System.out.println(str.getClass().getSimpleName().equals(str1));
		// System.out.println(str.getClass().getSimpleName().matches(str1));

		List<String> strList = new ArrayList<String>();
		strList = mySpilt("内蒙古");
		for (String str : strList) {
			System.out.println(str);
		}

		String str = "软件工程";
		if (str.matches(".*工程$")) {
			System.out.println(str.substring(0, str.length() - 2));
		}
	}
}
