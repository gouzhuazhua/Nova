package com.nova.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.nova.dao.AdminDao;
import com.nova.po.App;
import com.nova.po.AppNews;
import com.nova.po.AppPush;
import com.nova.po.Item;
import com.nova.po.User;
import com.nova.service.AdminService;
import com.nova.utils.EmojiUtils;
import com.nova.utils.GetJsonListByUrl;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<Map<String, Object>> getAppNewsService(int[] appids) {
		// TODO Auto-generated method stub
		List<Map<String, Object>> appNews = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> appNewsAll = new ArrayList<Map<String, Object>>();
		for(int appid : appids){
			String url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=" + appid + "&count=2";
			try {
				String jsonString = GetJsonListByUrl.loadJson(url);
				appNews = GetJsonListByUrl.jsonStringToList(jsonString);
				for(Map<String, Object> news : appNews){
					appNewsAll.add(news);
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return appNewsAll;
	}

	
	@Override
	public boolean updateAppNewsService(List<Map<String, Object>> appNewsAll) {
		// TODO Auto-generated method stub
		AppNews appNews = new AppNews();
		for(int i=0; i<appNewsAll.size(); i++){
			//appNews.setId((j+1) + i*2);
			appNews.setGid(appNewsAll.get(i).get("gid").toString());
			appNews.setTitle(appNewsAll.get(i).get("title").toString());
			appNews.setUrl(appNewsAll.get(i).get("url").toString());
			if(appNewsAll.get(i).get("is_external_url").toString().equals("true")){
				appNews.setIsExternalUrl(1);
			}else{
				appNews.setIsExternalUrl(0);
			}
			appNews.setAuthor(appNewsAll.get(i).get("author").toString());
			appNews.setContents(appNewsAll.get(i).get("contents").toString());
			appNews.setFeedlabel(appNewsAll.get(i).get("feedlabel").toString());
			appNews.setDate(appNewsAll.get(i).get("date").toString());
			appNews.setFeedname(appNewsAll.get(i).get("feedname").toString());
			appNews.setFeedType(Integer.valueOf(appNewsAll.get(i).get("feed_type").toString()));
			appNews.setAppid(Integer.valueOf(appNewsAll.get(i).get("appid").toString()));
			
			adminDao.insertAppNews(appNews);
		}
		return true;
	}


	@Override
	public boolean updateAppListService() {
		// TODO Auto-generated method stub
		List<Map<String, Object>> appList = new ArrayList<Map<String, Object>>();
		App app = new App();
		String url = "https://api.steampowered.com/ISteamApps/GetAppList/v2/";
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			appList = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		adminDao.truncateAppList();
		for(int i=0; i<appList.size(); i++){
			app.setId(i);
			app.setAppid(Integer.valueOf(appList.get(i).get("appid").toString()));
			app.setAppname(EmojiUtils.removeNonBmpUnicode(appList.get(i).get("name").toString()));

			adminDao.insertAppList(app);
		}
		return true;
	}


	@Override
	public List<Map<String, Object>> getAppRandomService() {
		// TODO Auto-generated method stub
		return adminDao.selectAppRandom();
	}


	@Override
	public Map<String, Object> getAppIdByappNameService(String appname) {
		// TODO Auto-generated method stub
		return adminDao.selectAppIdByAppName(appname);
	}


	@Override
	public boolean insertAppPushService(AppPush appPush) {
		// TODO Auto-generated method stub
		int i = adminDao.insertAppPush(appPush);
		if(i>0) {
			return true;
		}else {
			return false;
		}
	}


	@Override
	public List<Map<String, Object>> getUserService() {
		// TODO Auto-generated method stub
		return adminDao.selectUser();
	}


	@Override
	public boolean updateUserService(User user) {
		// TODO Auto-generated method stub
		int i = adminDao.updateUser(user);
		if(i>0) {
			return true;
		}else {
			return false;
		}
	}


	@Override
	public List<Map<String, Object>> getApplistDbService() {
		// TODO Auto-generated method stub
		return adminDao.selectAppListDb();
	}


	@Override
	public boolean updateAppService(App app) {
		// TODO Auto-generated method stub
		int i = adminDao.updateApp(app);
		if(i>0) {
			return true;
		}else {
			return false;
		}
	}


	@Override
	public boolean uploadItem(Item item, MultipartFile itempicturefile) {
		// TODO Auto-generated method stub
		if(itempicturefile != null && item != null){
			//将饰品图片保存至本地服务器
			String picPath = "E:\\workspace\\nova\\WebContent\\statics\\user-res\\picture";
			String picName = itempicturefile.getOriginalFilename();
			File targetFile = new File(picPath, picName);
			if(!targetFile.exists()){
				targetFile.mkdirs();
			}
			try {
				itempicturefile.transferTo(targetFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//图片相对地址
			String picUrl = "/itempic/" + picName;
			
			//将图片详细保存至数据库
			item.setItemaddress(picUrl);
			int i = adminDao.insertItem(item);
			if(i>0){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
		
	}


	@Override
	public List<Map<String, Object>> getItemService() {
		// TODO Auto-generated method stub
		return adminDao.selectItemListDb();
	}


	@Override
	public boolean updateItem(Item item, MultipartFile itempicturefile) {
		// TODO Auto-generated method stub
		if(itempicturefile != null && item != null){
			//将饰品图片保存至本地服务器
			String picPath = "E:\\workspace\\nova\\WebContent\\statics\\user-res\\picture";
			String picName = itempicturefile.getOriginalFilename();
			
			File targetFile = new File(picPath, picName);
			if(!targetFile.exists()){
				targetFile.mkdirs();
			}
			try {
				itempicturefile.transferTo(targetFile);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//图片相对地址
			String picUrl = "/itempic/" + picName;
			
			//将图片详细保存至数据库
			item.setItemaddress(picUrl);
			int i = adminDao.updateItem(item);
			if(i>0){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}


	@Override
	public boolean deleteItem(Item item) {
		// TODO Auto-generated method stub
		int i = adminDao.deleteItem(item.getId());
		if(i>0){
			return true;
		}else{
			return false;
		}
	}





}
