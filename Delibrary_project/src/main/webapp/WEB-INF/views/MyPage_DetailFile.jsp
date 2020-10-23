<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="StyleSheet" type="text/css" href="resource/TeamCSS.css">
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
				<li><a href="postlist.do?group=10">커뮤니티</a>
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
         <h2>&nbsp;마이페이지</h2><br><br>
            <a href="MyPage_Info.do?cust_no=${cust_no }"><p>&nbsp;&nbsp;내정보</p></a><br>
             <a href="MyPage_Folder.do?cust_no=${cust_no }"><p>&nbsp;&nbsp;나의서재</p></a><br>
             <a href="optOutCustomer.do"><p>&nbsp;&nbsp;회원탈퇴</p></a>
      </aside>
		<section id="main_section">
		<br>
  		<div style="background-color: #aaa; width: 100% padding: 20px">
    	<img src="img/${c.fname }" width="100" heigth="100" align="left" style="background: white;"><br>
		<p align="left" style="font-size: large; font-weight: bold;">탈주금지 님의 서재</p>
		<p>&nbsp;</p>
        </div>
       	<br>
   		<br>
   		<p align="left">
   		<font style="font-size: x-large; font-weight: bold;" >세줄독후감</font>
   		</p>
   		<hr>
        <br>
        <p align="center" style="background-color: gray; ">
				<font style="font-weight: bold; color: white; font-size: x-large;">
				${p.p_no % 10000}<br/>
				</font>
        </p>
			<table border="1" width="100%">
				<tr>
					<td>
					<img src="img/${p.fname }" width="100" height="100">
					</td>
					<td>
					<font style="font-size: medium; font-weight: bold;">${p.p_content }</font>
					</td>
				</tr>
				<tr>
					<th>
					<font style="font-weight: bold; font-size: small;">${p.p_title }</font>
					</th>
					<td>
					<font style="font-size: small; font-weight: bold;">${p.p_writer }</font>
					</td>
				</tr>
				<%-- <tr>
					<td>
					</td>
				</tr> --%>
			</table>
			<p align="left">
			<font style="font-size: medium; font-weight: bold;" >
			등록일 : ${p.p_regdate}<br/>
			조회수 : ${p.p_hit}<br/>
			</font>
			</p>
		</section>
	</div>
	<footer id="main_footer">
		<h3>HTML5 + CSS3 Basic</h3>
		<address>Website Layout Basic</address>
	</footer>
</body>
</html>