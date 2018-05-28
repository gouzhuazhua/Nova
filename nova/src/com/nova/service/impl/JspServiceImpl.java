package com.nova.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nova.dao.JspDao;
import com.nova.dao.UserDao;
import com.nova.po.AppNumberCurrentplayers;
import com.nova.po.PlayerBans;
import com.nova.po.PlayerOwnedGames;
import com.nova.po.PlayerRecentlyPlayedGames;
import com.nova.po.PlayerStatsForGame;
import com.nova.po.PlayerSteamLevel;
import com.nova.po.PlayerSummaries;
import com.nova.service.JspService;
import com.nova.utils.GetJsonListByUrl;
import com.nova.utils.TimeStamp;

@Service
@Transactional
public class JspServiceImpl implements JspService {

	@Autowired
	private JspDao jspDao;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<Map<String, Object>> getAppNewsFromDbService() {
		// TODO Auto-generated method stub
		return jspDao.selectAppNewsFromDb();
	}

	@Override
	public List<Map<String, Object>> getPlayerCountService() {
		// TODO Auto-generated method stub
		List<Map<String, Object>> hotGames = getHotGamesIdService();
		AppNumberCurrentplayers currentplayers = new AppNumberCurrentplayers();
		
		for(int i=0; i<hotGames.size(); i++){
			String url = "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=" + hotGames.get(i).get("appid");
			String jsonString = GetJsonListByUrl.loadJson(url);
			Map<String, Object> map = GetJsonListByUrl.jsonStringToMap(jsonString);
			
			currentplayers.setId(i+1);
			currentplayers.setPlayerCount(Integer.valueOf(map.get("player_count").toString()));
			currentplayers.setResult(Integer.valueOf(map.get("result").toString()));
			
			jspDao.insertHotGamesPlayers(currentplayers);
		}
		return jspDao.selectPlayerCount();
	}

	@Override
	public List<Map<String, Object>> getHotGamesIdService() {
		// TODO Auto-generated method stub
		return jspDao.selectHotGamesId();
	}

	@Override
	public Map<String, Object> getPlayerProfileService(String username) {
		// TODO Auto-generated method stub
		//在获取玩家资料之前更新玩家资料
		//更新玩家档案
		Map<String, Object> steamidProfile = jspDao.selectSteamProfileByUsername(username);
		String url = "https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=ED312A399410D07A1E811502C235B4A8&steamids="+steamidProfile.get("steamid");
		List<Map<String, Object>> psl = new ArrayList<Map<String, Object>>();
		PlayerSummaries summaries = new PlayerSummaries();
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			psl = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0; i<psl.size(); i++){
			summaries.setSumId(steamidProfile.get("sum_id").toString());
			summaries.setCommunityvisibilitystate(Integer.valueOf(psl.get(i).get("communityvisibilitystate").toString()));
			summaries.setProfilestate(Integer.valueOf(psl.get(i).get("profilestate").toString()));
			summaries.setPersonaname(psl.get(i).get("personaname").toString());
			summaries.setLastlogoff(Integer.valueOf(psl.get(i).get("lastlogoff").toString()));
			summaries.setProfileurl(psl.get(i).get("profileurl").toString());
			summaries.setAvatar(psl.get(i).get("avatar").toString());
			summaries.setAvatarmedium(psl.get(i).get("avatarmedium").toString());
			summaries.setAvatarfull(psl.get(i).get("avatarfull").toString());
			summaries.setPersonastate(Integer.valueOf(psl.get(i).get("personastate").toString()));
			summaries.setPrimaryclanid(psl.get(i).get("primaryclanid").toString());
			summaries.setTimecreated(Integer.valueOf(psl.get(i).get("timecreated").toString()));
			summaries.setPersonastateflags(Integer.valueOf(psl.get(i).get("personastateflags").toString()));
			if(psl.get(i).size() == 17){
				summaries.setCommentpermission(Integer.valueOf(psl.get(i).get("commentpermission").toString()));
				summaries.setLoccountrycode(psl.get(i).get("loccountrycode").toString());
				summaries.setLocstatecode(psl.get(i).get("locstatecode").toString());
				summaries.setLoccityid(Integer.valueOf(psl.get(i).get("loccityid").toString()));
			}else {
				summaries.setCommentpermission(null);
				summaries.setLoccountrycode(null);
				summaries.setLocstatecode(null);
				summaries.setLoccityid(null);
			}
			if(psl.get(i).size() == 18) {
				summaries.setGameid(Integer.valueOf(psl.get(i).get("gameid").toString()));
			}else {
				summaries.setGameid(null);
			}
			
			jspDao.updatePlayerSummaries(summaries);
		}
		
