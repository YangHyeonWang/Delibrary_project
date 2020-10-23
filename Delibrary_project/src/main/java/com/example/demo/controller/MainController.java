package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.HomeDAO;
import com.example.demo.vo.CustomerVO;

@Controller
public class MainController {
	
	
	/*
	 * @Autowired private HomeDAO dao;
	 * 
	 * @RequestMapping("/Home.do") public String home(Model model, CustomerVO
	 * custVO, String loginOk, HttpServletRequest request) {
	 * 
	 * model.addAttribute("SRlist", dao.getStaffRecommend());
	 * model.addAttribute("Newlist", dao.getNewRecommend());
	 * model.addAttribute("HNlist", dao.getHomePost(10));
	 * model.addAttribute("HMakinglist", dao.getHomePost(20));
	 * model.addAttribute("HMarketlist", dao.getHomePost(30)); return "Home"; }
	 */
}