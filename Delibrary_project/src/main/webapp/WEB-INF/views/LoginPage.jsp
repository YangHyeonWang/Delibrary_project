<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700&display=swap"
	rel="stylesheet">
	
	<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS_nonAside.css">
	<style>
	#content>#main_section {
		overflow: auto;
	}
	</style>
</head>
<body>
	<header id="main_header">
		<!-- <div id="logo">
			<a href="Home.do">
			<img alt="홈페이지 로고" src="img/home.png" width=150px; height=150px;>
			<p style="font-weight: bold;">통합도서 관리시스템</p>
			</a>
		</div> -->
		
		<div id="title">
			<a href="Home.do">
			<img alt="홈페이지" src="img/Logo.png" width=500px; height=150px;>
			</a>
		</div>
		<nav id="main_gnb"></nav>
		<nav id="main_lnb"></nav>
	</header>

	<!-- 메인 폼 시작-->

	<div id="content">
		<section id="main_section">
			<!-- 제목 -->
			<h2>로그인</h2>
			<form action="Home.do" method="post">
				<h4>이메일:</h4>
				<input type="text" name="email" class="input-box">

				<h4>비밀번호</h4>
				<input type="password" name="pw" class="input-box">
				
				<input type="hidden" name="loginOk" value="ok">
				
				<div>
					<input class="button" type="submit" value="로그인">
					<input class="button" type="reset" value="아이디/비밀번호찾기">
				</div>
				<br>
			</form>
		</section>
	</div>

	<footer id="main_footer">
		<p>&copy; 탈주금지조. All rights reserved. | Design by members of 탈주금지조</a>.</p>
		<img alt="" src="img/twitter_icon.png">
		<img alt="" src="img/facebook_icon.png">
		<img alt="" src="img/insta_icon.png">
		<img alt="" src="img/youtube_icon.png">
	</footer>
</body>
</html>
