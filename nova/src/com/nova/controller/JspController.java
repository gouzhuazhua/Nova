package com.nova.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nova.dao.JspDao;
import com.nova.po.User;
import com.nova.service.AdminService;
import com.nova.service.JspService;

@Controller
public class JspController {
	
	@Autowired
	JspService jspService;
	
	@Autowired
	AdminService adminService;
	
	/*
	 * 用户页面导航
	 * */
	@RequestMapping(value="/index.htm")
	public String index(Model model) {
		List<Map<String, Object>> appNewsList = jspService.getAppNewsFromDbService();
		model.addAttribute("appNewsList", appNewsList);
		return "index";
	}
	
	@RequestMapping(value="/login-form")
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping(value="/register-form")
	public String registerForm() {
		return "registerForm";
	}
	
	@RequestMapping(value="/account-setting")
	public String accountSetting(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		Map<String, Object> userMap = jspService.getPlayerInfoService(user.getUsername());
		user.setEmail(userMap.get("email").toString());
		user.setUserphone(userMap.get("userphone").toString());
		user.setSteamid(userMap.get("steamid").toString());
		user.setPassword(userMap.get("password").toString());
		
		model.addAttribute("user", user);
		return "accountSetting";
	}
	
	@RequestMapping(value="validate-passwordOld", produces="text/html;charset=utf-8")
	@ResponseBody
	public String validatePasswordOld(String passwordOld, HttpServletRequest request) throws JsonProcessingException{
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		Map<String, Object> userMap = jspService.getPlayerInfoService(user.getUsername());
		ObjectMapper mapper = new ObjectMapper();
		String passwordJson = mapper.writeValueAsString(userMap.get("password").toString());
		
		return passwordJson;
		
	}
	
	
	@RequestMapping(value="/home")
	public String toHome() {
		return "home";
	}
	
	@RequestMapping(value="/data")
	public String data(Model model) {
		List<Map<String, Object>> playerCountList = jspService.getPlayerCountService();
		Map<String, Object> ware = jspService.getPlayerWareService();
		
		model.addAttribute("playerCountList", playerCountList);
		model.addAttribute("ware", ware);
		return "data";
	}
	
	@RequestMapping(value="/csgostats")
	public String csgo() {
		return "csgoStats";
	}
	
	@RequestMapping(value="query-csgo-stats-json", produces="text/html;charset=utf-8")
	@ResponseBody
	public String queryCsgoStatsJson(HttpServletRequest request) throws JsonProcessingException{
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		List<Map<String, Object>> csgoList = jspService.getPlayerCsgoStatsService(user.getUsername());
		ObjectMapper mapper = new ObjectMapper();
		
		if(csgoList != null){
			String csgoListJson = mapper.writeValueAsString(csgoList);
			return csgoListJson;
		}else {
			return mapper.writeValueAsString("no game");
		}
	}
	
	@RequestMapping(value="/item")
	public String item(Model model) {
		List<Map<String, Object>> itemsAll = jspService.getAllItemsService();
		List<Map<String, Object>> showItems = new ArrayList<Map<String, Object>>();
		int csgoCount = 0;
		int dota2Count = 0;
		int pubgCount = 0;
		for (int i = 0; i < itemsAll.size(); i++) {
			if(itemsAll.get(i).get("itemcategory").equals("csgo")){
				if(csgoCount<3){
					showItems.add(itemsAll.get(i));
					csgoCount ++;
				}
			}else if (itemsAll.get(i).get("itemcategory").equals("dota2")) {
				if(dota2Count<3){
					showItems.add(itemsAll.get(i));
					dota2Count ++;
				}
			}else {
				if(pubgCount<3){
					showItems.add(itemsAll.get(i));
					dota2Count ++;
				}
			}
		}
		
		model.addAttribute("showItems", showItems);
		return "item";
	}
	
	@RequestMapping(value="/csgoitem")
	public String csgoItem(Model model) {
		List<Map<String, Object>> showItems = jspService.getAllItemsService();
		model.addAttribute("showItems", showItems);
		return "csgoItem";
	}
	
	@RequestMapping(value="/dota2item")
	public String dota2Item(Model model) {
		List<Map<String, Object>> showItems = jspService.getAllItemsService();
		model.addAttribute("showItems", showItems);
		return "dota2Item";
	}
	
	@RequestMapping(value="/pubgitem")
	public String pubgItem(Model model) {
		List<Map<String, Object>> showItems = jspService.getAllItemsService();
		model.addAttribute("showItems", showItems);
		return "pubgItem";
	}
	
	@RequestMapping(value="/aboutMe")
	public String aboutMe(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER_SESSION");
		Map<String, Object> profile = jspService.getPlayerProfileService(user.getUsername());
		List<Map<String, Object>> ownedGames = jspService.getPlayerOwnedGamesService(user.getUsername());
		List<Map<String, Object>> recentlyPlayedGames = jspService.getPlayerRecentlyPlayedGamesService(user.getUsername());
		
		model.addAttribute("profile", profile);
		model.addAttribute("ownedGames", ownedGames);
		model.addAttribute("recentlyPlayedGames", recentlyPlayedGames);
		return "aboutMe";
	}
	
	@RequestMapping(value="/tools")
	public String tools() {
		return "tools";
	}
	
	
	@RequestMapping(value="query-playerban-json", produces="text/html;charset=utf-8")
	@ResponseBody
	public String queryPlayerbanJson(String steamidorurl) throws JsonProcessingException {
		List<Map<String, Object>> playerBans = jspService.queryPlayerBansService(steamidorurl);
		if(playerBans.get(0).get("VACBanned").toString().equals("false")) {
			playerBans.get(0).put("VACBanned", "none");
		}else {
			playerBans.get(0).put("VACBanned", "yes");
		}
		if(playerBans.get(0).get("CommunityBanned").toString().equals("false")) {
			playerBans.get(0).put("CommunityBanned", "none");
		}else {
			playerBans.get(0).put("CommunityBanned", "yes");
		}
		ObjectMapper mapper = new ObjectMapper();
		String playerBansJson = mapper.writeValueAsString(playerBans.get(0));
		return playerBansJson;
		
	}
	
	
	
	/*
	 * 管理员页面导航
	 * */	
	@RequestMapping(value="/admin-appNews")
	public String toAdmin() {
		return "admin-appNews";
	}
	
	@RequestMapping(value="/admin-appList")
	public String adminApplist(Model model){
		List<Map<String, Object>> applist = adminService.getApplistDbService();
		model.addAttribute("applist", applist);
		return "admin-appList";
	}
	
	@RequestMapping(value="/admin-player")
	public String adminPlayer(Model model){
		List<Map<String, Object>> users = adminService.getUserService();
		model.addAttribute("users", users);
		return "admin-player";
	}
	
	@RequestMapping(value="/admin-item-upload")
	public String adminItemUpload(Model model){
		return "admin-item-upload";
	}
	
	@RequestMapping(value="/admin-item-update")
	public String adminItemUpdatte(Model model){
		List<Map<String, Object>> items = adminService.getItemService();
		model.addAttribute("items", items);
		return "admin-item-update";
	}
}
