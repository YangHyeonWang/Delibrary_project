<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS.css">
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
        	<h2>고객 지원</h2>
        	<br><br>
				<p><a href="faqViewpage.do">FAQ</a></p><br/>
		    	<p><a href="QnaList.do">Q&A</a></p><br/>
		    	<p><a href="addrViewpageAPI.do">오시는 길</a></p>
      	</aside>
<section id="main_section">
					
		<div class="qna">
			<div class="hgroup">
				<img src="img/icon.PNG" width="80" height="60"><h2>QNA</h2>
			</div>
			
			<form action="QnaList.do" method="post" id="search">
		       	
		        <p align="right">총 ${totalCount} 개    
			        <select name="option" size="1">
			           <option value="제목">제목</option>
			           <option value="내용">내용</option>
			           <option value="작성자">작성자</option>
			        </select>
			        
			        <input type="text" value="검색어를 입력해주세요" size="60px;">
			        <input type="submit" value="Search">
		        </p>
		    </form>
		
			<table border="2" width="600">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>게시일</th>
					<th>작성자</th>
					<th>조회수</th>
					
				</tr>
				
				<c:forEach var="q" items="${list }">
				<tr>
				    <td>${q.p_no}</td>
				    <td><a href="QnaDetail?p_id=${q.p_id }">${q.p_title }</a></td>
				    <td>${q.p_regdate}</td>
				    <td>${q.p_writer}</td>
				    <td>${q.p_hit}</td>
				    	    
				 </tr>
				 </c:forEach>
				 
			</table>
		<p align="right">	
		<input type="submit" value="글쓰기">
		</p>
		</div>
</section>
	</div>
	<footer id="main_footer">
		<h3>HTML5 + CSS3 Basic</h3>
		<address>Website Layout Basic</address>
	</footer>
</body>
</html>