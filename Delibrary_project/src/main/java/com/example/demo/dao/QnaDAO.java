package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.QnaManager;
import com.example.demo.vo.PostVO;

@Repository
public class QnaDAO {
	public List<PostVO> findAll(HashMap map){
		return QnaManager.findAll(map);
	}
	public int getTotalCount() {
		return QnaManager.getTotalCount();
	}
	public PostVO getQna(int p_id) {
		return QnaManager.findById(p_id);
	}
	public int getNextNo() {
		return QnaManager.getNextNo();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	////////////////////////////////////////
//	public int insert(PostVO p) {
//		return PostManager.insert(p);
//	}
//	public int update(PostVO p) {
//		return PostManager.update(p);
//	}
//	public int delete(HashMap map) {
//		return PostManager.delete(map);
//	}
}
