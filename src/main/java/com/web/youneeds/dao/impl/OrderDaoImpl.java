package com.web.youneeds.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.youneeds.dao.interf.OrderDao;
import com.web.youneeds.dto.OrderDto;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<OrderDto> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDto selectOne(int order_id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public OrderDto selectDetail(int order_id) {
		OrderDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"selectDetail", order_id);
		} catch (Exception e) {
			System.out.println("[error] : orderDao - selectDetail");
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public int paying(OrderDto orderDto) {
		
		try {
			sqlSession.insert(NAMESPACE+"paying", orderDto);
		} catch (Exception e) {
			System.out.println("[error] : orderDao - paying");
			e.printStackTrace();
		}
		
		
		return orderDto.getOrder_id();
	}

	@Override
	public int update(OrderDto orderDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OrderDto> myPageInfo(int m_uid) {
		List<OrderDto> dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"myPageInfo", m_uid);
		} catch (Exception e) {
			System.out.println("[error] : orderDao - mypageInfo");
			e.printStackTrace();
		}
		
		return dto;
	}


}
