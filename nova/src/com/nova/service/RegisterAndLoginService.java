package com.nova.service;


import com.nova.po.User;

public interface RegisterAndLoginService {
	/*
	 *注册业务
	 * 
	 * */
	public boolean registerService (User user);
	
	/*
	 *验证用户名是否已经被注册
	 * 
	 * */
	public boolean registerValidateUsernameService (String username);
	
	/*
	 *更新用户资料业务
	 * 
	 * */
	public boolean updateUserService (User user);
	
	/*
	 * 登录业务
	 * */
	public int loginService(User user);

	/*
	 * 获取玩家个人资料
	 * */
	public boolean getPlayerSummariesService(String steamid, String uuid);
	
	/*
	 * 获取玩家steam等级
	 * */
	public boolean getPlayerSteamLevelService(String steamid, String uuid);
	
	/*
	 * 获取玩家最近游戏
	 * */
	public boolean getPlayerRecentlyPlayedGamesService(String steamid, String uuid);
	
	/*
	 * 获取玩家拥有游戏信息
	 * */
	public boolean getPlayerOwnedGamesService(String steamid, String uuid);
	
	/*
	 * 获取玩家封禁信息
	 * */
	public boolean getPlayerBansService(String steamid, String uuid);
	
	/*
	 * 获取玩家CSGO统计信息
	 * */
	public boolean getPlayerCsgoStatsService(String steamid, String uuid);
	
	/*
	 * 从数据库获取用户默认头像
	 * */
	public String getPlayerAvatarService(String username);
}
