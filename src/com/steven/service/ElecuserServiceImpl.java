package com.steven.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steven.entity.Elecuser;
import com.steven.mapper.ElecuserMapper;

@Service
public class ElecuserServiceImpl implements ElecuserService {
	@Autowired 
	ElecuserMapper elecuserMapper;
	
	@Override
	public String getPassword(String name) {		
		Elecuser u  = elecuserMapper.getByUserName(name);
		if(null==u)
			return null;
		return u.getPassword();
	}

}
