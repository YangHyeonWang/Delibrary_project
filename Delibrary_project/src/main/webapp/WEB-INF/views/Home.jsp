<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="StyleSheet" type="text/css" href="resource/TeamCSSHome.css">
	<script type="text/javascript" src="js/HomeJS.js"></script>
</head>
<body>
	<header id="main_header">
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
				<li><a href="listPost.do?group=10">커뮤니티</a>
					<ul class="sub">
						<li><a href="postList.do?group=10">공지사항</a></li>
						<li><a href="postList.do?group=20">창작물 게시판</a></li>
						<li><a href="postList.do?group=30">중고장터</a></li>
					</ul>
				</li>
				<li><a href="faqViewpage.do">고객지원</a>
					<ul class="sub">
						<li><a href="faqViewpage.do">FAQ</a></li>
						<li><a href="listQna.do">Q&A</a></li>
						<li><a href="addrViewpageAPI.do">오시는길</a></li>
					</ul>
				</li>
				<li><a href="MyPage_Info.do?cust_no=${cust_no }">마이페이지</a>
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
	
	<div id="search_area">
		<form class="sbar" action="searchBook.do" method="post">
			<div class="search__container">
    			<input class="search__input" type="text" placeholder="Search">
			</div>
		</form>
	</div>
	
	<div id="content">
		<section id="main_section">
			<article class="main_article">
				<h1>사서추천도서</h1>
				<div class="wrapper">
					<c:forEach items="${SRlist}" var="sr">
							<p class="recommend">
								<a href="detailBook.do?b_no=${sr.b_no }">
									<img alt="book image" src="img/${sr.b_image }"><br>
								</a><br/>
							</p>
					</c:forEach>
				</div>
			</article>
			<article class="main_article">
				<h1>신작 도서</h1>
				<div class="wrapper">
					<c:forEach items="${Newlist}" var="nr">
						<p class="recommend">
							<a href="detailBook.do?b_no=${nr.b_no }">
								<img alt="book image" src="img/${nr.b_image }"><br/>
							</a>
						</p>
					</c:forEach>
				</div>
			</article>
		</section>
		<aside id="main_aside">
			<div class="tab_item">
				<h3><a href="listPost.do?group=10">공지사항</a></h3>
				<ul>
					<c:forEach items="${HNlist}" var="hn">
						<li><a href="postDetail.do?p_id=${hn.p_id}&&p_no=${hn.p_no}&&group=10">${hn.p_title }</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="tab_item">
				<h3><a href="listPost.do?group=20">창작물 게시판</a></h3>
				<ul>
					<c:forEach items="${HMakinglist}" var="hmaking">
						<li><a href="postDetail.do?p_id=${hmaking.p_id}&&p_no=${hmaking.p_no}&&group=20">${hmaking.p_title }</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="tab_item">
				<h3><a href="listPost.do?group=30">중고장터</a></h3>
				<ul>
					<c:forEach items="${HMarketlist}" var="hmarket">
						<li><a href="postDetail.do?p_id=${hmarket.p_id}&&p_no=${hmarket.p_no}&&group=30">${hmarket.p_title }</a></li>
					</c:forEach>
				</ul>
			</div>
		</aside>
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