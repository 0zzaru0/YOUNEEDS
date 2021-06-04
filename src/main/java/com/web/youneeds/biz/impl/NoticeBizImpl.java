package com.web.youneeds.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.youneeds.biz.interf.NoticeBiz;
import com.web.youneeds.dao.interf.NoticeDao;
import com.web.youneeds.dto.NoticeDto;

@Service
public class NoticeBizImpl implements NoticeBiz {

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public List<NoticeDto> selectList(int p) {
		// TODO Auto-generated method stub
		return noticeDao.selectList(p);
	}

	@Override
	public NoticeDto selectOne(int notice_id) {
		return noticeDao.selectOne(notice_id);
	}

	@Override
	public int insert(NoticeDto dto) {
		return noticeDao.insert(dto);
	}

	@Override
	public int update(NoticeDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int notice_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectListMaxLength() {
		
		return noticeDao.selectListMaxLength();
	}

}
