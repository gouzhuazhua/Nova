package com.nova.dao;

import java.util.List;
import java.util.Map;

import com.nova.po.AppNumberCurrentplayers;
import com.nova.po.PlayerBans;
import com.nova.po.PlayerOwnedGames;
import com.nova.po.PlayerRecentlyPlayedGames;
import com.nova.po.PlayerSteamLevel;
import com.nova.po.PlayerSummaries;

public interface JspDao {
	/*
	 * 获取新闻
	 * */
	public List<Map<String, Object>> selectAppNewsFromDb();
	
	/*
	 * 获取玩家数量
	 * */
	public List<Map<String, Object>> selectPlayerCount();
	
	/*
	 * 插入热门游戏当前人数
	 * */
	public int insertHotGamesPlayers(AppNumberCurrentplayers currentplayers);
	
	/*
	 * 获取软件硬件统计
	 * */
	public Map<String, Object> selectWare(int month);
	
	/*
	 * 获取热门游戏id
	 * */
	public List<Map<String, Object>> selectHotGamesId();
	
	/*
	 * 获取所有饰品
	 * */
	public List<Map<String, Object>> selectAllItems();
	
	/*
	 * 获取玩家资料
	 * */
	public Map<String, Object> selectPlayerProfile(String username);
	
	/*
	 * 获取玩家资料
	 * */
	public Map<String, Object> selectPlayerInfo(String username);
	
	/*
	 * 获取玩家拥有的游戏
	 * */
	public List<Map<String, Object>> selectPlayerOwnedGames(String username);
	
	/*
	 * 获取玩家最近游戏
	 * */
	public List<Map<String, Object>> selectPlayerRecentlyPlayedGames(String username);
	
	/*
	 * 获取玩家CSGO统计数据
	 * */
	public List<Map<String, Object>> selectPlayerCsgoStats(String username);
	
	/*
	 * 根据用户名获取steamid
	 * */
	public Map<String, Object> selectSteamProfileByUsername(String username);
	
	/*
	 * 删除玩家csgo资料
	 * */
	public void deletePlayerCsgo(String statsId);
	
	/*
	 * 更新个人资料
	 * */
	public void updatePlayerSummaries(PlayerSummaries summaries);
	
	/*
	 * 更新玩家拥有游戏
	 * */
	public void deletePlayerOwnedGames(String ownedGameId);
	
	/*
	 * 更新玩家最近游戏
	 * */
	public void deletePlayerRecentlyPlayedGames(String recentlyPlayedGamesId);
	
	/*
	 * 更新玩家封禁信息
	 * */
	public void updatePlayerBans(PlayerBans bans);
	
	/*
	 * 更新玩家等级
	 * */
	public void updatePlayerLevel(PlayerSteamLevel level);
	
	
}
