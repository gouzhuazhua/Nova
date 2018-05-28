package com.nova.dao;

import java.util.List;
import java.util.Map;

import com.nova.po.App;
import com.nova.po.AppNews;
import com.nova.po.AppPush;
import com.nova.po.Item;
import com.nova.po.User;

public interface AdminDao {
	/*
	 * �������ſ�app_news
	 * */
	public void updateAppNews(AppNews appNews);
	
	/*
	 *�������ſ�app_news:������ʷ���ݣ�ʹ��insert
	 */
	public void insertAppNews(AppNews appNews);
	
	/*
	 * ���APP��
	 * */
	public void truncateAppList();
	
	/*
	 * ����APP��app_list
	 * */
	public void insertAppList(App app);
	
	/*
	 * ��ȡ���8��APP������
	 * */
	public List<Map<String, Object>> selectAppRandom();
	
	/*
	 * ��ȡ�û�����
	 * */
	public List<Map<String, Object>> selectUser();
	
	/*
	 * �����û�user
	 * */
	public int updateUser(User user);
	
	/*
	 * ����ѡ��app
	 * */
	public int updateApp(App app);
	
	/*
	 * ������Ʒ
	 * */
	public int insertItem(Item item);
	
	/*
	 * ������Ʒ
	 * */
	public int updateItem(Item item);
	
	/*
	 * ɾ����Ʒ
	 * */
	public int deleteItem(int id);
	
	/*
	 * �����ݿ��ȡapp_list
	 * */
	public List<Map<String, Object>> selectAppListDb();
	
	/*
	 * �����ݿ��ȡitem_list
	 * */
	public List<Map<String, Object>> selectItemListDb();
	
	/*
	 * ����appname��ȡappid
	 * */
	public Map<String, Object> selectAppIdByAppName(String appname);
	
	/*
	 * ��������app
	 * */
	public int insertAppPush(AppPush appPush);
}
