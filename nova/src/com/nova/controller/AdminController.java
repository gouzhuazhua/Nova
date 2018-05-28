package com.nova.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nova.po.App;
import com.nova.po.AppNews;
import com.nova.po.AppPush;
import com.nova.po.Item;
import com.nova.po.User;
import com.nova.service.AdminService;
import com.nova.utils.TimeStamp;

@Controller
@RequestMapping(value="admin")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="/update-app-news-get", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateAppNewsAppid(int[] ids, HttpSession session) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		List<Map<String, Object>> appNewsAll = adminService.getAppNewsService(ids);
		session.setAttribute("appNewsAll", appNewsAll);
		String appNewsListJson = mapper.writeValueAsString(appNewsAll);
		
		return appNewsListJson;
	}
	
	@RequestMapping(value="/update-app-news-set", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateAppNews(HttpSession session) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		List<Map<String, Object>> appNewsAll = (List<Map<String, Object>>) session.getAttribute("appNewsAll");
		if(adminService.updateAppNewsService(appNewsAll)){
			return mapper.writeValueAsString("数据库更新新闻成功");
		}
		return mapper.writeValueAsString("数据库更新新闻失败");
	}
	
	@RequestMapping(value="/update-app-list", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateAppList() throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(adminService.updateAppListService()){
			//List<Map<String, Object>> apprandom = adminService.getAppRandomService();
			return mapper.writeValueAsString("更新APP库成功");
		}
		return mapper.writeValueAsString("更新APP库失败");
	}
	
	@RequestMapping(value="/get-user", produces="text/html;charset=utf-8")
	@ResponseBody
	public String getUser() throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(adminService.getUserService() != null){
			List<Map<String, Object>> users = adminService.getUserService();
			String usersJson = mapper.writeValueAsString(users);
			return usersJson;
		}
		return mapper.writeValueAsString("获取用户资料失败");
	}
	
	@RequestMapping(value="/update-user", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateUser(User user) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(user != null){
			if(adminService.updateUserService(user)){
				String msgJson = mapper.writeValueAsString("用户资料更新成功");
				return msgJson;
			}
			return mapper.writeValueAsString("用户资料更新失败");
		}
		return mapper.writeValueAsString("用户为空");
	}
	
	@RequestMapping(value="/query-appid-json", produces="text/html;charset=utf-8")
	@ResponseBody
	public String getAppIdByJson(String appname) throws JsonProcessingException{
		Map<String, Object> app = adminService.getAppIdByappNameService(appname);
		ObjectMapper mapper = new ObjectMapper();
		String appJson = mapper.writeValueAsString(app);
		return appJson;
	}
	
	
	@RequestMapping(value="/get-app-list-db", produces="text/html;charset=utf-8")
	@ResponseBody
	public String getAppListDb() throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		List<Map<String, Object>> applist = adminService.getApplistDbService();
		if(applist != null){
			String appListJson = mapper.writeValueAsString(applist);
			return appListJson;
		}else{
			return mapper.writeValueAsString("APPLIST获取失败");
		}
	}
	
	@RequestMapping(value="/update-app", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateApp(App app) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(app != null){
			if(adminService.updateAppService(app)){
				return mapper.writeValueAsString("APP更新成功");
			}
			return mapper.writeValueAsString("APP更新失败");
		}else{
			return mapper.writeValueAsString("APP为空");
		}
	}
	
	@RequestMapping(value="/upload-item", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	@ResponseBody
	public String uploadItem(Item item, @RequestParam(value="itempicture", required=true) MultipartFile itempicturefile) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		//System.out.println(item.getItemname() + "\n" + itempicturefile.getOriginalFilename());
		//service操作
		if(adminService.uploadItem(item, itempicturefile)){
			return mapper.writeValueAsString("上传成功");
		}
		return mapper.writeValueAsString("上传失败");
	}
	
	@RequestMapping(value="/update-item", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateItem(Item item, @RequestParam(value="itempicture", required=true) MultipartFile itempicturefile) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		System.out.println(item.getItemname() + "\n" + itempicturefile.getOriginalFilename());
		//service操作
		if(adminService.updateItem(item, itempicturefile)){
			return mapper.writeValueAsString("更新成功");
		}
		return mapper.writeValueAsString("更新失败");
	}
	
	@RequestMapping(value="/delete-item", produces="text/html;charset=utf-8")
	@ResponseBody
	public String deleteItem(Item item) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		//service操作
		if(adminService.deleteItem(item)){
			return mapper.writeValueAsString("删除成功");
		}
		return mapper.writeValueAsString("删除失败");
	}
	
	@RequestMapping(value="/insert-app-push")
	public String insertAppPush(AppPush appPush, RedirectAttributes attr) {
		if(adminService.insertAppPushService(appPush)) {
			attr.addFlashAttribute("date", "["+TimeStamp.getTimeStamp()+"]");
			attr.addFlashAttribute("msg", "插入推送APP成功！");
			return "redirect:../admin-appPush";
		}
		attr.addFlashAttribute("date", "["+TimeStamp.getTimeStamp()+"]");
		attr.addFlashAttribute("msg", "插入推送APP失败！");
		return "redirect:../admin-appPush";
		
	}
	
}
