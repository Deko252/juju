<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">

<head> 

<script type="text/javascript">
$(function(){
   <c:if test="${param.result eq '1'}">
      alert("정상 등록되었습니다.");
   </c:if>
   <c:if test="${param.result eq '0'}">
      alert("저장할 수 없습니다\n다시 작성해주세요.");
   </c:if>
});
/* function linkPage(pageNo){location.href="./board2.do?pageNo="+pageNo;} */
</script>


<style type="text/css">
body {
  min-height: 100vh;
  background-color: #F4AE34;
}
table {
	text-align: center;
}
thead > tr {
	height: 40px;
}
.blind {
	position: absolute;
	overflow: hidden;
	margin: -1px;
	padding: 0;
	width: 1px;
	height: 1px;
	border: none;
	clip: rect(0, 0, 0, 0);
}

.input-form {
  margin-top: 50px;
  max-width: 1200px;
  padding: 32px;
  padding-top: 20px;
  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
}
.input-form > h2 {
	font-family: 'Jua', sans-serif;
    font-size: 50px;
	font-weight: 400;
}
h2{
	text-align: center;
	margin-top: 50px;
	margin-bottom: 20px;
}
#writeBtn {
	position: relative;
	left: 90%;
	margin-top: 10px;
}
.btn-primary {
	width: 80px;
	height: 40px;
	border: none;
	background-color: #EB2524;
		
}
.btn-primary:hover {
	background-color: #1F1D1E;
}
.table-striped td {
	height: 40px;
	padding-top: 7px;
}
#top > th{
	padding-bottom: 10px;
	height: 50px;
}
#paging {
	margin: 0 auto;
	font-size: 18px;
	letter-spacing: 2px;
	text-decoration: none;
	width: 600px;
	height: 30px; 
	text-align: center;
	padding-top: 5px;
    text-decoration: none;
}
.table-responsive {
	border-bottom: 1px solid gray;
}
tbody > tr:hover > * {
  --bs-table-accent-bg: var(--bs-table-hover-bg);
  color: var(--bs-table-hover-color);
}
tbody > tr:nth-of-type(2n+1):hover > * {
	--bs-table-accent-bg: var(--bs-table-hover-bg);
  	color: var(--bs-table-hover-color);
}
#top > th:first-child { width: 10%;}
#top > th:first-child + th { width: 50%;}
#top > th:first-child + th + th{ width: 20%;}
#top > th:first-child + th + th + th{ width: 20%;}
</style>


<style type="text/css">
@media (max-width: 349px) {
 .footer{
 	display: none;
 }
}
</style>

</head>

<body id="page-top">

	<!-- content -->
	<br>
	<div class="input-form col-md-12 mx-auto">
	
	<h2>공지사항</h2>
		<div class="table-responsive">
        	<table class="table table-striped table-sm">
          		<thead>
	            	<tr id="top">
	              		<th scope="col">번호</th>
	              		<th scope="col">제목</th>
	              		<th scope="col">글쓴이</th>
	              		<th scope="col">날짜</th>
	            	</tr>
          		</thead>
          		<tbody>
          		<c:forEach items="${list  }" var="s">
            		<tr>
              			<td>${s.board_no }</td>
              			<td><a href="./notice_detail.do?bno=${s.board_no }">${s.board_title }</a></td>
              			<td>${s.a_name }</td>
              			<td>${s.board_date }</td>
            		</tr>
          		</c:forEach>
            		
          		</tbody>
        	</table>
		    </div>
		   <%--  <!-- 페이징 -->
           	<div id="paging" style="text-decoration:none;">
           		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
           	</div> --%>
                    	<!-- 글쓰기 -->
                    	<c:if test="${sessionScope.id ne null}">
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./write.do'">글쓰기</button>
              			</c:if>
	</div>
</body>
</html>