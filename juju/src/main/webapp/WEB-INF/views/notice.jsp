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
	height: 3300px;
}
#img_wrap{
	width: 100%;
	height: 450px;
	object-fit:cover;
}
#notice_tit{
	margin: auto;
	width:500px;
	margin-bottom:50px;
	border-bottom: 1px black solid;
}
#notice_tit h2{
	text-align: center;
	width:500px;
}
#notice_box{
	margin: 0 auto;
	width: 1000px;
	height: 2250px;
}
#top_border{
	border-bottom:1px #666666 solid;
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
		<img alt="귀여운 뭄뭄쓰" src="">
	</div>
	<div id="notice_tit">
	<h2>공지사항</h2>
	</div>
		<div id="notice_box">
        	<table>
          		<c:forEach items="${list  }" var="s">
          		<div id="top_border">
            		<div id="top_wrap">
		          		<div id="thumnail"><img alt="img" src="./resources/upload/${s.board_file }"></div>
		          			<div id="top_text">
		          				<div id="text_wrap">
              						<div id="content_tit">${s.board_title }</div>
              						<div>
              							<a href="./notice_detail.do?bno=${s.board_no }">${s.board_content }</a>
              						</div>
              						<div id="top_writer">
              							${s.a_name } / ${s.board_date }
              						</div>
              					</div>
              				</div>
            		</div>
            	</div>	
          		</c:forEach>	
        	</table>
		    </div>
		    <!-- 페이징 -->
           	<div id="paging">
           		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
           	</div>
                    	<!-- 글쓰기 -->
                    	<c:if test="${sessionScope.id ne null}">
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./write.do'">글쓰기</button>
              			</c:if>
             <%@ include file="footer.jsp" %>
              
		</body> 
		
	
</html>
	