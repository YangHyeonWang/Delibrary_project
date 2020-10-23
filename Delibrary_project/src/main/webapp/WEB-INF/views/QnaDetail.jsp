<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="StyleSheet" type="text/css" href="/resource/TeamCSS.css">

<script>
    function value_check() {
        var check_count = document.getElementsByName("genre").length;
 
        for (var i=0; i<check_count; i++) {
            if (document.getElementsByName("genre")[i].checked == true) {
                alert(document.getElementsByName("genre")[i].value);
            }
        }
    }
</script>
	<!-- 콘텐츠 -->
	<style>
		#content {
			text-align: left;
		}
		
		#content > #main_section {
			width: 750px;
			float: right;
			margin-left: auto;
		}
		
		#content > #main_aside {
			text-align: center;
		}
	</style>
	<!-- 사이드 -->
	<style>
		.tab_item {
			height: 230px;
		}
	</style>
	<!-- 게시글 상세 -->
	<style type="text/css">
		#main_section a{
			padding: 3px; 
			text-decoration: none; 
			background-color: #eff3f8; 
			color: black;
		}
		#main_section a:visited{
			background-color: #eff3f8; 
		}
		#main_section a:hover{
			 background-color: #b2c4df;
		}
		#move_list{
			margin: 20px 0 10px 0;
		}
		#move_list a{
			padding: 7px 15px 7px 15px;
		}
		#move_list2 a{
			padding: 7px 15px 7px 15px;
			float: right;
		}
		#p_title{
			border-bottom: 1px solid #eee; 
			padding-bottom: 10px;
		}
		#p_title p{
			font-size: 25px;
		}
		#p_content{
		 padding: 10px;
		 border-bottom: 1px solid #eee;
		}
		#re_Submit{
			 margin-top:20px; 
		}
		#re_Submit span{
			 font-size: 20px;
		}
		#re_Submit textarea{
			resize: none;
			width:100%; 
			height:100px; 
			border: 1px solid #ccc; 
			margin:5px 0 10px 0;
		}
		#re_Submit input{
			background-color: #eee;
			border: 0;
		}
		#re_content div{
			border: 1px solid #eff3f8;
			margin-top: 10px;
			padding:5px;
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
		    	<p><a href="QnaList.do">QNA</a></p><br/>
		    	<p><a href="addrViewpageAPI.do">오시는 길</a></p>
      	</aside>
		<section id="main_section">
			<article class="main_article">
				QNA 게시판
	        <div id="move_list">
	        	<a href="#">&lt; 이전</a>&nbsp;&nbsp;
	        	<a href="#">다음 &gt;</a>&nbsp;&nbsp;
	        	<a href="QnaList.do">목록</a>
	        </div>
	        <div id="move_list2">
					<a href="QnaDeletePage.do?p_no=${p_no }">삭제하기</a>	        	
					<a href="QnaUpdatePage.do?p_no=${p_no }&&p_id=${p_id}">수정하기</a>
	        </div>
	        <div style="border: 1px solid #eee; padding: 10px; margin: 10px 10px 10px 0px;">
				<div id="p_title">
					<p>${p_title }</p>
					<br>
					<p style="font-size: 15px; color: #aaa;">게시일 ${p_regdate} | 작성자 ${p_writer} | 조회 ${p_hit }</p>
				</div>
				<div id="p_content">
					${p_content }
				</div>
				<div>
					<div id="re_Submit">
						<span>댓글</span>
						<input type="submit" value="등록하기">
						<textarea></textarea>
					</div>
					<div id="re_content">
						<c:forEach var="r" items="${listReply }">
							<div>
								<p style="font-weight: bold; background-color: #eff3f8; padding: 5px;">${r.re_writer}</p>
								<p style="font-size: 15px; color: #aaa;">${r.date }</p>
								<p>${r.re_content }</p>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer입니다.</h3>
	</footer>
</body>
</html>