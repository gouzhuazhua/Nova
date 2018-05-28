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
			return mapper.writeValueAsString("���ݿ�������ųɹ�");
		}
		return mapper.writeValueAsString("���ݿ��������ʧ��");
	}
	
	@RequestMapping(value="/update-app-list", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateAppList() throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(adminService.updateAppListService()){
			//List<Map<String, Object>> apprandom = adminService.getAppRandomService();
			return mapper.writeValueAsString("����APP��ɹ�");
		}
		return mapper.writeValueAsString("����APP��ʧ��");
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
		return mapper.writeValueAsString("��ȡ�û�����ʧ��");
	}
	
	@RequestMapping(value="/update-user", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateUser(User user) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(user != null){
			if(adminService.updateUserService(user)){
				String msgJson = mapper.writeValueAsString("�û����ϸ��³ɹ�");
				return msgJson;
			}
			return mapper.writeValueAsString("�û����ϸ���ʧ��");
		}
		return mapper.writeValueAsString("�û�Ϊ��");
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
			return mapper.writeValueAsString("APPLIST��ȡʧ��");
		}
	}
	
	@RequestMapping(value="/update-app", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateApp(App app) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(app != null){
			if(adminService.updateAppService(app)){
				return mapper.writeValueAsString("APP���³ɹ�");
			}
			return mapper.writeValueAsString("APP����ʧ��");
		}else{
			return mapper.writeValueAsString("APPΪ��");
		}
	}
	
	@RequestMapping(value="/upload-item", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	@ResponseBody
	public String uploadItem(Item item, @RequestParam(value="itempicture", required=true) MultipartFile itempicturefile) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		//System.out.println(item.getItemname() + "\n" + itempicturefile.getOriginalFilename());
		//service����
		if(adminService.uploadItem(item, itempicturefile)){
			return mapper.writeValueAsString("�ϴ��ɹ�");
		}
		return mapper.writeValueAsString("�ϴ�ʧ��");
	}
	
	@RequestMapping(value="/update-item", method=RequestMethod.POST, produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateItem(Item item, @RequestParam(value="itempicture", required=true) MultipartFile itempicturefile) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		System.out.println(item.getItemname() + "\n" + itempicturefile.getOriginalFilename());
		//service����
		if(adminService.updateItem(item, itempicturefile)){
			return mapper.writeValueAsString("���³ɹ�");
		}
		return mapper.writeValueAsString("����ʧ��");
	}
	
	@RequestMapping(value="/delete-item", produces="text/html;charset=utf-8")
	@ResponseBody
	public String deleteItem(Item item) throws IllegalStateException, IOException{
		ObjectMapper mapper = new ObjectMapper();
		//service����
		if(adminService.deleteItem(item)){
			return mapper.writeValueAsString("ɾ���ɹ�");
		}
		return mapper.writeValueAsString("ɾ��ʧ��");
	}
	
	@RequestMapping(value="/insert-app-push")
	public String insertAppPush(AppPush appPush, RedirectAttributes attr) {
		if(adminService.insertAppPushService(appPush)) {
			attr.addFlashAttribute("date", "["+TimeStamp.getTimeStamp()+"]");
			attr.addFlashAttribute("msg", "��������APP�ɹ���");
			return "redirect:../admin-appPush";
		}
		attr.addFlashAttribute("date", "["+TimeStamp.getTimeStamp()+"]");
		attr.addFlashAttribute("msg", "��������APPʧ�ܣ�");
		return "redirect:../admin-appPush";
		
	}
	
}
