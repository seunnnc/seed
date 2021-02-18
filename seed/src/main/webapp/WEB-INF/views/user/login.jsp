<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="loginContainer">
	<form class="frm" id="loginFrm" action="/user/login" method="post">
		<img alt="seed_logo" src="/assets/img/logo.png">
		<div>
			<div>
				<div class="display-flex">
					<label for="user_email">이메일</label>
					<div class="msg">
						<span>${data.emailMsg}</span>
					</div>
				</div>
				<input type="email" name="user_email" value="${data.user_email}" placeholder="이메일을 입력하세요" >
			</div>
			<div>
				<div class="display-flex">
					<label for="user_pw">비밀번호</label>
					<div class="msg">
						<span>${data.pwMsg}</span>
					</div>
				</div>
				<input type="password" name="user_pw" placeholder="비밀번호를 입력하세요" > 
			</div>
		</div>
		<button type="submit">로그인</button>
	</form>
	<div class="joinBox">
		<span>계정이 없으신가요?</span>
		<span id="join" onclick="joinBtn()">등록하기</span>
	</div>
</div>

<script></script>
