<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="joinContainer">
	<form class="frm" id="joinFrm" action="/user/join" method="post">
		<img alt="seed_logo" src="/assets/img/logo.png">
		<div>
			<div class="emailBox">
				<label for="user_email">이메일</label>
				<div class="msg">${msg}</div>
				<div class="chkEmail">
					<button type="button" id=chkEmail onclick="doubleChk()" value="N">중복확인</button>
				</div>
			</div>
			<input type="email" name="user_email" placeholder="이메일을 입력하세요">
			<label for="user_name">이름</label>
			<input type="text" name="user_name" placeholder="이름을 입력하세요">
			<label for="user_pw">비밀번호</label>
			<input type="password" name="user_pw" placeholder="비밀번호를 입력하세요">
			<label for="chk_pw">비밀번호확인</label>
			<input type="password" name="chk_pw" placeholder="비밀번호를 입력하세요">
		</div>
		<button type="submit">가입하기</button>
	</form>
	<div class="loginBox">
		<span>계정이 있으신가요?</span>
		<span id="login" onclick="loginBtn()">로그인하기</span>
	</div>
</div>
