package com.se.seed.user;

import org.apache.ibatis.annotations.Mapper;

import com.se.seed.user.model.UserPARAM;
import com.se.seed.user.model.UserVO;

@Mapper
public interface UserMapper {
	public int insUser(UserVO p);
	public UserVO selUser(UserPARAM p);
}
