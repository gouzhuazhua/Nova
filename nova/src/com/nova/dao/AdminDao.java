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
	 * 更新新闻库app_news
	 * */
	public void updateAppNews(AppNews appNews);
	
	/*
	 *更新新闻库app_news:保留历史数据，使用insert
	 */
	public void insertAppNews(AppNews appNews);
	
	/*
	 * 清空APP库
	 * */
	public void truncateAppList();
	
	/*
	 * 更新APP库app_list
	 * */
	public void insertAppList(App app);
	
	/*
	 * 获取随机8条APP库数据
	 * */
	public List<Map<String, Object>> selectAppRandom();
	
	/*
	 * 获取用户资料
	 * */
	public List<Map<String, Object>> selectUser();
	
	/*
	 * 更新用户user
	 * */
	public int updateUser(User user);
	
	/*
	 * 更新选定app
	 * */
	public int updateApp(App app);
	
	/*
	 * 插入饰品
	 * */
	public int insertItem(Item item);
	
	/*
	 * 更新饰品
	 * */
	public int updateItem(Item item);
	
	/*
	 * 删除饰品
	 * */
	public int deleteItem(int id);
	
	/*
	 * 从数据库获取app_list
	 * */
	public List<Map<String, Object>> selectAppListDb();
	
	/*
	 * 从数据库获取item_list
	 * */
	public List<Map<String, Object>> selectItemListDb();
	
	/*
	 * 根据appname获取appid
	 * */
	public Map<String, Object> selectAppIdByAppName(String appname);
	
	/*
	 * 插入推送app
	 * */
	public int insertAppPush(AppPush appPush);
}
