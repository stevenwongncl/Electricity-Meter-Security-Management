package com.steven.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steven.mapper.UserMapper;
import com.steven.entity.User;
import com.steven.service.UserService;

@Service
public class UserServiceImpl  implements UserService{

	@Autowired 
	UserMapper userMapper;
	
	@Override
	public String getPassword(String name) {		
		User u  = userMapper.getByName(name);
		if(null==u)
			return null;
		return u.getPassword();
	}

}
