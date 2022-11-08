<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%> 

<!DOCTYPE html>
<html lang="ko">
<head> 
<%@ include file="head.jsp" %> 

<style type="text/css">

body{
	height: 100%;
}
.ps-4 > .text-body {
	color: #8FC1D4 !important;
	text-shadow: 0px 0px 10px black;
}
.wow-1{
	width: 150px !important;
	height: 120px !important;
}
a > .p-4 {
	padding: 1rem !important;
}
.p-4 > h5 {
	margin-top: 30px !important;
}
.wow-1 > .service-item {
}
p{
	color: #8D9297;
}
.bg-primary {
    background-color: #8FC1D4 !important;
}
.container2{
	height: 200px;
    width: 700px;
    padding-left: 0px;
    padding-right: 0px;
    border: 1px rgba(0, 0, 0, 0) solid;
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
.treat-title {
	color: #ffffff;
	text-shadow: 0px 0px 10px black;
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
	border: 1px solid red;
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
	height: auto;
}
.pet-dog {
	background-color: #8FC1D4 !important;
}
.pet-dog > h5 {
	color: #ffffff !important;
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
   width:70px;
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
	margin-top: 20px;
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

.btn-primary {
	background-color: #C68B59;
	border-color: #C68B59;
	border-radius: 5px !important;
	width: 50px;
	height: 50px;
}
.back-to-top {
	border-radius: 5px !important;
	background-color: #C68B59 !important;
	border-color: #C68B59 !important;
}
.back-to-top:hover {
	background-color: #865439 !important;
	border-color: #865439 !important;
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
<script type="text/javascript">
$(function(){
	$(".detail").click(function(){
		var no = $(this).parent(".board").children(".board_no").text();
		$.ajax({
			url: "./petdetailAjax.do",
			data: {"no" : no },
			type: "get",
			dataType: "json"
		}).done(function(data){
			var detail = data.detail;
			//alert(data.detail.board_content);
			$("#viewPetLabel").text(detail.board_title); //제목
			$("#p_mname").text(detail.a_name); //글쓴이
			$("#p_date").text(detail.board_date); //날짜
			$("#p_file").attr('src', "./resources/upload/" + detail.board_file); //날짜
			$("#p_content").text(detail.board_content); //본문내용
			$("#delBtn").attr("var", detail.board_no);
			$("#updateBtn").attr("var",  detail.board_no);
			$("#detailModal").modal("show"); //모달 보이게 하기
		}).fail(function(errorThrown){
			alert("문제가 발생했습니다." + errorThrown);
		});
		
	});
	
	$("#delBtn").click(function() {
		//alert("삭제버튼을 눌렀습니다");
		if (confirm("게시글을 삭제하시겠습니까?")) {
			alert("삭제합니다");
			var no = $( '#delBtn' ).attr( 'var' );
			location.href = "./postDel.do?bno=" +no;
			//파라미터는 링크 창의 값을 그대로 긁어오는 것을 말한다. 
		}
	});
	$("#updateBtn").click(function() {
		if (confirm("게시글을 수정하시겠습니까?")) {
			alert("수정합니다");
			var no = $( '#updateBtn' ).attr( 'var' );
			location.href = "./petupdate.do?bno="+no;
		}
	});
	
});

function linkPage(pageNo){location.href="./petinfo.do?pageNo="+pageNo;}
</script>
<div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
		<div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
				
				<c:choose>
				<c:when test="${param.cate == 1 }">
					<img class="w-100 w-101" src="./resources/img/cate_1.jpg" alt="Image" />
				</c:when>
				<c:when test="${param.cate == 2 }">
					<img class="w-100 w-101" src="./resources/img/cate_2.jpg" alt="Image" />
				</c:when>
				<c:when test="${param.cate == 3 }">
					<img class="w-100 w-101" src="./resources/img/cate_3.jpg" alt="Image" />
				</c:when>
				<%-- <c:otherwise>
					<img class="w-100 w-101" src="./resources/img/cate_3.jpg" alt="Image" />
				</c:otherwise> --%>
				</c:choose>
				
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
														<h1 class="display-6 mb-0 treat-title">펫 안내</h1>
													</div>
												</div>
											</div>
											<div class="row g-4 justify-content-center">
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.1s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<a href="./petinfo.do?cate=1">
														
														<c:choose>
															<c:when test="${param.cate == 1 }">
																<div class="position-relative text-center h-100 p-4 pet-dog">
																	<h5 class="mb-3 mm-1">강아지</h5>
																</div>	
															</c:when>
															<c:otherwise>
																<div class="service-text position-relative text-center h-100 p-4">
																	<h5 class="mb-3 mm-1">강아지</h5>
																</div>
															</c:otherwise>
														</c:choose>
														
														</a>
													</div>
												</div>	
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1" data-wow-delay="0.3s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<a href="./petinfo.do?cate=2">
														
														<c:choose>
															<c:when test="${param.cate == 2 }">
																<div class="position-relative text-center h-100 p-4 pet-dog">
																	<h5 class="mb-3 mm-1">고양이</h5>
																</div>	
															</c:when>
															<c:otherwise>
																<div class="service-text position-relative text-center h-100 p-4">
																	<h5 class="mb-3 mm-1">고양이</h5>
																</div>
															</c:otherwise>
														</c:choose>
														
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.5s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<a href="./petinfo.do?cate=3">
														
															<c:choose>
															<c:when test="${param.cate == 3 }">
																<div class="position-relative text-center h-100 p-4 pet-dog">
																	<h5 class="mb-3 mm-1">특수동물</h5>
																</div>	
															</c:when>
															<c:otherwise>
																<div class="service-text position-relative text-center h-100 p-4">
																	<h5 class="mb-3 mm-1">특수동물</h5>
																</div>
															</c:otherwise>
															</c:choose>
														
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
              						<div  id="content_con" class="board">
              							<div class="board_no">${p.board_no }</div>
              							<a class="detail" >${p.board_content }</a>
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
         	<div id="paging">
           		<ui:pagination paginationInfo="${paginationInfo }" type="text" jsFunction="linkPage"/>
           	</div> 
                    	<c:if test="${sessionScope.id ne null}">
              				<button id="writeBtn" class="btn btn-primary" onclick="location.href='./petwrite.do?cate=${param.cate}'">글쓰기</button>
              			</c:if>
              			
      <!-- detail Modal -->        			
      <div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="viewPetLabel">데이터가 없습니다.</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div class="row" style="height: 30px; padding-bottom:40px; border-bottom: 1px #dee2e6 solid;">
	           <div class="col">
	              <div id="p_mname">데이터가 없습니다.</div>
	           </div>
	           <div class="col">
	              <div id="dc_btn">
					<c:if test="${sessionScope.id ne null}">
						<button class="btn btn-primary" id="updateBtn">수정</button> 
						<button class="btn btn-danger" id="delBtn">삭제</button>
					</c:if>
			 </div>
	           </div>
	           <div class="col">
	              <div id="p_date">데이터가 없습니다.</div>
	           </div>
	        </div>
	        <div class="row" style="padding-top:10px; min-height: 500px; overflow-y: auto;">
	        <div><img id="p_file" alt="이미지" src=""> </div>
	           <div class="col" id="p_content"><h1>문제가 발생했습니다. 다시 시도하세요.</h1></div>
	        </div>
	      </div>
	      <div class="modal-footer">        
	        <button type="button" class="btn btn-secondary updateClose" data-bs-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
              			    <!-- Footer -->
    <%@ include file="footer.jsp"%>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/wow/wow.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/waypoints/waypoints.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>
              			
		</body> 
</html>
	