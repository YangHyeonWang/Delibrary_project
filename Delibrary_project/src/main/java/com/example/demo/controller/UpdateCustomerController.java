package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CustomerDAO;
import com.example.demo.vo.CustomerVO;

@Controller
@RequestMapping("/UpdateCustomer.do")
public class UpdateCustomerController {
	
	@Autowired
	private CustomerDAO dao;

	public void setDao(CustomerDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public void form(int cust_no, Model model) {
		model.addAttribute("c", dao.findByCust_No(cust_no));
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView submit(HttpServletRequest request, CustomerVO c, MultipartFile uploadFile) {
		String path = request.getRealPath("img");
		String Email = request.getParameter("id")+"@"+request.getParameter("email");
		c.setEmail(Email);
		String[] values = request.getParameterValues("genre");
		String interest = "";
		for (int i = 0; i < values.length; i++) {
			if (i == values.length-1) {
				interest += values[i];
			} else {
				interest += (values[i] + ",");
			}
		}
		c.setInterest(interest);
		
		String fname = uploadFile.getOriginalFilename();
		if(fname != null && !fname.equals("")) {
			try {
				byte[] data = uploadFile.getBytes();
				FileOutputStream fos = new FileOutputStream(path + "/" + fname);
				fos.write(data);
				fos.close();
			}catch (Exception e) {
				System.out.println("예외발생 updateCustomer : " + e.getMessage());
			}
			c.setFname(fname);
		}
		ModelAndView mav = new ModelAndView("redirect:/MyPage_Info.do?cust_no="+c.getCust_no());
		int re = dao.update(c);
		if(re <= 0) {
			mav.addObject("msg", "수정 오류 다시 확인해주세요.");
			mav.setViewName("error");
		}else {
			if(fname != null && !fname.equals("") && !c.getFname().equals("")) {
				File file = new File(path + "/" + c.getFname());
				file.delete();
			}
		}
		return mav;
	}
}
