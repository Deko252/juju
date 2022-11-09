<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약관리</title>

<script type="text/javascript">

	var check = 0;
	<c:if test="${sessionScope.id ne null }">check = 1;</c:if>
	if(check == 0){
		alert("잘못된 접근입니다.");
		location.href="../index.do";
	}


function del(no){
	if(confirm(no + "번을 삭제합니다")){
		location.href="./postDel.do?ano="+no;
	}
}               
function re(no){
	if(confirm(no + "번을 복원합니다")){
		location.href="./postRemove.do?ano="+no;
	}	
}
function linkPage(pageNo){location.href="./admin_appo.do?pageNo="+pageNo;}
</script>

<style type="text/css">

body {
	margin: 0 auto;
}
h1 {
	text-align: center;
}
#list{
	position:absolute; 
    top:50%; left:50%;
    transform: translate(-50%, -50%);  
}
table {
	border: 1px solid gray;
	width: 1200px;
	height: 500px;
}
#list td {
	font-size: 17px;
	border: 1px solid gray;
}
#list .td1 {
	text-align: center;
	width: 100px;
}
#list .td2 {
	text-align:center;
	width: 100px;
}
#list .td3 {
	text-align: center;
	width: 150px;
}
#list .td4 {
	text-align: center;
	width: 100px;
}
#list .td5 {
	text-align: center;
	width: 120px;
}
#list .td6 {
	text-align: center;
	width: 120px;
}
#list .td7 {
	text-align: center;
	width: 120px;
}
#list .td8 {
	text-align: center;
	width: 70px;
}
#list .td8 button, .detail {
	width: 50px;
	height: 30px;
	font-size: 15px;
}

body > div {
}
#list .tr1 {
	text-align: center;
	font-weight: bold;
	height: 50px;
}
#list .tr2 {
	height: 40px;
}
#paging {
	text-align: center;
	padding-top: 30px;
	font-size: 18px;
	text-decoration: none;
	letter-spacing: 10px;
}
a {
	text-decoration: none;
}
.ho{
padding:100px;
padding-top:30px;
font-size: 30px;
text-decoration: none;
font-style: italic;
}
.ii{
background-color: #bbb;

}

</style>
</head>
<body>
	<div class=" ho">
	 <span class="ii"><a href="../index.do" >HOME</a></span>
	 <span class="ii"><a href="../logout.do">LogOut</a></span>
	</div>

	<div id="list">
	<!-- 로그 찍어줄겁니다. jstl -->
	<h1>예약 관리</h1>
	<table>
		<thead>
		<tr class="tr1">
			<td class="td1">예약번호</td>
			<td class="td2">성함</td>
			<td class="td3">아이 이름</td>
			<td class="td4">전화번호</td>
			<td class="td5">반려동물 종</td>
			<td class="td6">예약날짜</td>
			<td class="td7">증상</td>
			<td class="td8">취소</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="p">
		<tr class="tr2">
			<td class="td1">${p.a_no }</td>
			<td class="td2">${p.name }</td>
			<td class="td3">${p.p_name }</td>
			<td class="td4">${p.num }</td>
			<td class="td5">${p.p_type }</td>
			<td class="td6">${p.appodate }</td>
			<td class="td7">${p.comment }</td>
			<td class="td8">
			<c:choose>
				<c:when test="${p.dismiss eq '0'}"><button onclick="del(${p.a_no })">삭제</button></c:when>
				<c:otherwise><button onclick="re(${p.a_no })">복원</button></c:otherwise>
			</c:choose>
			</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
		<!-- 페이징 -->
      	<div id="paging">
      		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
      	</div>
    </div>       	
</body>
</html>