package com.samodeika.spring.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.samodeika.spring.web.dao.User;
import com.samodeika.spring.web.dao.UsersDAO;


@Service("usersService")
public class UsersService {

	private UsersDAO usersDao;		
	
	@Autowired
	public void setOffersDao(UsersDAO usersDao) {
		this.usersDao = usersDao;
	}

	public void create(User user) {
		usersDao.create(user);
	}

}
