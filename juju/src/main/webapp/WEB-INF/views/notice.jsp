<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>공지사항</title>
<link rel="icon" type="image/png" sizes="32x32" href="./resources/img/favicon.png">
<%@ include file="head.jsp"%>



<style type="text/css">

.first-title {
	color: #8FC1D4 !important;
	text-shadow: 0px 0px 10px black;
	margin-top: 23px;
}
.treat-title {
	color: #ffffff;
	text-shadow: 0px 0px 10px black;
	}
.container2{
	height: 200px;
    width: 700px;
    padding-left: 0px;
    padding-right: 0px;
}
.back-wrap {
	overflow: hidden;
	max-height: 400px;
	width: 100%;
}
#img_wrap {
	width: 100%;
	height: 450px;
	position: relative;
	margin-bottom: 50px;
}

#img_wrap img {
	width: 100%;
	height: 450px;
}

#img_wrap h1 {
	color: #fff;
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

#notice_box {
	margin: 0 auto;
	width: 1000px;
	height: auto;
}

#top_border {
	border-top: 1px #f0f0f0 solid;
	border-bottom: 1px #f0f0f0 solid;
}

#top_wrap {
	width: 1000px;
	height: 200px;
	display: flex;
	text-align: left;
	margin-bottom: 15px;
	margin-top: 15px;
}

#top_text {
	width: 80%;
	margin-left: 20px;
	padding: 10px 25px 5px;
	position: relative;
}
#content_tit {
	color: #865439;
	font-weight: 500;
	font-size: 28px;
	margin-bottom: 5px;
}

#content_con>a {
	transition: 0.2s ease-in-out 0.2s;
}

#content_con>a:hover {
	color: #8FC1D4;
}

#text_wrap {
	width: 100%;
	height: 80%;
}

#top_writer {
	color: #aaa;
	display: flex;
	justify-content: flex-end;
	text-align: right;
}

#thumnail {
	width: 20%;
}

#thumnail img {
	width: 200px;
	height: 200px;
	object-fit: cover;
}

#writeBtn {
	position: relative;
	left: 90%;
	margin-top: 10px;
	width:70px;
}

.btn-primary {
	/* width: 80px; */
	height: 40px;
	border: none;
	background-color: #EB2524;
}

.btn-primary:hover {
	background-color: #1F1D1E;
}

#paging {
	margin: 0 auto;
	margin-top: 20px;
	font-size: 18px;
	letter-spacing: 4px;
	text-decoration: none;
	width: 600px;
	height: 30px;
	text-align: center;
	text-decoration: none;
}

a {
	color: black;
}

/* 모달 */
.noti-modal-body {
	padding-top: 10px !important;
}
.noti-modal-body > .modal-title {
	margin-bottom: 10px !important;
}

.noti-mdWrap{
}
.noti-mdBody {
	height: 700px;
	min-width: 1000px;
}
.modal-title {
}
.noti-modal-body > .row {
	height: 37px !important;
	padding-top: 5px;
}
.noti-name {
	text-align: right;
	padding-right: 20px;
}
#n_mname, #n_date {
	width: 80px !important;
	display: inline-block;
}
.modal-btn-sub {
	margin-right: 5px;
}
.modal-btn-sub {
	font-size: 18px;
	height: 50px !important;
	width: 130px !important;
	border-radius: 5px !important;
	background-color: #C68B59;
	border-color: #C68B59;
}
.modal-btn-can {
	font-size: 18px;
	height: 50px !important;
	width: 130px !important;
	border-radius: 5px !important;
	background-color: gray !important;
	border-color: gray !important;
}
.modal-btn-sub:hover, .modal-btn-can:hover {
	background-color: #8FC1D4 !important;
	border-color: #8FC1D4 !important;
}

