<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	    function changeArray(asc) {
	        location.href="Mypage_Folder.do?array="+asc;
	    }
	</script>
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
    	<form action="MyPage_Folder.do">
    	<br>
    	<br>
    	<hr style="border: #e6e6e6 1px dotted;">
		<p align="right" style="padding-top: 4px; padding-right: 4px;">
		<input type="search" value="내 서재 검색">
		<input type="submit" value="검색">
        </p>
        </form>
        <form action="#" style="text-align: left; padding-bottom: 4px;">
	   		<font style="font-size: x-large; font-weight: bold;" >나의 서재</font>&nbsp;&nbsp;폴더 : ${totalRecord2 }개&nbsp;|&nbsp;글    : ${totalRecord }개 
			<input type="submit" value="폴더추가">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</form>
        <hr>
        <form action="#" style="text-align: right; padding-right: 4px; padding-top: 4px; ">
			<input type="checkbox" name="array" value="title" onclick="changeArray(this.value)">제목 순 정렬
			<input type="checkbox" name="array" value="number" onclick="changeArray(this.value)">추가 순 정렬
			<input type="submit" value="선택폴더 삭제">
        </form>
        <div class="grid-container">
        <c:forEach items="${flist}" var="f">
		  <div>
		 	 <a href="MyPage_File.do?group=50">
		 	 <img src="img/folder.png" width="50" height="50"><br>
		 	 ${f.fol_name}
		 	 <font style="font-size: small;">${f.fol_name }</font>
			</a>
          </div> 
        </c:forEach>
		</div>
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer입니다.</h3>
	</footer>
</body>
</html>