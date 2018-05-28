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
	 * api获取新闻数据
	 * */
	public List<Map<String, Object>> getAppNewsService(int[] appids);
	
	/*
	 * 执行更新操作
	 * */
	public boolean updateAppNewsService(List<Map<String, Object>> appNewsList);
	
	/*
	 * 更新APP库
	 * */
	public boolean updateAppListService();
	
	/*
	 * 获取随机8条APP库数据
	 * */
	public List<Map<String, Object>> getAppRandomService();
	
	/*
	 * 获取数据库用户资料
	 * */
	public List<Map<String, Object>> getUserService();
	
	/*
	 * 获取数据库饰品资料
	 * */
	public List<Map<String, Object>> getItemService();
	
	/*
	 * 获取数据库用户资料
	 * */
	public boolean updateUserService(User user);
	
	/*
	 * 获取指定appname的appid
	 * */
	public Map<String, Object> getAppIdByappNameService(String appname);
	
	/*
	 * 获取数据库用户资料
	 * */
	public List<Map<String, Object>> getApplistDbService();
	
	/*
	 * 更新选定app
	 * */
	public boolean updateAppService(App app);
	
	/*
	 * 上传饰品
	 * */
	public boolean uploadItem(Item item, MultipartFile itempicturefile);
	
	/*
	 * 更新饰品
	 * */
	public boolean updateItem(Item item, MultipartFile itempicturefile);
	
	/*
	 * 删除饰品
	 * */
	public boolean deleteItem(Item item);
	
	
	/*
	 * 插入推送app
	 * */
	public boolean insertAppPushService(AppPush appPush);
}
