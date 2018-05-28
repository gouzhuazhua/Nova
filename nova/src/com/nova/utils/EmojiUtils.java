package com.nova.utils;

public class EmojiUtils {
	
	/*
	 * ¿Õ¸ñ·ûÌæ»»emoji
	 * */
	public static String removeNonBmpUnicode(String str) {    
		   if (str == null) {    
		       return null;    
		   }    
		   str = str.replaceAll("[^\\u0000-\\uFFFF]", "");    
		   return str;    
		}    
}
