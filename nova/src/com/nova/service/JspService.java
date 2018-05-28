package com.nova.service;

import java.util.List;
import java.util.Map;


public interface JspService {
	/*
	 * 从数据库获取新闻
	 * */
	public List<Map<String, Object>> getAppNewsFromDbService();
	
	/*
	 * 获取游戏当前绝对人数
	 * */
	public List<Map<String, Object>> getPlayerCountService();
	
	/*
	 * 获取玩家硬件和软件统计
	 * */
	public Map<String, Object> getPlayerWareService();
	
	/*
	 * 获取玩家CSGO数据统计
	 * */
	public List<Map<String, Object>> getPlayerCsgoStatsService(String username);
	
	/*
	 * 从数据库获取热门游戏id
	 * */
	public List<Map<String, Object>> getHotGamesIdService();
	
	/*
	 * 从数据库获取所有饰品
	 * */
	public List<Map<String, Object>> getAllItemsService();
	
	/*
	 * 获取玩家数据
	 * */
	public Map<String, Object> getPlayerProfileService(String username);
	
	/*
	 * 获取用户数据
	 * */
	public Map<String, Object> getPlayerInfoService(String username);
	
	/*
	 * 获取玩家拥有的游戏
	 * */
	public List<Map<String, Object>> getPlayerOwnedGamesService(String username);
	
	/*
	 * 获取玩家最近游戏
	 * */
	public List<Map<String, Object>> getPlayerRecentlyPlayedGamesService(String username);
	
	/*
	 * 查询指定玩家是否存在违禁信息
	 * */
	public List<Map<String, Object>> queryPlayerBansService(String steamidorurl);
	
	
}
