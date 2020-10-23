<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS_nonAside.css">
</head>
<body>
<!-- 헤더	 -->
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
				<li><a href="LoginPage.do">로그인</a></li>
				<li><a href="insertCustomer.do">회원가입</a></li>
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
	
	<!-- 메인 폼 시작-->
	
	<div id="content">
		<section id="main_section">
			<!-- 제목 -->
			<h2>회원가입</h2>
			<p>${msg }</p>
			<hr>
		    <form action ="insertCustomer.do" method="post" enctype="multipart/form-data">
		        <h4>이메일:</h4>  <input type="text" name="email" class="input-box"> @ 
		            <select name="emailer" class="input-box">
		                <option value="naver.com" selected="selected">naver.com</option>
		                <option value="nate.com">nate.com</option>
		                <option value="gmail.com">gmail.com</option>
		                <option value="hanmail.net">hanmail.net</option>
		                <option value="yahoo.com">yahoo.com</option>
		                <option value="hotmail.com">hotmail.com</option>
		                <option value="daum.net">daum.net</option>
		                <option value="korea.kr">korea.kr</option>
		                <option value="paran.com">paran.com</option>
		            </select>
		            <br>
		          <button class="button" type="button">인증 번호 발송</button>
		          			
		<h4>닉네임</h4>
		<input type="text" name="nickname" class="input-box">
		
		<h4>비밀번호</h4>
			<input type="password" name="pw" class="input-box">
        <h4>비밀번호 확인</h4>
             <input type="password" class="input-box">
             
       <h4>주소</h4>
        <select name="addr" class="input-box">
            <option value="home">자택</option>
            <option value="work">직장</option>
        </select>
        
         <input type="text" name="addr2" class="input-box" value="주소"><button class="button" type="button">우편번호찾기</button>
            <input type="text" name="addr3" class="input-box" value="상세주소">
      
		
        <h4>관심장르</h4>
      	<div>
           <input type="checkbox" name="interest" value="인문">인문
			<input type="checkbox" name="interest" value="경영">경영      
   		</div>
   		
   		<div>
			<input type="checkbox" name="interest" value="소설">소설     
      		<input type="checkbox" name="interest" value="역사">역사 
   		</div>
     		
   		<div>
			<input type="checkbox" name="interest" value="순수과학">순수과학
			<input type="checkbox" name="interest" value="응용과학">응용과학
   		</div>
		
		<h4>이름</h4>
		<input type="text" name="name" class="input-box">
		
		<h4>전화번호</h4>
		<input type="text" name="m_phone" class="input-box">
		
		<h4>생일</h4>
		<input type="text" name="birthday" class="input-box">
		<!-- 
		<h4>사진첨부</h4>
		<input type="file" name="fname" class="input-box"> -->
			<div>
				<input class="button" type="submit" value="회원가입하기">
				<input class="button" type="reset" value="입력취소">
			</div>		
			<br>
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
