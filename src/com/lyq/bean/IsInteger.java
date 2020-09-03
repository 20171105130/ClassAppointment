package com.lyq.bean;

import java.util.regex.Pattern;

public class IsInteger {
    public static boolean isInteger(String str) {
        Pattern pattern = Pattern.compile("^[\\d]+$");
        return pattern.matcher(str).matches();
    }
}