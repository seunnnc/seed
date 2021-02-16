package com.se.seed.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.seed.Const;
import com.se.seed.SecurityUtils;
import com.se.seed.user.model.UserPARAM;
import com.se.seed.user.model.UserVO;

@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	
	public int join(UserVO param) {
		String pw = param.getUser_pw();
		String salt = SecurityUtils.generateSalt();
		String cryptPw = SecurityUtils.getEncrypt(pw, salt);
		
		param.setSalt(salt);
		param.setUser_pw(cryptPw);
		
		return mapper.insUser(param);
	}
	
	public int chkEmail(UserPARAM param) {
		return mapper.chkEmail(param);
	}
	
	//1: 로그인 성공, 2: 이메일 없음, 3: 비밀번호 없음
	public int login(UserPARAM param) {
		if(param.getUser_email().equals("")) { return Const.NO_EMAIL; }
		
		UserVO dbUser = mapper.selUser(param);
		
		if(dbUser == null) { return Const.NO_EMAIL; }
		
		String cryptPw = SecurityUtils.getEncrypt(param.getUser_pw(), dbUser.getSalt());
		
		if(!cryptPw.equals(dbUser.getUser_pw())) {
			return Const.NO_PW;
		}
		
		param.setI_user(dbUser.getI_user());
		param.setUser_pw(null);
		param.setUser_name(dbUser.getUser_name());
		param.setProfile_img(dbUser.getProfile_img());
		
		return Const.SUCCESS;
	}
}
