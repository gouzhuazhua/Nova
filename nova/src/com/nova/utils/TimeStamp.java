package com.nova.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeStamp {
	public static String getTimeStamp(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
		String date = df.format(new Date());// new Date()Ϊ��ȡ��ǰϵͳʱ�䣬Ҳ��ʹ�õ�ǰʱ���
		
		return date;
	}

}
