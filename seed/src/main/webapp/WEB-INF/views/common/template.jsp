<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.png">
		
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="/assets/css/common.css">
		<link rel="stylesheet" type="text/css" href="/assets/css/user.css">
		<link rel="stylesheet" type="text/css" href="/assets/css/record.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
		
		<!-- jQuery -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<!-- JS -->
		<script src="../../assets/js/user.js"></script>
		
		<!-- title -->
		<title>${title}</title>
	</head>
	<body>
		<div class="container">
			<div class="header">
				<div class="logo flex-grow">
					<img id="logo" alt="seed_logo" src="/assets/img/logo.png" onclick="goMain()">
				</div>
				<div class="ect flex-grow">
					<c:if test="${loginUser != null}">
						<div class="margin-right-20">
							<span id="user_name">
								${loginUser.user_name}
							</span>님 환영합니다 
						</div>
						<div class="dropdown">
							<div class="pImgContainer">
								<c:choose>
									<c:when test="${loginUser.profile_img != null}">
										<img class="pImg" onclick="showDrop()" src="/assets/img/user/${loginUSer.i_user}/${loginUser.profile_img}">
									</c:when>
									<c:otherwise>
										<img class="pImg" onclick="showDrop()" src="/assets/img/default_profile_img.png">
									</c:otherwise>
								</c:choose>
							</div>
							<div class="dropdownContent" id="userDropdown">
								<a href="#">나의 정보</a>
							    <a href="#">나의 카테고리</a>
							    <hr />
							    <a href="/user/logout">로그아웃</a>
							</div>
						</div>
					</c:if>
					<c:if test="${loginUser == null}">
						<span class="margin-right-20">SEED의 계정이 있으신가요?</span>
						<span><a href="/user/login">로그인</a></span>
					</c:if>
				</div>
			</div>
			<section class="content">
				<jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
			</section>
			<div class="footer">
				<div class="contact">
					<h1>
						Contact
					</h1>
					<h3>
						<span class="iconify" data-icon="ant-design:github-outlined" data-inline="false"></span>
						<span>https://github.com/seunnnc</span>
					</h3>
					<h3>
						<span class="iconify" data-icon="ic:baseline-alternate-email" data-inline="false"></span>
						<span>wnseunc@gmail.com</span>
					</h3>
				</div>
				<div class="copyright">
					<h2>© SE CHOI, 2021</h2>
				</div>
			</div>
		</div>
		<script>
			function showDrop() {
			  document.getElementById('userDropdown').classList.toggle('show');
			}

			window.onclick = function(event) {
			  if (!event.target.matches('.pImg')) {
			    var dropdowns = document.getElementsByClassName('dropdownContent');
			    var i;
			    for (i = 0; i < dropdowns.length; i++) {
			      var openDropdown = dropdowns[i];
			      if (openDropdown.classList.contains('show')) {
			        openDropdown.classList.remove('show');
			      }
			    }
			  }
			}
		</script>
		<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	</body>
</html>