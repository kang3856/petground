package com.pmp.pet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.Pet;

public class PetsDAO {
	public static List<Pet> selectList(int no) {
		List <Pet> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("pets.selectList",no);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return list;
	}
	public static Pet selectOne(String no) {
		Pet pet = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			pet = session.selectOne("pets.selectOne",no);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return pet;
	}
	public static int insert(Pet pet) {
		int result =0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			result = session.insert("pets.insert",pet);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}
	public static int update(Pet pet) {
		
		int result =0;
		
		SqlSession session =null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			result = session.update("pets.petupdate",pet);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return result ;
	}
	public static int delete(int no) {
		int result =0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			result = session.delete("pets.delete",no);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return result;
	}
}
