package com.pmp.pet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.Free;
import com.pmp.pet.vo.Pride;

public class PrideDAO {
	public static List<Pride> selectList(int no){
		List<Pride> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("pride.selectList",no);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return list;
		
	}
}
