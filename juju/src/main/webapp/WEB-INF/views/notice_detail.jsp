<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="head.jsp"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {//축약형
		//alert("!");
		$("#delBtn").click(function() {
			//alert("삭제버튼을 눌렀습니다");
			if (confirm("게시글을 삭제하시겠습니까?")) {
				alert("삭제합니다");
				location.href = "./postDel.do?bno=${notice_detail.board_no }";
			}
		});
		$("#updateBtn").click(function() {
			if (confirm("게시글을 수정하시겠습니까?")) {
				alert("수정합니다");
				location.href = "./update.do?bno=${notice_detail.board_no}";
			}
		});
	});
</script>
<title>공지사항</title>
</head>
<style>
body {
	height: 800px;
}

h2 {
	margin-top: 50px;
	text-align: center;
}

#tit_detail {
	display: flex;
	justify-content: space-around;
	width: 150px;
	margin: 20;
}

#dc_container {
	border: 1px solid;
	margin: 50 200 0 200;
	height: 500px;
}

#dc_main {
	width: 1000px;
	height: 400px;
	margin: 20 auto;
	display: block;
}

#dc_img {
	width: 900px;
	height: 300px;
	margin: 0 auto;
	text-align: center;
	overflow: hidden;
}

#dc_text {
	width: 500px;
	margin: 15 auto;
	text-align: center;
}

#dc_btn {
	width: 300px;
	margin: 20 auto;
	display: flex;
	align-items: center;
	justify-content: space-around;
}
</style>

<body>

	<h2>${notice_detail.board_title }</h2>

	<div id="dc_container">
		<div id="tit_detail">
			<div>${notice_detail.a_name }</div>
			<div>${notice_detail.board_date }</div>
		</div>
		<div id="dc_main">

			<div id="dc_img">
				<c:if test="${notice_detail.board_file ne null}">
					<img alt="img"
						src="./resources/upload/${notice_detail.board_file }">
				</c:if>
			</div>

			<div id="dc_text">${notice_detail.board_content }</div>
		</div>
	</div>
	<div id="dc_btn">
		<c:if test="${sessionScope.id ne null}">
			<button class="btn btn-primary" id="updateBtn">수정</button>
			<button class="btn btn-danger" id="delBtn">삭제</button>
		</c:if>
		<button class="btn btn-success" onclick="location.href='./notice.do'">이전</button>
	</div>

</body>
</html>
