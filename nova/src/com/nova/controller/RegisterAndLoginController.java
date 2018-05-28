package com.nova.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nova.po.User;
import com.nova.service.JspService;
import com.nova.service.RegisterAndLoginService;

@Controller
public class RegisterAndLoginController {
	
	@Autowired
	RegisterAndLoginService registerAndLoginService;
	
	@Autowired
	JspService jspService;
	
	/*
	 * ע��
	 * */
	@RequestMapping(value="/register", produces="text/html;charset=utf-8")
	@ResponseBody
	public String register(User user) throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		String msgJson = "";
		if(registerAndLoginService.registerService(user)){
			msgJson = mapper.writeValueAsString(user);
			return msgJson;
		}else{
			return mapper.writeValueAsString("ע��ʧ�ܣ�");
		}
	}
	
	/*
	 * ��֤�û����Ƿ���ע��
	 * */
	@RequestMapping(value="/validate-username", produces="text/html;charset=utf-8")
	@ResponseBody
	public String validateUsername(String username, HttpServletRequest request) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(registerAndLoginService.registerValidateUsernameService(username)){
			return mapper.writeValueAsString("�û����Ѵ���");
		}
		return mapper.writeValueAsString("�û�������");
		
	}
	
	/*
	 * �����û���������
	 * */
	@RequestMapping(value="/updateUser", produces="text/html;charset=utf-8")
	@ResponseBody
	public String updateUser(User user) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();
		if(registerAndLoginService.updateUserService(user)){
			return mapper.writeValueAsString("updatesuc");
		}else {
			return mapper.writeValueAsString("updatefai");
		}
	}
	
	/*
	 * ��¼
	 * */
	@RequestMapping(value="/login")
	public String login(User user, RedirectAttributes attributes, HttpSession session) {
		int loginRs = registerAndLoginService.loginService(user);
		String playerAvatar = registerAndLoginService.getPlayerAvatarService(user.getUsername());
		if(loginRs == 1){
			session.setAttribute("USER_AVATAR", playerAvatar);
			session.setAttribute("USER_SESSION", user);
			return "redirect:admin-appNews";
		}else if(loginRs == 2){
			List<Map<String, Object>> appNewsList = jspService.getAppNewsFromDbService();
			session.setAttribute("appNewsList", appNewsList);
			session.setAttribute("USER_AVATAR", playerAvatar);
			session.setAttribute("USER_SESSION", user);
			return "redirect:home";
		}else {
			attributes.addFlashAttribute("msg", "�û�����������������µ�¼��");
			return "redirect:login-form";
		}
	}
	
	@RequestMapping(value="/changeUser")
	public String changeUser(HttpSession session) {
		session.invalidate();
		return "redirect:login-form";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.htm";
	}
	
}
