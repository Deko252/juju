<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%> 

<!DOCTYPE html>
<html lang="ko">
<head> 
<%@ include file="head.jsp" %> 

<script type="text/javascript">
function linkPage(pageNo){location.href="./notice.do?pageNo="+pageNo;}
</script>

<style type="text/css">

body{
	height: 3000px;
}
#img_wrap{
	width: 100%;
	height: 450px;
	position: relative;
	margin-bottom: 50px;
}
#img_wrap img{
	width: 100%;
	height: 450px;
}
#img_wrap h1{
	color:#fff;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate( -50%, -50% );
}
#notice_box{
	margin: 0 auto;
	width: 1000px;
	height: 2250px;
}
#top_border{
	border-top:1px #f0f0f0 solid;
	border-bottom:1px #f0f0f0 solid;
}
#top_wrap{
	width: 1000px;
	height:200px;
	display: flex;
	text-align: left;
	margin-bottom:10px;
	margin-top :10px;
}
#top_text{
	width: 80%;
	margin-left:20px;
	position:relative;
}
#content_tit{
	font-size: 25px;
	margin-bottom: 5px;
}
#text_wrap{
	max-width: 500px;
	height: 80%;
}
#top_writer{
	position:absolute;
	bottom:0;
}
#thumnail{
	width: 20%;
}
#thumnail img{
	width: 200px;
	height: 200px;
	object-fit:cover;
}
#writeBtn {
	position:relative;
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

#paging {
	margin:0 auto;
	font-size: 18px;
	letter-spacing: 2px;
	text-decoration: none;
	width: 600px;
	height: 30px; 
	text-align: center;
    text-decoration: none;  
}
a{
	color: black;
}

@media (max-width: 349px) {
footer{
 	display: none;
 	}
}

</style>
</head>
<body>	
<%@ include file="header.jsp" %>
	 <div id="img_wrap">
			<h1>펫 정보</h1>
		<img alt="귀여운 뭄뭄쓰" src="./resources/img/notice_head.jpg">
	</div>
		<div id="notice_box">
        	<table>
          		<c:forEach items="${p_no  }" var="p">
          		<div id="top_border">
            		<div id="top_wrap">
		          		<div id="thumnail"><img alt="img" src="./resources/upload/${p.board_file }"></div>
		          			<div id="top_text">
		          				<div id="text_wrap">
              						<div id="content_tit">${p.board_title }</div>
              						<div>
              							<a href="./petinfo_detail.do?bno=${p.board_no }">${p.board_content }</a>
              						</div>
              						<div id="top_writer">
              							${p.a_name }
              						</div>
              					</div>
              				</div>
            		</div>
            	</div>	
          		</c:forEach>	
        	</table>
		    </div>
         <%--   	<div id="paging">
           		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
           	</div> --%>
                    	<c:if test="${sessionScope.id ne null}">
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./petwrite.do'">글쓰기</button>
              			</c:if>
		</body> 
</html>
	