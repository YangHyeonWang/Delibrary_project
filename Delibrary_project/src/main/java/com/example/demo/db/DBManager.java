package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BookVO;
import com.example.demo.vo.CustomerVO;
import com.example.demo.vo.PostVO;

public class DBManager {
	
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/example/demo/DB/sqlMapConfig.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			System.out.println("static 예외발생: "+e.getMessage());
		}
	}
	
	// 홈화면 사서추천도서 뽑아오는 메소드
	public static List<BookVO> getStaffRecommend() {
		List<BookVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getStaffRecommend");
		session.close();
		return list;
	}
	
	// 홈화면 신작도서 뽑아오는 메소드
	public static List<BookVO> getNewRecommend() {
		List<BookVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getNewRecommend");
		session.close();
		return list;
	}
	
	// 홈화면 게시글 뽑아오는 메소드
	public static List<PostVO> getHomePost(int group) {
		List<PostVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getHomePost", group);
		session.close();
		return list;
	}
	
	// 로그인 시에 회원정보가 있는지 확인하는 메소드
	public static CustomerVO getCustInfo(CustomerVO custVO) {
		CustomerVO vo = null;
		SqlSession session = sqlSessionFactory.openSession();
		vo = session.selectOne("main.getCustInfo", custVO);
		return vo;
	}
	
	// 회원가입
	public static void insertCustomer(CustomerVO custVO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		// 새 회원번호 받아오는 로직
		int cust_no = session.selectOne("main.newCust_no");
		custVO.setCust_no(cust_no);
		
		session.insert("main.insertCustomer", custVO);
	}
	
	// 회원 탈퇴
	public static void OptOut(Map map) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.delete("main.optOut", map);
	}
	
	// 게시판으로 이동
	public static List<PostVO> getpostList(Map map) {
		List<PostVO> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("main.getpostList", map);
		return list;
	}
	
	// 페이징 처리를 위해 모든 개시물 개수를 받아오는 메소드
	public static int getTotalCount(Map map) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession();
		re = session.selectOne("main.getTotalCount", map);
		return re;
	}
}
