package com.kemika.commons.utils;

import org.apache.commons.lang.Validate;

public class NameUtil {

	public static String toUrlFragment(String source) {
		Validate.notNull(source);
		return source.toLowerCase().replaceAll("[^A-Za-z]", "-");
	}
	
}
