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
	 * ע�Ṧ��
	 * 
	 * */
	public int register(User user);
	
	/*
	 * �������ݿ����Ƿ������ͬ�û���
	 * 
	 * */
	public User selectSameUsername(String username);
	
	/*
	 * �����û��������Ϲ���
	 * 
	 * */
	public void updateUser(User user);

	/*
	 * ��½����
	 * 
	 * */
	public User login(String username);
	
	/*
	 * ������Ҹ�������
	 * */
	public int insertPlayerSummaries(PlayerSummaries summaries);
	
	/*
	 * ������ҷ����Ϣ
	 * */
	public int insertPlayerBans(PlayerBans bans);
	
	/*
	 * �������ӵ����Ϸ��Ϣ
	 * */
	public int insertPlayerOwnedGanmes(PlayerOwnedGames games);
	
	/*
	 * �������steam�ȼ�
	 * */
	public int insertPlayerSteamLevel(PlayerSteamLevel level);
	
	/*
	 * ������������Ϸ
	 * */
	public int insertPlayerRecentlyPlayedGames(PlayerRecentlyPlayedGames playedGames);
	
	/*
	 * �������CSGOͳ������
	 * */
	public int insertPlayerCsgoStats(PlayerStatsForGame game);
	
	/*
	 * ��ȡ���ͷ��
	 * */
	public String selectPlayerAvatar(String username);

}
