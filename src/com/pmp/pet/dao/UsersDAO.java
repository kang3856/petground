package com.pmp.pet.dao;

import org.apache.ibatis.session.SqlSession;

import com.pmp.pet.util.SqlSessionUtil;
import com.pmp.pet.vo.User;

public class UsersDAO {
	public static User selectOne(User user)
	{
		User loginUser = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			loginUser = session.selectOne("users.selectOne",user);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		finally {
			session.close();
		}
		
		return loginUser;
	}
	public static int update(User user) {
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			result = session.update("users.userUpdate",user);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			session.close();
		}
		
		return result;
	}
}
