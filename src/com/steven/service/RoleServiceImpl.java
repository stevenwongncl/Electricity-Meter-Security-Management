package com.steven.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.steven.mapper.RoleMapper;
import com.steven.entity.Role;
import com.steven.service.RoleService;

@Service
public class RoleServiceImpl  implements RoleService{

	@Autowired RoleMapper roleMapper;

	@Override
	public Set<String> listRoles(String userName) {
		String roles = roleMapper.listRolesByUserName(userName);
		Set<String> result = new HashSet<>();
		result.add(roles);
		System.out.println("roleserviceImpl÷–");
		return result;
	}
}
