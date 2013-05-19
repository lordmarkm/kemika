package com.kemika.web.dto;

import java.util.HashMap;

public class JSON extends HashMap<String, Object> {

	public static final String KEY_STATUS = "status";
	
	public static final String STATUS_OK = "OK";
	
	private static final long serialVersionUID = 1L;

	public static JSON ok() {
		JSON j = new JSON();
		return j.add(KEY_STATUS, STATUS_OK);
	}
	
	public JSON add(String key, Object val) {
		this.put(key, val);
		return this;
	}
	
}
