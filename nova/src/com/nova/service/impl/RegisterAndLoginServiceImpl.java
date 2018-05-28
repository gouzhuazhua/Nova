package com.nova.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nova.dao.UserDao;
import com.nova.po.PlayerBans;
import com.nova.po.PlayerOwnedGames;
import com.nova.po.PlayerRecentlyPlayedGames;
import com.nova.po.PlayerStatsForGame;
import com.nova.po.PlayerSteamLevel;
import com.nova.po.PlayerSummaries;
import com.nova.po.User;
import com.nova.service.RegisterAndLoginService;
import com.nova.utils.GetJsonListByUrl;

@Service
@Transactional
public class RegisterAndLoginServiceImpl implements RegisterAndLoginService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public boolean registerService(User user) {
		// TODO Auto-generated method stub
		String uuidban = UUID.randomUUID().toString().replaceAll("-", "");
		String uuidog = UUID.randomUUID().toString().replaceAll("-", "");
		String uuidrg = UUID.randomUUID().toString().replaceAll("-", "");
		String uuidle = UUID.randomUUID().toString().replaceAll("-", "");
		String uuidsu = UUID.randomUUID().toString().replaceAll("-", "");
		String uuidst = UUID.randomUUID().toString().replaceAll("-", "");
		user.setIsadmin(0);
		user.setBanid(uuidban);
		user.setOwnedgamesid(uuidog);
		user.setRecpygaid(uuidrg);
		user.setLevelid(uuidle);
		user.setSumid(uuidsu);
		user.setStatsid(uuidst);
		int rows =  this.userDao.register(user);
		
		try {
			getPlayerSummariesService(user.getSteamid(), uuidsu);
			getPlayerBansService(user.getSteamid(), uuidban);
			getPlayerOwnedGamesService(user.getSteamid(), uuidog);
			getPlayerRecentlyPlayedGamesService(user.getSteamid(), uuidrg);
			getPlayerSteamLevelService(user.getSteamid(), uuidle);
			getPlayerCsgoStatsService(user.getSteamid(), uuidst);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(rows > 0){
			return true;
		}else{
			return false;
		}
		
	}

	@Override
	public int loginService(User userInForm) {
		// TODO Auto-generated method stub
		User userInDB = this.userDao.login(userInForm.getUsername());
		if(userInDB != null){
			if(userInDB.getUsername().equals(userInForm.getUsername()) && userInDB.getPassword().equals(userInForm.getPassword())){
				if(userInDB.getIsadmin() == 1){
					return 1;
				}else{
					return 2;
				}
			}
		}
		return 3;
	}

	@Override
	public boolean getPlayerSummariesService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v2/?key=ED312A399410D07A1E811502C235B4A8&steamids="+steamid;
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
			summaries.setSumId(uuid);
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
			
			userDao.insertPlayerSummaries(summaries);
		}
		return true;
	}

	@Override
	public boolean getPlayerSteamLevelService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/IPlayerService/GetSteamLevel/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamid;
		Map<String, Object> map = null;
		PlayerSteamLevel level = new PlayerSteamLevel();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			map = GetJsonListByUrl.jsonStringToMap(jsonString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		level.setLevelId(uuid);
		level.setPlayerLevel(Integer.valueOf(map.get("player_level").toString()));
		userDao.insertPlayerSteamLevel(level);
		
		return true;
	}

	@Override
	public boolean getPlayerRecentlyPlayedGamesService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamid;
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
			games.setRecpygaId(uuid);
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

			
			
			try {
				userDao.insertPlayerRecentlyPlayedGames(games);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return true;
	}

	@Override
	public boolean getPlayerOwnedGamesService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/IPlayerService/GetOwnedGames/v1/?key=ED312A399410D07A1E811502C235B4A8&steamid="+steamid+"&include_appinfo=1&include_played_free_games=1";
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
			games.setOwnedgaId(uuid);
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
		return true;
	}

	@Override
	public boolean getPlayerBansService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=ED312A399410D07A1E811502C235B4A8&steamids="+steamid;
		List<Map<String, Object>> pbs = new ArrayList<Map<String, Object>>();
		PlayerBans bans = new PlayerBans();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			pbs = GetJsonListByUrl.jsonStringToList(jsonString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i=0; i<pbs.size(); i++){
			bans.setBanId(uuid);
			if(pbs.get(i).get("CommunityBanned").toString().equals("true")){
				bans.setCommunitybanned(1);
			}else {
				bans.setCommunitybanned(0);
			}
			bans.setDayssincelastban(Integer.valueOf(pbs.get(i).get("DaysSinceLastBan").toString()));
			bans.setEconomyban(pbs.get(i).get("EconomyBan").toString());
			bans.setNumberofgamebans(Integer.valueOf(pbs.get(i).get("NumberOfGameBans").toString()));
			bans.setNumberofvacbans(Integer.valueOf(pbs.get(i).get("NumberOfVACBans").toString()));
			bans.setSteamid(steamid);
			if(pbs.get(i).get("VACBanned").toString().equals("true")){
				bans.setVacbanned(1);
			}else {
				bans.setVacbanned(0);
			}
//			System.out.println("bans:" + "\nbanid:" + bans.getBanId() + "\nsteamid:" + bans.getSteamid() + "\ncmmubanned:" + bans.getCommunitybanned() + "\nvacbanned:" + bans.getVacbanned() + "\nnumberofvacbans:" + bans.getNumberofvacbans() + "\ndassincelastban:" + bans.getDayssincelastban() + "\nnumberofgamebans:" + bans.getNumberofgamebans() + "\neconomyban:" + bans.getEconomyban());
			userDao.insertPlayerBans(bans);
		}
		
		return true;
	}

	@Override
	public String getPlayerAvatarService(String username) {
		// TODO Auto-generated method stub
		return userDao.selectPlayerAvatar(username);
	}

	@Override
	public boolean getPlayerCsgoStatsService(String steamid, String uuid) {
		// TODO Auto-generated method stub
		String url = "https://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v2/?key=ED312A399410D07A1E811502C235B4A8&steamid="+ steamid +"&appid=730";
		List<Map<String, Object>> csgoList = new ArrayList<Map<String, Object>>();
		PlayerStatsForGame game = new PlayerStatsForGame();
		
		try {
			String jsonString = GetJsonListByUrl.loadJson(url);
			if(jsonString.equals("httpError")){
				game.setStatsId(uuid);
				game.setAppid(730);
				game.setName("N/A");
				game.setValue(0);
				
				userDao.insertPlayerCsgoStats(game);
			}else {
				csgoList = GetJsonListByUrl.jsonStringToList(jsonString);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("500");
		}
		
		for (int i=0; i<csgoList.size(); i++) {
			game.setStatsId(uuid);
			game.setAppid(730);
			game.setName(csgoList.get(i).get("name").toString());
			game.setValue(Integer.valueOf(csgoList.get(i).get("value").toString()));
			
			userDao.insertPlayerCsgoStats(game);
		}
		
		return true;
	}

	@Override
	public boolean updateUserService(User user) {
		// TODO Auto-generated method stub
		userDao.updateUser(user);
		return true;
	}

	@Override
	public boolean registerValidateUsernameService(String username) {
		// TODO Auto-generated method stub
		if(userDao.selectSameUsername(username) != null){
			return true;
		}
		return false;
	}

}



