		//更新玩家封禁信息
		String url1 = "https://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=ED312A399410D07A1E811502C235B4A8&steamids="+steamidProfile.get("steamid");
		List<Map<String, Object>> pbs = new ArrayList<Map<String, Object>>();
		PlayerBans bans = new PlayerBans();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url1);
			pbs = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i=0; i<pbs.size(); i++){
			bans.setBanId(steamidProfile.get("ban_id").toString());
			if(pbs.get(i).get("CommunityBanned").toString().equals("true")){
				bans.setCommunitybanned(1);
			}else {
				bans.setCommunitybanned(0);
			}
			bans.setDayssincelastban(Integer.valueOf(pbs.get(i).get("DaysSinceLastBan").toString()));
			bans.setEconomyban(pbs.get(i).get("EconomyBan").toString());
			bans.setNumberofgamebans(Integer.valueOf(pbs.get(i).get("NumberOfGameBans").toString()));
			bans.setNumberofvacbans(Integer.valueOf(pbs.get(i).get("NumberOfVACBans").toString()));
			bans.setSteamid(steamidProfile.get("steamid").toString());
			if(pbs.get(i).get("VACBanned").toString().equals("true")){
				bans.setVacbanned(1);
			}else {
				bans.setVacbanned(0);
			}
			
			jspDao.updatePlayerBans(bans);
		}
		
		//更新玩家等级
		String url2 = "https://api.steampowered.com/IPlayerService/GetSteamLevel/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamidProfile.get("steamid");
		Map<String, Object> map = null;
		PlayerSteamLevel level = new PlayerSteamLevel();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url2);
			map = GetJsonListByUrl.jsonStringToMap(jsonString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		level.setLevelId(steamidProfile.get("level_id").toString());
		level.setPlayerLevel(Integer.valueOf(map.get("player_level").toString()));
		
		jspDao.updatePlayerLevel(level);
		//更新完成
		
		//获取玩家资料
		Map<String, Object> profile = jspDao.selectPlayerProfile(username);
		if(profile.get("loccountrycode") == null) {
			profile.put("loccountrycode", "N/A");
		}
		if(profile.get("gameid") == null) {
			profile.put("gameid", "N/A");
		}
		return profile;
	}

	@Override
	public List<Map<String, Object>> getPlayerOwnedGamesService(String username) {
		// TODO Auto-generated method stub
		Map<String, Object> steamidProfile = jspDao.selectSteamProfileByUsername(username);
		jspDao.deletePlayerOwnedGames(steamidProfile.get("ownedgames_id").toString());
		
		String url = "https://api.steampowered.com/IPlayerService/GetOwnedGames/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamidProfile.get("steamid").toString()+"&include_appinfo=1&include_played_free_games=1";
		List<Map<String, Object>> pog = new ArrayList<Map<String, Object>>();
		PlayerOwnedGames games = new PlayerOwnedGames();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			pog = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0; i<pog.size(); i++){
			games.setAppid(Integer.valueOf(pog.get(i).get("appid").toString()));
			games.setAppname(pog.get(i).get("name").toString());
			games.setOwnedgaId(steamidProfile.get("ownedgames_id").toString());
			games.setPlaytimeForever(Integer.valueOf(pog.get(i).get("playtime_forever").toString()));
			games.setImgIconUrl(pog.get(i).get("img_icon_url").toString());
			games.setImgLogoUrl(pog.get(i).get("img_logo_url").toString());
			if(pog.get(i).size() > 6){
				if(pog.get(i).get("has_community_visible_stats").toString().equals("true")){
					games.setHasCommunityVisibleStats(1);
				}else {
					games.setHasCommunityVisibleStats(0);
				}
			}else {
				games.setHasCommunityVisibleStats(0);
			}
			
			userDao.insertPlayerOwnedGanmes(games);
		}
		return jspDao.selectPlayerOwnedGames(username);
	}

	@Override
	public List<Map<String, Object>> getPlayerRecentlyPlayedGamesService(String username) {
		// TODO Auto-generated method stub
		Map<String, Object> steamidProfile = jspDao.selectSteamProfileByUsername(username);
		jspDao.deletePlayerRecentlyPlayedGames(steamidProfile.get("recpyga_id").toString());
		
		String url = "https://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamidProfile.get("steamid").toString();
		List<Map<String, Object>> prpg = new ArrayList<Map<String, Object>>();
		PlayerRecentlyPlayedGames games = new PlayerRecentlyPlayedGames();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			prpg = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0; i<prpg.size(); i++){
			games.setRecpygaId(steamidProfile.get("recpyga_id").toString());
			games.setAppid(Integer.valueOf(prpg.get(i).get("appid").toString()));
			games.setPlaytime2weeks(Integer.valueOf(prpg.get(i).get("playtime_2weeks").toString()));
			games.setPlaytimeForever(Integer.valueOf(prpg.get(i).get("playtime_forever").toString()));
			if(prpg.get(i).size() > 5){
				games.setAppname(prpg.get(i).get("name").toString());
				games.setImgIconUrl(prpg.get(i).get("img_icon_url").toString());
				games.setImgLogoUrl(prpg.get(i).get("img_logo_url").toString());
			}else {
				games.setAppname(null);
				games.setImgIconUrl(null);
				games.setImgLogoUrl(null);
			}
			
			userDao.insertPlayerRecentlyPlayedGames(games);
		}
		return jspDao.selectPlayerRecentlyPlayedGames(username);
	}

	@Override
	public List<Map<String, Object>> queryPlayerBansService(String steamidorurl) {
		// TODO Auto-generated method stub
		String url1 = "https://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=ED312A399410D07A1E811502C235B4A8&steamids="+steamidorurl;
		List<Map<String, Object>> pbs = new ArrayList<Map<String, Object>>();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url1);
			pbs = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return pbs;
	}

	@Override
	public Map<String, Object> getPlayerWareService() {
		// TODO Auto-generated method stub
		Calendar calendar=Calendar.getInstance();
		int month=calendar.get(Calendar.MONTH);
		if(month == 0){
			month = 12;
		}
		Map<String, Object> ware = jspDao.selectWare(month);
		return ware;
	}

	@Override
	public List<Map<String, Object>> getPlayerCsgoStatsService(String username) {
		// TODO Auto-generated method stub
		Map<String, Object> steamidProfile = jspDao.selectSteamProfileByUsername(username);
		try {
			jspDao.deletePlayerCsgo(steamidProfile.get("stats_id").toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url = "https://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v2/?key=ED312A399410D07A1E811502C235B4A8&steamid="+ steamidProfile.get("steamid").toString() +"&appid=730";
		List<Map<String, Object>> csgoList = new ArrayList<Map<String, Object>>();
		PlayerStatsForGame game = new PlayerStatsForGame();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			if(jsonString.equals("httpError")){
				game.setStatsId(steamidProfile.get("stats_id").toString());
				game.setAppid(730);
				game.setName("N/A");
				game.setValue(0);
				
				userDao.insertPlayerCsgoStats(game);
				return null;
			}else {
				csgoList = GetJsonListByUrl.jsonStringToList(jsonString);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for (int i=0; i<csgoList.size(); i++) {
			game.setStatsId(steamidProfile.get("stats_id").toString());
			game.setAppid(730);
			game.setName(csgoList.get(i).get("name").toString());
			game.setValue(Integer.valueOf(csgoList.get(i).get("value").toString()));
			
			userDao.insertPlayerCsgoStats(game);
		}
		return jspDao.selectPlayerCsgoStats(username);
	}

	@Override
	public Map<String, Object> getPlayerInfoService(String username) {
		// TODO Auto-generated method stub
		return jspDao.selectPlayerInfo(username);
	}

	@Override
	public List<Map<String, Object>> getAllItemsService() {
		// TODO Auto-generated method stub
		return jspDao.selectAllItems();
	}

}
