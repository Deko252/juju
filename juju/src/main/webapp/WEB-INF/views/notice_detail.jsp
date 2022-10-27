<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html lang="ko">
<head>
<title>공지사항</title>
</head>
<body>

<h2>자유 게시판</h2>

		
          		<thead>
	            	<tr id="top">
	              		<th scope="col">번호</th>
	              		<th scope="col">제목</th>
	              		<th scope="col">글쓴이</th>
	              		<th scope="col">날짜</th>
	            	</tr>
          		</thead>
	

	<div id="detailContent">
	${notice_detail }
		<div style="margin-left: 20px;">
			<h3>${notice_detail.board_title }</h3>
		</div>
		<div id="detailContentWriter">${notice_detail.b_name }/${notice_detail.board_date }</div>
		<div id="detailContentMain">${notice_detail.board_content }
			<%-- <c:if test="${detail2.board_file ne null}">
							<img alt="img" src="./resources/upload/${detail2.board_file }">
						</c:if> --%>
		</div>
	</div>

</body>
</html>
