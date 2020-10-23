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
			<img alt="홈페이지" src="img/DelibraryLogo.png" width=500px; height=150px;>
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
			<h3>커뮤니티</h3><br><br>
			<p><a href="postList.do?group=10">공지사항</a></p><br>
			<p><a href="postList.do?group=20">창작물 게시판</a></p><br>
			<p><a href="postList.do?group=30">중고장터</a></p><br>
		</aside>
		<section id="main_section">
			<article class="main_article">
				<c:if test="${group eq 10 }">
					<h3>공지사항<br>&nbsp;</h3>
				</c:if>
				<c:if test="${group eq 20 }">
					<h3>창작물 게시판<br>&nbsp;</h3>
				</c:if>
				<c:if test="${group eq 30 }">
					<h3>중고장터<br>&nbsp;</h3>
				</c:if>
		        <div id="move_list">
		        	<a href="#">&lt; 이전</a>&nbsp;&nbsp;
		        	<a href="#">다음 &gt;</a>&nbsp;&nbsp;
		        	<a href="postListBull.do">목록</a>
		        </div>
		        
		     <%--    <div id="move_list2">
						<a href="post_Update.do?p_no=${p.p_no }&&p_id=${p.p_id}&&cust_no=${cust_no}">삭제하기</a>	        	
						<a href="post_Delete.do?p_no=${p.p_no }&&p_id=${p.p_id}&&cust_no=${cust_no}">수정하기</a>
		        </div> --%>
		        
		        <div style="border: 1px solid #eee; padding: 10px; margin: 10px 10px 10px 0px;">
		        
		       <!--  INSERT FORM START -->
		        <form action="postInsert.do" method="post" enctype="multipart/form-data">
					<div id="p_title">
					게시판:<select name="group">
							<option value="20">창작물게시판</option>
							<option value="30">중고장터</option>
						</select><br>
						 
						<input type="hidden" name="p_no">
						제목: <input type="text" name="p_title" value="글제목">
						<input type="hidden" name="cust_no" value="${cust_no }">
						<br>
						작성자: ${nickname }
						<input type="hidden" name="p_writer" value="${nickname }">
						<%-- <p style="font-size: 15px; color: #aaa;">게시일 ${p.p_regdate} | 작성자 ${p.p_writer} | 조회 ${p.p_hit }</p> --%>
					</div>
					<div id="p_content">
						<textarea rows="15" cols="90" name="p_content"></textarea>
					</div>
					<%-- <input type="hidden" value="${cust_no }"> --%>
					<input type="submit" value="글 등록하기">
				</form>	
			<!-- INSERT FORM END -->

					<%-- <div>
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
					</div> --%>
				</div>
			</article>
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer입니다.</h3>
	</footer>
</body>
</html>