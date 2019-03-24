package com.pmp.pet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.PetType;

public class PetTypeDAO {
	public static List<PetType> selectList(String kind){
		List<PetType> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("PetType.selsceList",kind);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return list;
		
	}
	public static PetType selectOne(String kind) {
		PetType pet = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			pet = session.selectOne("PetType.selectOne",kind);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return pet;
	}
}
