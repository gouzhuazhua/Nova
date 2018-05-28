package com.nova.service;


import com.nova.po.User;

public interface RegisterAndLoginService {
	/*
	 *ע��ҵ��
	 * 
	 * */
	public boolean registerService (User user);
	
	/*
	 *��֤�û����Ƿ��Ѿ���ע��
	 * 
	 * */
	public boolean registerValidateUsernameService (String username);
	
	/*
	 *�����û�����ҵ��
	 * 
	 * */
	public boolean updateUserService (User user);
	
	/*
	 * ��¼ҵ��
	 * */
	public int loginService(User user);

	/*
	 * ��ȡ��Ҹ�������
	 * */
	public boolean getPlayerSummariesService(String steamid, String uuid);
	
	/*
	 * ��ȡ���steam�ȼ�
	 * */
	public boolean getPlayerSteamLevelService(String steamid, String uuid);
	
	/*
	 * ��ȡ��������Ϸ
	 * */
	public boolean getPlayerRecentlyPlayedGamesService(String steamid, String uuid);
	
	/*
	 * ��ȡ���ӵ����Ϸ��Ϣ
	 * */
	public boolean getPlayerOwnedGamesService(String steamid, String uuid);
	
	/*
	 * ��ȡ��ҷ����Ϣ
	 * */
	public boolean getPlayerBansService(String steamid, String uuid);
	
	/*
	 * ��ȡ���CSGOͳ����Ϣ
	 * */
	public boolean getPlayerCsgoStatsService(String steamid, String uuid);
	
	/*
	 * �����ݿ��ȡ�û�Ĭ��ͷ��
	 * */
	public String getPlayerAvatarService(String username);
}
