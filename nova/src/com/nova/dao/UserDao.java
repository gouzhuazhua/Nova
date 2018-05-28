package com.nova.dao;

import com.nova.po.PlayerBans;
import com.nova.po.PlayerOwnedGames;
import com.nova.po.PlayerRecentlyPlayedGames;
import com.nova.po.PlayerStatsForGame;
import com.nova.po.PlayerSteamLevel;
import com.nova.po.PlayerSummaries;
import com.nova.po.User;

public interface UserDao {
	/*
	 * 注册功能
	 * 
	 * */
	public int register(User user);
	
	/*
	 * 遍历数据库中是否存在相同用户名
	 * 
	 * */
	public User selectSameUsername(String username);
	
	/*
	 * 更新用户个人资料功能
	 * 
	 * */
	public void updateUser(User user);

	/*
	 * 登陆功能
	 * 
	 * */
	public User login(String username);
	
	/*
	 * 插入玩家个人资料
	 * */
	public int insertPlayerSummaries(PlayerSummaries summaries);
	
	/*
	 * 插入玩家封禁信息
	 * */
	public int insertPlayerBans(PlayerBans bans);
	
	/*
	 * 插入玩家拥有游戏信息
	 * */
	public int insertPlayerOwnedGanmes(PlayerOwnedGames games);
	
	/*
	 * 插入玩家steam等级
	 * */
	public int insertPlayerSteamLevel(PlayerSteamLevel level);
	
	/*
	 * 插入玩家最近游戏
	 * */
	public int insertPlayerRecentlyPlayedGames(PlayerRecentlyPlayedGames playedGames);
	
	/*
	 * 插入玩家CSGO统计资料
	 * */
	public int insertPlayerCsgoStats(PlayerStatsForGame game);
	
	/*
	 * 获取玩家头像
	 * */
	public String selectPlayerAvatar(String username);

}
