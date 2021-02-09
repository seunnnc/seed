<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="loginContainer">
	<form class="frm" id="loginFrm" action="/user/login" method="post">
		<img alt="seed_logo" src="/assets/img/logo.png">
		<div>
			<label for="user_email">이메일</label>
			<input type="email" id="user_email" placeholder="이메일을 입력하세요">
			<label for="user_pw">비밀번호</label>
			<input type="password" id="user_pw" placeholder="비밀번호를 입력하세요">
		</div>
		<button type="submit">로그인</button>
	</form>
	<div class="joinBox">
		<span>계정이 없으신가요?</span>
		<span id="join" onclick="joinBtn()">등록하기</span>
	</div>
</div>


<script>
	function joinBtn() {
		location.href='/user/join';
	}
</script>
