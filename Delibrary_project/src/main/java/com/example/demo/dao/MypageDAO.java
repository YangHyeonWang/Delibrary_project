package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.MyPageManager;
import com.example.demo.vo.FolderVO;

@Repository
public class MypageDAO {

	//폴더 목록 갖고오기
	public List<FolderVO> getUserFolder(int cust_no) {
		return MyPageManager.getUserFolder(cust_no);
	}
}
