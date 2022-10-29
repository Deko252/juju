<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%> 
<%@ include file="head.jsp" %>   

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

function linkPage(pageNo){location.href="./notice.do?pageNo="+pageNo;}
</script>


<style type="text/css">

body{
	border: 1px red solid;
	height: 3300px;
}
#img_wrap{
	width: 100%;
	height: 450px;
	border: 1px blue solid;
}
h2{
	margin:100 0 30 0;
	text-align: center;
}

#notice_box{
	margin: 0 auto;
	width: 1000px;
	height: 2500px;
	border: 1px solid red;
}
#top_content{
	width: 100%;
	height:10%;
	display: flex;
	text-align: left;
	border: 1px green solid;
	margin-bottom: 5px;
}
#top_text{
	width: 80%;
	position:relative;
	border: 1px solid red;
	
}
#content_tit{
	font-size: 20px;
	margin-bottom: 5px;
}
#text_wrap{
	position:absolute;
	top:10;
	left:25;
	bottom:10;
	max-width: 500px;
	height: 80%;
}

#thumnail{
	width: 20%;
}
#thumnail img{
	max-width: 100%;
	max-height: 100%;
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

@media (max-width: 349px) {
footer{
 	display: none;
 	}
}

</style>
</head>
<%@ include file="header.jsp" %>
<body>	
	<div id="img_wrap">
		<img alt="귀여운 뭄뭄쓰" src="">
	</div>
	<div id="neck">
	<h2>공지사항</h2>
		<div id="notice_box">
        	<table>
          		<c:forEach items="${list  }" var="s">
            		<div id="top_content">
		          		<div id="thumnail"><img alt="img" src="./resources/upload/${s.board_file }"></div>
		          			<div id="top_text">
		          				<div id="text_wrap">
              						<div id="content_tit">${s.board_title }</div>
              						<div>
  
              							<a href="./notice_detail.do?bno=${s.board_no }">${s.board_content }</a>
              						</div>
              							<div>${s.a_name } / ${s.board_date }</div>
              							</div>
              				</div>
            		</div>
          		</c:forEach>	
        	</table>
		    </div>
		    </div>
		    <!-- 페이징 -->
           	<div id="paging" style="text-decoration:none;">
           		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
           	</div>
                    	<!-- 글쓰기 -->
                    	<c:if test="${sessionScope.id ne null}">
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./write.do'">글쓰기</button>
              			</c:if>
              			
             
		</body> 
</html>
	