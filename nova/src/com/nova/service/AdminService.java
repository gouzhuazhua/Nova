package com.nova.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.nova.po.App;
import com.nova.po.AppPush;
import com.nova.po.Item;
import com.nova.po.User;

public interface AdminService {
	/*
	 * api��ȡ��������
	 * */
	public List<Map<String, Object>> getAppNewsService(int[] appids);
	
	/*
	 * ִ�и��²���
	 * */
	public boolean updateAppNewsService(List<Map<String, Object>> appNewsList);
	
	/*
	 * ����APP��
	 * */
	public boolean updateAppListService();
	
	/*
	 * ��ȡ���8��APP������
	 * */
	public List<Map<String, Object>> getAppRandomService();
	
	/*
	 * ��ȡ���ݿ��û�����
	 * */
	public List<Map<String, Object>> getUserService();
	
	/*
	 * ��ȡ���ݿ���Ʒ����
	 * */
	public List<Map<String, Object>> getItemService();
	
	/*
	 * ��ȡ���ݿ��û�����
	 * */
	public boolean updateUserService(User user);
	
	/*
	 * ��ȡָ��appname��appid
	 * */
	public Map<String, Object> getAppIdByappNameService(String appname);
	
	/*
	 * ��ȡ���ݿ��û�����
	 * */
	public List<Map<String, Object>> getApplistDbService();
	
	/*
	 * ����ѡ��app
	 * */
	public boolean updateAppService(App app);
	
	/*
	 * �ϴ���Ʒ
	 * */
	public boolean uploadItem(Item item, MultipartFile itempicturefile);
	
	/*
	 * ������Ʒ
	 * */
	public boolean updateItem(Item item, MultipartFile itempicturefile);
	
	/*
	 * ɾ����Ʒ
	 * */
	public boolean deleteItem(Item item);
	
	
	/*
	 * ��������app
	 * */
	public boolean insertAppPushService(AppPush appPush);
}
