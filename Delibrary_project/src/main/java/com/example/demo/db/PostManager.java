package com.example.demo.db;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.PostVO;


public class PostManager {
	
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource = "com/example/demo/db/sqlMapConfig.xml";
		try {
		InputStream inputStream=Resources.getResourceAsStream(resource);		
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		}catch (Exception e) {
			System.out.print("예외발생:"+e.getMessage());
		}
	}
	
	//게시판 전체글 가져오기
	public static List<PostVO> findAll(HashMap map){
		List<PostVO> list = null;
		SqlSession session=sqlSessionFactory.openSession();
		list=session.selectList("post.selectAll", map);
		session.close();
		return list;
	}
	
	//새글 번호 불러오기
	public static int getNextNo() {
		int re =  -1;
		SqlSession session=sqlSessionFactory.openSession();
		re=session.selectOne("post.nextNo");
		session.close();
		return re;
	}
	
	//게시판 전체글 수 조회
	public static int getTotalCount(HashMap map) {
		int re =  -1;
		SqlSession session=sqlSessionFactory.openSession();
		re=session.selectOne("post.selectCount", map);
		session.close();
		return re;
	}
	
	//게시판 상세글 보기
	public static PostVO findById(HashMap map) {
		PostVO p = null;
		SqlSession session=sqlSessionFactory.openSession();
		p=session.selectOne("post.selectById", map);
		session.close();
		return p;
	}
	
	public static int insertCreate(PostVO p) {
		int re =  -1;
		SqlSession session=sqlSessionFactory.openSession(true);
		re=session.insert("post.insertCreate", p);
		session.close();
		return re;
	}
	
	public static int update(PostVO p) {
		int re =  -1;
		SqlSession session=sqlSessionFactory.openSession(true);
		re = session.update("post.update", p);
		session.close();
		return re;
	}
	
	public static int delete(HashMap map) {
		int re =  -1;
		SqlSession session=sqlSessionFactory.openSession(true);
		re = session.delete("post.delete", map);
		session.close();
		return re;
	}
//	
//	public static int updateStep(HashMap map) {
//		int re =  -1;
//		SqlSession session=sqlSessionFactory.openSession(true);
//		re = session.update("post.updateStep", map);
//		session.close();
//		return re;
//	}

}




















