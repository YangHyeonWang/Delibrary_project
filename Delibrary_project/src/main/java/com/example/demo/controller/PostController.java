package com.example.demo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.PostDAO;
import com.example.demo.dao.ReplyDAO;

@Controller
public class PostController {

	public static int pageSIZE =  2;
	public static int totalCount  = 0;
	public static int totalPage = 1;
	
	@Autowired
	private PostDAO dao;
	public void setDao(PostDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	private ReplyDAO re_dao;
	public void setRe_dao(ReplyDAO re_dao) {
		this.re_dao = re_dao;
	}
	
	//게시판 전체글 가져오기
	@RequestMapping("/postList.do")
	public void postList(Model model, String group, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
		HashMap map=new HashMap();
		map.put("group", group);
		
		totalCount = dao.getTotalCount(map);
		totalPage = (int)Math.ceil( (double)totalCount/pageSIZE ) ;
		int start = (pageNUM-1)*pageSIZE + 1;
		int end = start + pageSIZE-1;
		if(end > totalCount) {
			end = totalCount;
		}
		
		map.put("start", start);
		map.put("end", end);
		
		model.addAttribute("list", dao.findAll(map));
		model.addAttribute("group", group);
		model.addAttribute("start", start-1);
		model.addAttribute("end", end-1);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPage", totalPage);
	}

	//게시판 상세글 보기
	//댓글 불러오기
	@RequestMapping("/postDetail.do")
	public void detail(int p_id, String group, Model model) {
		HashMap map=new HashMap();
		map.put("p_id", p_id);
		map.put("group", group);
		
		model.addAttribute("p",dao.findById(map));
		model.addAttribute("listReply",re_dao.findAll(map));
	}
}

