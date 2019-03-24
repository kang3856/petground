package com.pmp.pet.dao;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.PetPoint;
import com.pmp.pet.vo.User;

public class petPointDAO {
	public static PetPoint selectOne(int no)
	{
		PetPoint pp =null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			pp = session.selectOne("pp.selectOne",no);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		finally {
			session.close();
		}
		
		return pp;
	}
}
