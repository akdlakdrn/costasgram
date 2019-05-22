package com.cos.costagram.util;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.cos.costagram.model.User;

public class UtilCos {
	
	public static String getResourcePath() {
		return "D://instagram//costagram//src//main//resources//static//image//";
	}
	

	
	public static List<String> tagParser(String tags){
		String temp[] = tags.split("#");
		List<String> tagList = new ArrayList<String>();
		int len = temp.length;
		for(int i=1; i<len; i++) {
			tagList.add(temp[i]);
		}
		return tagList;
	}
}
