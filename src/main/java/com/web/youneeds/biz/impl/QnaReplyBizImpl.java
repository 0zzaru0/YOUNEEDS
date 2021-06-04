package com.web.youneeds.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.youneeds.biz.interf.QnaReplyBiz;
import com.web.youneeds.dao.interf.QnaReplyDao;
import com.web.youneeds.dto.QnaReplyDto;

@Service
public class QnaReplyBizImpl implements QnaReplyBiz{

	@Autowired
	private QnaReplyDao qnaReplyDao;
	
	@Override
	public List<QnaReplyDto> selectList(Map<String, Integer> map) {
		return qnaReplyDao.selectList(map);
	}

	@Override
	public QnaReplyDto selectOne(int qna_reply_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(QnaReplyDto dto) {
		return qnaReplyDao.insert(dto);
	}

	@Override
	public int update(QnaReplyDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int qna_reply_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectListMaxLength(int qna_id) {
		Integer temp = qnaReplyDao.selectListMaxLength(qna_id);
		int res;
		if(temp==null) {
			res=0;
		}else {
			res=temp.intValue();
		}
		
		return res;
	}

}
