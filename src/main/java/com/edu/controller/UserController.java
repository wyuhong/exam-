package com.edu.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.User;
import com.edu.service.UserService;

/**
 * 该controller只是拿来处理登陆的。
 * @author 14
 *
 */
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	/**
	 * 从前台会传递user参数过来, 包含username，password，type（0表示老师，1表示学生）
	 * @return
	 */
	@RequestMapping("login")
	public ModelAndView login(User user,HttpSession session){
		ModelAndView mav = new ModelAndView();
		if(user==null){
			mav.setViewName("redirect:/jsps/login/login.jsp");
			return mav;
		}
		if(user.getUsername()==null||"".equals(user.getUsername().trim())){
			mav.setViewName("redirect:/jsps/login/login.jsp");
			return mav;
		}
		if(user.getPassword()==null||"".equals(user.getPassword().trim())){
			mav.setViewName("redirect:/jsps/login/login.jsp");
			return mav;
		}
		
		int formType=user.getType();
		User user1 = userService.login(user);
		if(user1==null){
			mav.setViewName("redirect:/jsps/login/login.jsp");
			mav.getModel().put("message", "用户名或密码错误或用户类型不匹配");
			mav.getModel().put("user", user);
			return mav;
		}
		if(user1.getType()!=formType){
			mav.setViewName("redirect:/jsps/login/login.jsp");
			mav.getModel().put("message", "用户名或密码错误或用户类型不匹配");
			mav.getModel().put("user", user);
			return mav;
		}
		mav.setViewName("/jsps/main.jsp");
		session.setAttribute("sessionuser", user1);
		return mav;
	}
	@RequestMapping("quit")
	public ModelAndView quit(HttpSession session){
		session.removeAttribute("sessionuser");
		return new ModelAndView("/jsps/login/login.jsp");
	}
	
	
}
