package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.dao.MypageDAO;
import com.example.demo.dao.PostDAO;
import com.example.demo.dao.ReplyDAO;

@Controller
public class MypageController {
	
	public static int pageSIZE =  2;
	public static int totalCount  = 0;
	public static int totalPage = 1;
	
	@Autowired
	private MypageDAO dao;
	public void setDao(MypageDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	private CustomerDAO dao2;
	public void setDao2(CustomerDAO dao2) {
		this.dao2 = dao2;
	}
	
	@Autowired
	private PostDAO dao3;
	public void setDao3(PostDAO dao3) {
		this.dao3 = dao3;
	}
	
	@Autowired
	private ReplyDAO re_dao;
	public void setRe_dao(ReplyDAO re_dao) {
		this.re_dao = re_dao;
	}
	
	// 마이페이지 폴더 보기
	@RequestMapping("/MyPage_Folder.do")
	public void mypageFolder(int cust_no, HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		
		cust_no = (int)session.getAttribute("cust_no");
		
		request.setAttribute("c", dao2.findByCust_No(cust_no));
		request.setAttribute("flist", dao.getUserFolder(cust_no));
		request.setAttribute("cust_no", cust_no);
	}
	
	// 마이페이지 폴더에서 클릭하면 파일 나열하기
	@RequestMapping("/MyPage_File.do")
	public void postList(HttpServletRequest request,  HttpSession session, Model model, String group, @RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM) {
		HashMap map=new HashMap();
		map.put("group", group);
		
		totalCount = dao3.getTotalCount(map);
		totalPage = (int)Math.ceil( (double)totalCount/pageSIZE ) ;
		int start = (pageNUM-1)*pageSIZE + 1;
		int end = start + pageSIZE-1;
		if(end > totalCount) {
			end = totalCount;
		}
		
		map.put("start", start);
		map.put("end", end);
		
		model.addAttribute("list", dao3.findAll(map));
		model.addAttribute("group", group);
		model.addAttribute("start", start-1);
		model.addAttribute("end", end-1);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("totalPage", totalPage);
		
		int cust_no = (int)session.getAttribute("cust_no");
		request.setAttribute("c", dao2.findByCust_No(cust_no));
	}
	
	// 마이페이지 파일 상세보기
	@RequestMapping("/MyPage_DetailFile.do")
	public void detail(int p_id, String group, Model model, HttpServletRequest request,  HttpSession session) {
		HashMap map = new HashMap();
		map.put("p_id", p_id);
		map.put("group", group);
		
		model.addAttribute("p",dao3.findById(map));
		model.addAttribute("listReply",re_dao.findAll(map));
		
		int cust_no = (int)session.getAttribute("cust_no");
		request.setAttribute("c", dao2.findByCust_No(cust_no));
	}
	
}
