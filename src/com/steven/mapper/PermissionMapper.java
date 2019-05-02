package com.steven.mapper;

import java.util.List;

import com.steven.entity.Permission;

public interface PermissionMapper {
	public List<Permission> listPermissionsByUserName(String userName);
	
}
