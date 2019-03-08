package com.zy.login.service.imp;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.login.dao.LoginDao;
import com.zy.login.pojo.Login;
import com.zy.login.service.LoginService;

@Service
public class LoginServiceImp implements LoginService {

	@Autowired
	private LoginDao ld;

	@Override
	public Map<String, Object> login(HttpSession session, Login login) {
		Map<String, Object> map = new HashMap<>();
		System.out.println(login);
		//查询用户从在是否
		Login user =  ld.getLoginByLusername(login.getLusername());
		if(user != null){
			//用户存在的情况下
			if(user.getLpassword().equals(login.getLpassword())){
				session.setAttribute("user", user);
				map.put("success", true);
				map.put("msg", "登陆成功！");
			}else{
				
			}
		}else{
			map.put("success", false);
			map.put("msg", "用户名不存在！");
		}
		return map;
	}

}
