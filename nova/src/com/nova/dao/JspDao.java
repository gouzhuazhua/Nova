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
	 * ��ȡ����
	 * */
	public List<Map<String, Object>> selectAppNewsFromDb();
	
	/*
	 * ��ȡ�������
	 * */
	public List<Map<String, Object>> selectPlayerCount();
	
	/*
	 * ����������Ϸ��ǰ����
	 * */
	public int insertHotGamesPlayers(AppNumberCurrentplayers currentplayers);
	
	/*
	 * ��ȡ���Ӳ��ͳ��
	 * */
	public Map<String, Object> selectWare(int month);
	
	/*
	 * ��ȡ������Ϸid
	 * */
	public List<Map<String, Object>> selectHotGamesId();
	
	/*
	 * ��ȡ������Ʒ
	 * */
	public List<Map<String, Object>> selectAllItems();
	
	/*
	 * ��ȡ�������
	 * */
	public Map<String, Object> selectPlayerProfile(String username);
	
	/*
	 * ��ȡ�������
	 * */
	public Map<String, Object> selectPlayerInfo(String username);
	
	/*
	 * ��ȡ���ӵ�е���Ϸ
	 * */
	public List<Map<String, Object>> selectPlayerOwnedGames(String username);
	
	/*
	 * ��ȡ��������Ϸ
	 * */
	public List<Map<String, Object>> selectPlayerRecentlyPlayedGames(String username);
	
	/*
	 * ��ȡ���CSGOͳ������
	 * */
	public List<Map<String, Object>> selectPlayerCsgoStats(String username);
	
	/*
	 * �����û�����ȡsteamid
	 * */
	public Map<String, Object> selectSteamProfileByUsername(String username);
	
	/*
	 * ɾ�����csgo����
	 * */
	public void deletePlayerCsgo(String statsId);
	
	/*
	 * ���¸�������
	 * */
	public void updatePlayerSummaries(PlayerSummaries summaries);
	
	/*
	 * �������ӵ����Ϸ
	 * */
	public void deletePlayerOwnedGames(String ownedGameId);
	
	/*
	 * ������������Ϸ
	 * */
	public void deletePlayerRecentlyPlayedGames(String recentlyPlayedGamesId);
	
	/*
	 * ������ҷ����Ϣ
	 * */
	public void updatePlayerBans(PlayerBans bans);
	
	/*
	 * ������ҵȼ�
	 * */
	public void updatePlayerLevel(PlayerSteamLevel level);
	
	
}
