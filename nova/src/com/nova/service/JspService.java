package com.nova.service;

import java.util.List;
import java.util.Map;


public interface JspService {
	/*
	 * �����ݿ��ȡ����
	 * */
	public List<Map<String, Object>> getAppNewsFromDbService();
	
	/*
	 * ��ȡ��Ϸ��ǰ��������
	 * */
	public List<Map<String, Object>> getPlayerCountService();
	
	/*
	 * ��ȡ���Ӳ�������ͳ��
	 * */
	public Map<String, Object> getPlayerWareService();
	
	/*
	 * ��ȡ���CSGO����ͳ��
	 * */
	public List<Map<String, Object>> getPlayerCsgoStatsService(String username);
	
	/*
	 * �����ݿ��ȡ������Ϸid
	 * */
	public List<Map<String, Object>> getHotGamesIdService();
	
	/*
	 * �����ݿ��ȡ������Ʒ
	 * */
	public List<Map<String, Object>> getAllItemsService();
	
	/*
	 * ��ȡ�������
	 * */
	public Map<String, Object> getPlayerProfileService(String username);
	
	/*
	 * ��ȡ�û�����
	 * */
	public Map<String, Object> getPlayerInfoService(String username);
	
	/*
	 * ��ȡ���ӵ�е���Ϸ
	 * */
	public List<Map<String, Object>> getPlayerOwnedGamesService(String username);
	
	/*
	 * ��ȡ��������Ϸ
	 * */
	public List<Map<String, Object>> getPlayerRecentlyPlayedGamesService(String username);
	
	/*
	 * ��ѯָ������Ƿ����Υ����Ϣ
	 * */
	public List<Map<String, Object>> queryPlayerBansService(String steamidorurl);
	
	
}
