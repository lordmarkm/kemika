package com.kemika.web.utils;

import java.io.UnsupportedEncodingException;

import org.junit.Test;
import org.springframework.web.util.UriUtils;

public class URIEncodingTest {
	
	@Test
	public void testEncode() throws UnsupportedEncodingException {
		System.out.println(UriUtils.encodeFragment("Health & lifestyle", "utf-8"));
	}

}
