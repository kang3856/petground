package com.pmp.pet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.Free;

public class FreeDAO {
	public static List<Free> selectList(int no){
		List<Free> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("free.selectList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		
		
		return list;
	}
}
