<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardListView</title>
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/board.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-default header_main"> 
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top"><img src="resources/images/logo.png" alt="Sanza theme logo"></a>
				</div>
				
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#about">About</a>
						</li>
						<li>
							<a class="page-scroll" href="#services">Services</a>
						</li>
						<li>
							<a class="page-scroll" href="#portfolio">Portfolio</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">Team</a>
						</li>
						<li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav> 

<h1 align="center">게시글 목록</h1>
<h3 align="center">총 게시글 갯수 : ${listCount}
<c:if test="${!empty member}">
&nbsp; &nbsp; &nbsp; <button onclick="showInsertForm();">글쓰기</button>
</c:if></h3>
<table align="center" border="1" cellspacing="0" width="700" id="tb">
<tr><th>번호</th><th>제목</th><th>작성자</th><th>날짜</th>
<th>조회수</th><th>첨부파일</th></tr>

<c:forEach var="b" items="${list}">

<tr><td align="center">${b.boardNum}</td>
<!-- 답글일 때는 들여쓰기함 -->
<td>
	<c:if test="${b.boardLevel eq 1}"> <!-- 원글의 답글일 때 -->
	 &nbsp; &nbsp; ▶ 
	 </c:if><c:if test="${b.boardLevel eq 2}"> <!-- 답글의 답글일 때 -->
	 &nbsp; &nbsp; &nbsp; &nbsp; ▶▶ 
	</c:if>
	<!-- 로그인한 사용자만 상세보기할 수 있게 처리함 -->
	<c:if test="${!empty member}">
	<c:url var="bdetail" value="/bdetail.do">
		<c:param name="bnum" value="${b.boardNum}"/>
		<c:param name="page" value="${currentPage}"/>
	</c:url>
	<a href="${bdetail}">${b.boardTitle}</a>
	</c:if><c:if test="${empty member}">
	${b.boardTitle}
	</c:if>
</td>
<td align="center">${b.boardWriter}</td>
<td align="center">${b.boardDate}</td>
<td align="center">${b.boardReadCount}</td>
<td align="center">
	<c:if test="${!empty b.boardOriginalFileName}">
		 ◎
	</c:if><c:if test="${empty b.boardOriginalFileName}">
		&nbsp;
	</c:if>
</td></tr>
</c:forEach>
<!-- 페이지 번호 처리 -->
<tr align="center" height="20">
<td colspan="6">
	<c:if test="${currentPage <= 1}">
		[이전] &nbsp;
	</c:if><c:if test="${currentPage > 1}">
	<c:url var="blistST" value="/blist.do">
		<c:param name="page" value="${currentPage-1}"/>
	</c:url>
		<a href="${blistST}">[이전]</a> &nbsp;
	</c:if>
	<!-- 페이지 숫자 보여주기 -->
	<c:forEach var="p" begin="${startPage}" end="${endPage}">
	<c:if test="${p eq currentPage}">
	<font color="red" size="4"><b>[${p}]</b></font>
	</c:if><c:if test="${p ne currentPage}">
	<c:url var="blistchk" value="/blist.do">
		<c:param name="page" value="${p}"/>
	</c:url>
		<a href="${blistchk}">${p}</a>
	</c:if>
	</c:forEach>
	<c:if test="${currentPage >= maxPage}">
		[다음]
	</c:if><c:if test="${currentPage < maxPage}">
	<c:url var="blistEND" value="/blist.do">
		<c:param name="page" value="${currentPage+1}"/>
	</c:url>
		<a href="${blistEND}">[다음]</a>
	</c:if>
</td>
</tr>
</table>
<br><br>
</body>
</html>















