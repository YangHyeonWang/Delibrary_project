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
        	<h2>고객 지원</h2>
        	<br><br>
				<p><a href="faqViewpage.do">FAQ</a></p><br/>
		    	<p><a href="listQna.do">Q&A</a></p><br/>
		    	<p><a href="addrViewpageAPI.do">오시는 길</a></p>
      	</aside>
 
	    <div class="addr">
		<img src="img/addricon.PNG" width='80' height='60'> <h2>오시는 길</h2>
		<hr>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.
		1103800594706!2d126.93563751468302!3d37.552463132692885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.
		1!3m3!1m2!1s0x357c98be0a2cf6e3%3A0x4d8963de2196f6dc!
		2z7ISc7Jq47Yq567OE7IucIOuniO2PrOq1rCDrjIDtnaXrj5kg67Cx67KU66GcIDIz!5e0!3m2!1sko!2skr!4v1601211189306!5m2!1sko!2skr" 
		width="600" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"
		width="500" height="400"></iframe>
		<hr>
			<div id="text" align="center">	 
				<b>Delibrary</b> | 서울 마포구 백범로 23 구프라자 3층<br>
				 
				<b>고객센터</b> | 070-1234-5678<br>
				평일 9:00 - 18:00, 점심시간 12:00 - 13:30 &nbsp;( <span><font color="red"> 주말/공휴일 휴무 </font></span> )<br>
				 
				<b>팩스번호</b> | 0504-123-1234<br>
						 
				<b>이 메 일</b> | delibrary@book.com<br>
			</div>
		</div> 
	</div>
	<footer id="main_footer">
      <h3>footer입니다.</h3>
   </footer>  
</body>
</html>