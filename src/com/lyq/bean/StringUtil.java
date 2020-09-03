package com.lyq.bean;

public class StringUtil {
	/*
     * 判断字符串是否为空
     */
    public static boolean isEmpty(String str) {
        if (str == null || "".equals(str.trim())) { //trim() 函数移除字符串两侧的空白字符或其他预定义字符
            return true;
        } else {
            return false;
        }
    }
    public static boolean isNotEmpty(String str) {
        if (str != null && !"".equals(str.trim())) {
            return true;
        } else {
            return false;
        }
    }
    

}