/* 모달 끝 */
@media ( max-width : 349px) {
	footer {
		display: none;
	}
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
#n_hide{
	display: none;
}
#n_file{
	max-width: 650px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<script type="text/javascript">
		$(function() {
			$(".detail").click(
					function() {
						var no = $(this).parent(".board").children(".board_no")
								.text();
						$.ajax({
							url : "./detailAjax.do",
							data : {"no" : no},
							type : "get",
							dataType : "json"
						}).done(
								function(data) {
									var detail = data.detail;
									//alert(data.detail.board_content);
									$("#viewNoticeLabel").text(
											detail.board_title); //제목
									$("#n_mname").text(detail.a_name); //글쓴이
									$("#n_date").text(detail.board_date); //날짜
									$("#n_file").attr('src', "./resources/upload/"+ detail.board_file); //날짜
									$("#n_content").html(detail.board_content); //본문내용
									$("#delBtn").attr("var", detail.board_no);
									$("#updateBtn").attr("var",  detail.board_no);
									$("#detailModal").modal("show"); //모달 보이게 하기
								}).fail(function(errorThrown) {
							alert("문제가 발생했습니다." + errorThrown);
						});

					});
			$("#delBtn")
					.click(
							function() {
								//alert("삭제버튼을 눌렀습니다");
								if (confirm("게시글을 삭제하시겠습니까?")) {
									alert("삭제합니다");
									var no = $( '#delBtn' ).attr( 'var' );
									location.href = "./postDel.do?bno=" +no;
								}
							});
			$("#updateBtn")
					.click(
							function() {
								if (confirm("게시글을 수정하시겠습니까?")) {
									alert("수정합니다");
									var no = $( '#updateBtn' ).attr( 'var' );
									location.href = "./update.do?bno="+no;
								}
							});

		});

		function linkPage(pageNo) {
			location.href = "./notice.do?pageNo=" + pageNo;
		}
		
	
	</script>
	<!-- Page Header Start -->
	<div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
		<div id="header-carousel" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active back-wrap">
					<img class="w-100 w-101" src="./resources/img/notice-back.jpg"
						alt="Image" style="background: center center no-repeat;" />
					<div class="carousel-caption">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-12 col-lg-10">
									<div class="container-xxl py-5">
										<div class="container container2">
											<div class="row g-5 align-items-end mb-5">
												<div class="col-lg-6 wow fadeInUp treat_title title1"
													data-wow-delay="0.1s">
													<div class="border-start border-5 border-primary ps-4">
														<h6 class="text-body text-uppercase mb-2 first-title">notice</h6>
														<h1 class="display-6 mb-0 treat-title">공지사항</h1>
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
	<!-- Page Header End -->

	<div id="notice_box">
		<table>
			<c:forEach items="${list  }" var="s">
				<div id="top_border">
					<div id="top_wrap">
						<div id="thumnail">
							<img alt="img" src="./resources/upload/${s.board_file }">
						</div>
						<div id="top_text">
							<div id="text_wrap">
								<div id="content_tit">${s.board_title }</div>
								<div id="content_con" class="board">
									<div id="n_hide" class="board_no">${s.board_no }</div>
									<a class="detail">${s.board_content }</a>
								</div>
							</div>
							<div id="top_writer">${s.a_name } / ${s.board_date }</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</table>
	</div>

	<!-- 페이징 -->
	<div id="paging">
		<ui:pagination paginationInfo="${paginationInfo }" type="text"
			jsFunction="linkPage" />
	</div>
	<c:if test="${sessionScope.id ne null}">
		<button id="writeBtn" class="btn btn-primary"
			onclick="location.href='./write.do'">글쓰기</button>
	</c:if>

	<!-- detail Modal -->
	<div class="modal fade" id="detailModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body noti-modal-body">
					<h3 class="modal-title" id="viewNoticeLabel"></h3>
					<div class="row"
						style="border-bottom: 1px #dee2e6 solid; border-top: 1px #dee2e6 solid;">
						<div class="col noti-name">
	              <div id="n_mname">데이터가 없습니다.</div>
	              <div id="n_date">데이터가 없습니다.</div>
	           </div>
					</div>
					<div class="row"
						style="padding-top: 10px; min-height: 500px; overflow-y: auto;">
						<div>
							<img id="n_file" alt="이미지" src="">
						</div>
						<div class="col" id="n_content">
							<h1>문제가 발생했습니다. 다시 시도하세요.</h1>
						</div>



					</div>
				</div>

				<div class="modal-footer">
				<div class="col">
							<div id="dc_btn">
								<c:if test="${sessionScope.id ne null}">
									<button class="btn btn-primary modal-btn-sub" id="updateBtn">수정</button>
									<button class="btn btn-danger modal-btn-can" id="delBtn">삭제</button>
								</c:if>
							</div>
						</div>
					<!-- <button type="button" class="btn btn-secondary updateClose"
						data-bs-dismiss="modal">닫기</button> -->
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>

	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/lib/wow/wow.min.js"></script>
	<script src="./resources/lib/easing/easing.min.js"></script>
	<script src="./resources/lib/waypoints/waypoints.min.js"></script>
	<script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="./resources/js/main.js"></script>




</body>
</html>
