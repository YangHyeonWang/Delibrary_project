<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS.css">
<style type="text/css">

.faq{
	width: 600px;
	margin: 0 auto;
}
.faq .hgroup{
	border-bottom: 2px solid ;
}
.faq .hgroup:after{
	content:'';
	display: block;
	clear: both;
}
.faq .hgroup: h2{
	float: left;
	margin: 15px 0;
}

.faq ul .q a {
	display: block;
	border-bottom: 1px solid ;
	padding: 8px 10px ;
	color: #FF91D1;
	font-weight: bold;
}
.faq ul .a {
	display: none;
	padding: 8px 10px;
	border-bottom: 1px solid;
	color: #6270BF;
	line-height: 1.6;
}
.faq ul .article .a:target {
	display: block;
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
			<div class="faq">
				<div class="hgroup">
					<img src="img/icon.PNG" width="80" height="60"><h2>FAQ</h2>
				</div>
				
				<form action="#">
				&nbsp;
				<p align="right">
			        <select name="option" size="1">
			           <option value="제목">제목</option>
			           <option value="내용">내용</option>
			        </select>
			        <input type="text" value="검색어를 입력해주세요" size="60px;">
			        <input type="submit" value="Search">
			    </p>
			    </form>
			<br>
			<br>
				
				<ul>
					<li class="article">
						<p class="t"><a href="#a2">Q : 회원가입을 하면 편리한 점이 무엇인가요?</a></p>
						<p class="a" id="a2">A :<br> ㅇ 도서관 홈페이지 이용시 반복되던 신분확인 절차가 회원가입시 한번의 인증으로 간소화 됩니다.<br>
												ㅇ 홈페이지에서 등록된 아이디로 간편하게 도서관 서비스 신청이 가능합니다.<br>
												ㅇ 회원가입시 입력하신 관심 주제분야의 추천도서를 제공 받을 수 있습니다.</p>
					</li>
					
					<li class="article">
						<p class="t"><a href="#a1">Q : 등록된 내 정보를 변경하고 싶습니다.</a></p>
						<p class="a" id="a1">A :<br> Delibrary의 회원정보 변경은 고객님께서 직접 홈페이지 로그인 후<br>
						[마이페이지 > 회원정보 > 회원 정보 조회/수정] 에서 정보를 변경하실 수 있습니다. </p>
					</li>
					
					<li class="article">
						<p class="t"><a href="#a3">Q : 탈퇴는 어떻게 하나요?</a></p>
						<p class="a" id="a3">A : Delibrary 홈페이지 로그인 => ‘회원정보수정’ => ‘회원탈퇴’ 메뉴 클릭</p>
					</li>
				</ul>
			</div>
		</section>
	</div>
</body>
</html>