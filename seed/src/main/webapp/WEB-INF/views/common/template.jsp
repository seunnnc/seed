<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png">
		
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
		<div class="container">
			<div class="header">
				<img id="logo" alt="seed_logo" src="/assets/img/logo.png" onclick="goMain()">
			</div>
			<section>
				<jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
			</section>
			<div class="footer">
				<div class="contact">
					<h1>
						Contact
					</h1>
					<h3>
						<span class="iconify" data-icon="ant-design:github-outlined" data-inline="false"></span>
						https://github.com/seunnnc
					</h3>
					<h3>
						<span class="iconify" data-icon="ic:baseline-alternate-email" data-inline="false"></span>
						wnseunc@gmail.com
					</h3>
				</div>
				<div class="coptright">
					<h2>© SE CHOI, 2021</h2>
				</div>
			</div>
		</div>
		<script>
			function goMain() {
				location.href("/record/main");
			}
		</script>
		<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
	</body>
</html>