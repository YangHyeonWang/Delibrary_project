<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
	    function value_check() {
	        var check_count = document.getElementsByName("genre").length;
	 
	        for (var i=0; i<check_count; i++) {
	            if (document.getElementsByName("genre")[i].checked == true) {
	                alert(document.getElementsByName("genre")[i].value);
	            }
	        }
	    }
	    
	    function changeArray(asc) {
	        location.href="Mypage_File.do?group=50&&array="+asc;
	    }
	</script>
	<link rel="StyleSheet" type="text/css" href="resource/TeamCSS.css">
	<!--  양현왕 추가  -->
	<style type="text/css">
		.scroll{
			  background-color: #eee;
			  width: 700px;
			  height: 600px;
			  border: 1px dotted black;
			  overflow-x: hidden;
			  overflow-y: scroll;
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
    	<form action="#">
    	<br>
		<p align="right" style="padding-right: 4px;">
		<input type="search" value="내 서재 검색">
		<input type="submit" value="검색">
        </p>
        </form>
        <form action="#">
	   		<p align="left">
	   		<font style="font-size: x-large; font-weight: bold;" >세줄독후감</font>&nbsp;&nbsp;도서 ${totalRecord }권 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<form action="#">
				<input type="checkbox" name="title" value="title" onclick="changeArray(this.value)">제목 순 정렬
				<input type="checkbox" name="number" value="number" onclick="changeArray(this.value)">추가 순 정렬
			</form>
			</p>
        </form>
        <hr>
        <br>
        <div class="scroll" id="f">
        	<div align="left">
        	<table style="text-align: center;" border="1" width="100%">
        <c:forEach var="p" items="${list }">
        		<tr>
        		<td>
		  	<a href="MyPage_DetailFile.do?p_id=${p.p_id}&&p_no=${p.p_no}&&group=${group}">
		  	<img src="img/${p.fname }" width="90" height="90">
          	</a>
          	</td>
          	<td>
          	<font style="font-size: small; font-weight: bold; color: gray;">${p.p_content }</font>
          	</td>
			  	</tr>
			  	<tr>

          			<td>
          	<font style="font-weight: bold;">${p.p_title }</font>
          			</td>
          			<td>
          	<font style="font-size: small; font-weight: bold;">${p.p_writer }</font>
			  		</td>
			  	</tr>
	  	</c:forEach>
		  	</table>
		  
		  </div>
        </div>
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer입니다.</h3>
	</footer>
</body>
</html>