package com.hfut.util;

import java.util.Map;

public class WebUtil {
	public static final int MAX_PAGE_LINES = 4;
	
    public static String getMapData(Map<String, String> map, String key) {
    	if (map == null) return "";
    	
        String msg = map.get(key);
        return (msg == null) ? "" : msg;
    }
}
