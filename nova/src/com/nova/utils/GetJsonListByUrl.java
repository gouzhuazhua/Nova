package com.nova.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class GetJsonListByUrl {
	public final static ObjectMapper objectMapper = new ObjectMapper(); 
	
	/*¶ÁÈ¡json×Ö·û´®*/
	public static String loadJson(String url) {
		StringBuilder json = new StringBuilder();
		try {
			URL steamurl = new URL(url);
			URLConnection uc = steamurl.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream(), "utf-8"));
			String inputLine = "";
			while((inputLine = in.readLine()) != null){
				json.append(inputLine);
			}
			in.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "httpError";
//			e.printStackTrace();
		}
		String jsonString = json.toString();
		if(Pattern.compile("\\[").matcher(jsonString).find()){
			if(Pattern.compile("playerstats").matcher(jsonString).find()){
				int index = jsonString.indexOf("[");
				int lastIndex = jsonString.indexOf("]");
				return jsonString.substring(index, lastIndex+1);
			}
			int index = jsonString.indexOf("[");
			int lastIndex = jsonString.lastIndexOf("]");
			return jsonString.substring(index, lastIndex+1);
		}else {
			int index = jsonString.lastIndexOf("{");
			int lastIndex = jsonString.indexOf("}");
			return jsonString.substring(index, lastIndex+1);
		}
		
	}
	
	/*json×Ö·û´®×ªList<Map<String, Object>>*/
	public static List<Map<String, Object>> jsonStringToList(String jsonString) throws JsonGenerationException, JsonMappingException, IOException {

		return objectMapper.readValue(jsonString, List.class); 
	}
	
	public static Map<String, Object> jsonStringToMap(String jsonString) {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> map = null;
		try {
			map=mapper.readValue(jsonString, Map.class);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
}
