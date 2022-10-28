<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>

<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){//축약형
	//alert("!");
	$("#delBtn").click(function(){
		//alert("삭제버튼을 눌렀습니다");
		if(confirm("게시글을 삭제하시겠습니까?")){
			alert("삭제합니다");
			location.href="./postDel.do?bno=${notice_detail.board_no }";
		}
	});
	$("#updateBtn").click(function(){
		if(confirm("게시글을 수정하시겠습니까?")){
			alert("수정합니다");
			location.href="./update.do?bno=${notice_detail.board_no}";	
		}
	});
});	
</script>
<title>공지사항</title>
</head>
<body>

<h2>공지사항</h2>
          		<thead>
	            	<tr id="top">
	              		<th scope="col">번호</th>
	              		<th scope="col">제목</th>
	              		<th scope="col">글쓴이</th>
	              		<th scope="col">날짜</th>
	            	</tr>
          		</thead>
	<div id="detailContent">
		<div style="margin-left: 20px;">
			<h3>${notice_detail.board_title }</h3>
		</div>
		<div id="detailContentWriter">${notice_detail.b_name }/${notice_detail.board_date }</div>
		<div id="detailContentMain">${notice_detail.board_content }
			<c:if test="${detail2.board_file ne null}">
				<img alt="img" src="./resources/upload/${notice_detail.board_file }">
			</c:if>
		</div>
					
					
				
			<c:if test="${sessionScope.id ne null}">
				<button class="btn btn-primary" id="updateBtn">수정</button>
				<button class="btn btn-danger" id="delBtn">삭제</button>
			</c:if>
				<button class="btn btn-success" onclick="location.href='./notice.do'">돌아가기</button>

	</div>
</body>
</html>
