<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
	<link rel="StyleSheet" type="text/css" href="TeamCSS_nonAside.css">
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
		<nav id="main_gnb">
			<ul>
				<c:if test="${empty cust_no }">
					<li><a href="LoginPage.do">로그인</a></li>
					<li><a href="insertCustomer.do">회원가입</a></li>
				</c:if>
				<c:if test="${not empty cust_no }">
					<li><a href="MyPage_Info.do?cust_no=${cust_no }">마이페이지</a></li>
					<li><a href="logout.do?cust_no=${cust_no }">로그아웃</a></li>
				</c:if>
			</ul>
		</nav>
		<nav id="main_lnb">
			<ul>
				<li><a href="#">도서대여</a></li>
				<li><a href="postList.do?group=10">커뮤니티</a>
					<ul class="sub">
						<li><a href="postList.do?group=10">공지사항</a></li>
						<li><a href="postList.do?group=20">창작물 게시판</a></li>
						<li><a href="postList.do?group=30">중고장터</a></li>
					</ul>
				</li>
				<li><a href="faqViewpage.do">고객지원</a>
					<ul class="sub">
						<li><a href="faqViewpage.do">FAQ</a></li>
						<li><a href="QnaList.do">Q&A</a></li>
						<li><a href="addrViewpageAPI.do">오시는길</a></li>
					</ul>
				</li>
				<li><a href="MyPage_Info.do?cust_no=${cust_no}">마이페이지</a>
					<ul class="sub">
						<li><a href="MyPage_Info.do?cust_no=${cust_no}">내정보</a></li>
						<li><a href="MyPage_Folder.do?cust_no=${cust_no}">나의서재</a></li>
						<li><a href="optOutCustomer.do">회원탈퇴</a></li>
					</ul>
				</li>
				<li><a href="siteMap.do">사이트맵</a></li>
			</ul>
		</nav>
	</header>
	<div id="content">
		<section id="main_section">
			<main>
				<div class="wrapperlist">
				<h3 class="titlemap">사이트맵</h3>
				<hr>
			
				<div class="map">
					<ul class="maplist"> 
						<li><h4 class="each_title">마이페이지</h4></li>
						<li><a href="MyPage_Info.do?cust_no=${c.cust_no}">내정보</a></li>
						<li><a href="MyPage_Folder.do?cust_no=${c.cust_no}">나의서재</a></li>
						<li><a href="optOutCustomer.do">회원탈퇴</a></li>
					</ul>
				</div>	

				<div class="map">
					<ul class="maplist">
						<li><h4 class="each_title">도서대여</h4></li>
						<li><a href="#">도서대출현황</a></li>
						<li>&nbsp;  </li>
						<li>&nbsp;  </li>
					</ul>
				</div>

				<div class="map">
					<ul class="maplist">
						<li><h4 class="each_title">커뮤니티</h4></li>
						<li><a href="postList.do?group=10">공지사항</a></li>
						<li><a href="postList.do?group=20">창작물게시판</a></li>
						<li><a href="postList.do?group=30">중고장터</a></li>
					</ul>
				</div>
			
				<div class="map">
						<ul class="maplist">
							<li><h4 class="each_title">고객지원센터</h4></li>
							<li><a href="faqViewpage.do">FAQ</a></li>
							<li><a href="QnaList.do">고객센터</a></li>
							<li><a href="addrViewpageAPI.do">오시는길</a></li>
						</ul>
					</div>
				</div>	
			</main>
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer입니다.</h3>
	</footer>
</body>
</html>