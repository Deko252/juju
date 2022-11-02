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
function linkPage(pageNo){location.href="./petinfo.do?pageNo="+pageNo;}
</script>

<style type="text/css">

body{
	height: 3000px;
}
.text-body {
	color: #ffffff !important;
}
.wow-1{
	width: 150px !important;	
}
.wow-1 > .service-item {
}
p{
	color: #8D9297;
}
.bg-primary {
    background-color: #8FC1D4 !important;
}
#text{
	font-size: 17px;
}
.container2{
	height: 200px;
    width: 700px;
    padding-left: 0px;
    padding-right: 0px;
}
.carousel-inner {
} 
.carousel-item {
	overflow: hidden;
	height: 400px;
	width: 100%;
}
.w-100{
}
.title-03 {
	padding-left: 0rem !important;
	padding-right: 0rem !important;
	display: flex !important;
	justify-content: center !important;
}
.small-title {
	color: #8D9297 !important;
	padding-left: 5px;
}
h3 > span {
	color: #8D9297 !important;
}
#detail-img02 {
	padding-top: 3rem !important;
}
.title1{
	margin-top: 0;
}
.mm-1{
	    margin-top: 33px;
	    font-size: 24px !important;
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


<div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
		<div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100 w-101" src="./resources/img/treat-back.jpg" alt="Image" />
					<div class="carousel-caption">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-12 col-lg-10">
									<div class="container-xxl py-5">
										<div class="container container2">
											<div class="row g-5 align-items-end mb-5">
												<div class="col-lg-6 wow fadeInUp treat_title title1" data-wow-delay="0.1s">
													<div class="border-start border-5 border-primary ps-4">
														<h6 class="text-body text-uppercase mb-2">
															Pet Information
														</h6>
														<h1 class="display-6 mb-0">펫 안내</h1>
													</div>
												</div>
											</div>
											<div class="row g-4 justify-content-center">
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
															<a href="./petinfo.do?cate=1">
														<div class="position-relative text-center h-100 p-4 treat-sel">
															<h5 class="mb-3 mm-1">강아지</h5>
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1" data-wow-delay="0.3s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<a href="./petinfo.do?cate=2">
														<div class="service-text position-relative text-center h-100 p-4">
															 <h5 class="mb-3 mm-1">고양이</h5>
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.5s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<a href="./petinfo.do?cate=3">
														<div class="service-text position-relative text-center h-100 p-4">
															 <h5 class="mb-3 mm-1">특수동물</h5>
														</div>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
              							<a href="./petinfo_detail.do?cate=${p.board_cate }&bno=${p.board_no }">${p.board_content }</a>
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
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./petwrite.do?cate=${param.cate}'">글쓰기</button>
              			</c:if>
		</body> 
</html>
	