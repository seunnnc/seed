<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="/assets/css/common.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
		
		<!-- JS -->
    	<script src="/assets/js/user.js"></script>
		
		<!-- title -->
		<title>${title}</title>
	</head>
	<body>
		<div class="indexContainer">
			<div class="opacityBox"></div>
			<div class="startBox">
				<img alt="seed_logo" src="/assets/img/indexlogo.png">
				<button type="button" onclick="loginBtn()">
					로그인
				</button>
				<div class="joinBox">
					<span>계정이 없으신가요?</span>
					<span id="join" onclick="joinBtn()">등록하기</span>
				</div>
			</div>
		</div>
		<script src="/assets/js/user.js"></script>
	</body>
</html>