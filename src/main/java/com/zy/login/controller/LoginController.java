package com.zy.login.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zy.login.pojo.Login;
import com.zy.login.service.LoginService;
import com.zy.util.YzmUtil;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService ls;
	
	@RequestMapping("/login/getYzm")
	public void getYzm(HttpServletRequest request,HttpServletResponse response){
		try {
			YzmUtil.CreateYZM(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/login/getSessionYzm")
	@ResponseBody
	public Map<String,Object> getSessionYzm(HttpSession session){
		Map<String,Object> map = new HashMap<>();
		map.put("yzm", session.getAttribute("yzm"));
		return map;
	}
	
	@RequestMapping("/login/login")
	@ResponseBody
	public Map<String,Object> login(HttpSession session, Login login){
		Map<String,Object> map = new HashMap<>();
		try {
			map = ls.login(session,login);
		} catch (Exception e) {
			map.put("success", false);
			map.put("msg", "系统异常！");
			e.printStackTrace();
		}
		return map;
	}
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		return "index";
	}
	
	//退出系统的控制方法
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request,HttpServletResponse response){
		request.getSession().invalidate();
		try {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}













