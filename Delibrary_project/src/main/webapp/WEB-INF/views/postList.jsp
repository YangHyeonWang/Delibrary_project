<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS.css">
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

	<div id="content">
		<aside id="main_aside">
		<br><br>
			<h2>커뮤니티</h2><br><br>
			<p><a href="postList.do?group=10">공지사항</a></p><br>
			<p><a href="postList.do?group=20">창작물 게시판</a></p><br>
			<p><a href="postList.do?group=30">중고장터</a></p><br>
		</aside>
		<section id="main_section">
			<article class="main_article">	
				<c:if test="${group eq 10}">
					<h3>공지사항<br>&nbsp;</h3>
				</c:if>
				<c:if test="${group eq 20}">
					<h3>창작물 게시판<br>&nbsp;</h3>
				</c:if>
				<c:if test="${group eq 30}">
					<h3>중고장터<br>&nbsp;</h3>
				</c:if>
				<a href="postInsert.do" class="insert">글쓰기</a><br>
				<form action="" method="post" class="search">
					<br>
					총 ${totalCount} 개
					<br>
					<br>
					<input type="submit" value="검색">
					<input type="search" name="search">
					<select name="option">
						<option value="title">제목</option>
						<option value="writer">작성자</option>
						<option value="content">내용</option>
					</select>
				</form>
				<table>
					<tr>
		                  <th nowrap width="80">분류</th>
		                  <th nowrap width="200" align="left">제목</th>
		                  <th nowrap width="200">게시일</th>
		                  <th nowrap width="100">작성자</th>
		                  <th nowrap width="80">조회</th>
               			</tr>
		
					<c:forEach var="p" items="${list }" begin="${start }" end="${end }">
						<tr>
							<td align="center">${p.p_id }</td>
							<td>
								<a href="postDetail.do?p_id=${p.p_id}&&group=${group}">${p.p_title }</a>
							</td>
							<td align="center">${p.p_regdate }</td>
							<td align="center">${p.p_writer }</td>
							<td align="center">${p.p_hit }</td>
						</tr>
					</c:forEach>
				</table>
				<c:forEach var="i" begin="1" end="${totalPage }">
					<a href="postList.do?group=${group}&&pageNUM=${i }">${i }</a>&nbsp;
				</c:forEach>
				<a href="postInsert.do?group=${group}" class="insert">글쓰기</a>
			</article>
		</section>
	</div>
	<footer id="main_footer">
		<p>&copy; 탈주금지조. All rights reserved. | Design by members of 탈주금지조</a>.</p>
		<img alt="트위터" src="img/twitter_icon.png">
		<img alt="페이스북" src="img/facebook_icon.png">
		<img alt="인스타그램" src="img/insta_icon.png">
		<img alt="유튜브" src="img/youtube_icon.png">
	</footer>
</body>
</html>

