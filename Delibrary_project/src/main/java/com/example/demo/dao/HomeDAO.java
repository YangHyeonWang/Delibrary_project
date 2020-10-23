package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.BookVO;
import com.example.demo.vo.CustomerVO;
import com.example.demo.vo.PostVO;

@Repository
public class HomeDAO {
	
	// 홈화면 사서추천도서 리스트 뽑아오는  메소드
	public List<BookVO> getStaffRecommend() {
		return DBManager.getStaffRecommend();
	}
	
	// 홈화면 신작도서 리스트 뽑아오는 메소드
	public List<BookVO> getNewRecommend() {
		return DBManager.getNewRecommend();
	}
	
	// 홈화면에 게시글 리스트 뽑아오는 메소드
	public List<PostVO> getHomePost(int group) {
		return DBManager.getHomePost(group);
	}
	
	// 로그인 시에 회원정보가 있는지 확인하는 메소드
	public CustomerVO getCustInfo(CustomerVO custVO) {
		return DBManager.getCustInfo(custVO);
	}
	
	// 회원가입
	public void insertCustomer(CustomerVO custVO) {
		DBManager.insertCustomer(custVO);
	}
	
	// 회원 탈퇴
	public void OptOut(Map map) {
		DBManager.OptOut(map);
	}

}