package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ReplyManager;
import com.example.demo.vo.ReplyVO;

@Repository
public class ReplyDAO {
	
	
	//댓글 불러오기
	public List<ReplyVO> findAll(HashMap map){
		return ReplyManager.findAll(map);
	}
	
//	//댓글 작성
//	public int insertBull(PostVO p) {
//		return PostManager.insertBull(p);
//	}
//	
//	public int updateStep(HashMap map) {
//		return PostManager.updateStep(map);
//	}
	
//	public int delete(HashMap map) {
//		return PostManager.delete(map);
//	}
//	
//	public int update(BoardVo b) {
//		return PostManager.update(b);
//	}
}
