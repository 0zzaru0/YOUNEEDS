package com.web.youneeds.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.youneeds.dao.interf.NoticeImgDao;
import com.web.youneeds.dto.NoticeImgDto;

@Repository
public class NoticeImgDaoImpl implements NoticeImgDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NoticeImgDto> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticeImgDto selectOne(int notice_img_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(NoticeImgDto dto) {
		

		
		return 0;
	}

	@Override
	public int update(NoticeImgDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int notice_img_id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
