package com.focus.regform.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.focus.regform.dao.UserDAO;
import com.focus.regform.model.UserDetails;

@Controller
public class FrontController {
	@Autowired
	UserDetails userDetails;
	@Autowired(required=true)
	UserDAO userDAO;
	
	@RequestMapping("/home")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/registration")
	public ModelAndView registerhere()
	{
		ModelAndView mv = new ModelAndView("registration");
		mv.addObject("UserDetails", userDetails);
	
		return mv;
	}
	@RequestMapping(value="/Success",method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails)
	{
		ModelAndView mv;
		String msg;
		msg="You have registered successfully.Please log in to continue";
		userDAO.save(userDetails);
	  
		mv= new ModelAndView("typage");
		mv.addObject("msg",msg);
		return mv;
}

}
