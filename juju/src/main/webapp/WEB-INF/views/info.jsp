<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   

<head>

<style>

.display-1 {
	position: absolute;
	top: 1rem;
	-webkit-text-stroke: 2px #8FC1D4 !important;
}
.info-title-wrap {
	position: absolute;
	top: 3.5rem;
	left: 2.5rem;
}
.info-title-wrap h1 {
    font-size: 40px;
    color: transparent;
    -webkit-text-stroke: 2px var(--primary);
}
.info-title-wrap h4 {
	font-size: 35px;
}
.info-icon {
	width: 50px;
}
.info-content {
	padding-top: 70px;
}
.info-content .info-detail {
	height: 40px;
	padding-left: 20px;
	padding-top:7px;
	background-color: rgba(0, 0, 0, 0.25);
	margin-bottom: 50px;
	color: #C68B59 !important; 
	transition: all 0.15s ease-in-out;
	
}
.facts-overlay > .info-content .info-detail:hover {
	background-color: rgba(255, 255, 255, 0.3);
}
.facts-overlay > .info-content .info-detail:hover .info-font {
	font-weight: 500;
	color: #000000 !important;
}
.facts-overlay > .info-content .info-font{
	color: #ffffff !important;
}
.facts-overlay > .info-content .info-font:hover {
	color: #000000 !important;
}
.info-button {
	width: 50px !important;
	height: 50px !important;
	position: absolute !important;
	bottom: 1rem !important;
	right: 1rem !important;
	background-color: #8FC1D4 !important;
	font-size: 30px !important;
	padding-top: 0 !important;
	padding-left: 17px !important;
	transition: all 0.15s ease-in-out !important;
}
.facts-overlay {
	background: linear-gradient(rgba(0, 0, 0, .8), rgba(0, 0, 0, .1));
	padding: 40px;
}
.facts-overlay > .info-button:hover {
	background-color: rgba(255, 255, 255, 0.5);
	color: #000000 !important;	
}
.info-plus {
	width: 30px;
}
.contact-us {
}
.contact-phone {
	text-align: center;
	color: #8FC1D4;
	font-size: 60px;
	font-weight: bold;	
}
.contact-add {
	color: #ffffff;
	text-align: center;
}


</style>

</head>

<script type="text/javascript">
$(function(){
	$(".detail").click(function(){
		var no = $(this).parent(".board").children(".board_no").text();
		$.ajax({
			url: "./detailAjax.do",
			data: {"no" : no },
			type: "get",
			dataType: "json"
		}).done(function(data){
			var detail = data.detail;
			//alert(data.detail.board_content);
			$("#viewModalLabel").text(detail.board_title); //제목
			$("#n_mname").text(detail.b_no); //글쓴이
			$("#n_date").text(detail.board_date); //날짜
			$("#n_file").attr('src', "./resources/upload/" + detail.board_file); //날짜
			$("#n_content").text(detail.board_content); //본문내용
			
			$("#detailModal").modal("show"); //모달 보이게 하기
		}).fail(function(errorThrown){
			alert("문제가 발생했습니다." + errorThrown);
		});
		
	});
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



<div class="container-fluid my-5 p-0">
      <div class="row g-0">
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.1s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/info03.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">I</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-notice.png" alt="" />
	              <h4 class="text-white mb-3 info-title">공지사항</h4>
              </div>
              <div class="info-content">
              <c:forEach items="${in_no }" var="s">             	
              	  <%-- <div class="info-detail">
		              <a class="info-font" href="./notice_detail.do?bno=${n.board_no }">${n.board_title }</a><br>
              	  </div> --%>
              	  <div id="content_con" class="board">
              							<div class="board_no">${s.board_no }</div>
              	  <a href="" data-bs-toggle="modal" data-bs-target="#detailModal" class="detail">
              	  <div class="info-detail">
		              <div class="info-font">${s.board_title }</div>
              	  </div>    	
              	  </a>
              	  </div>              	  
              	  
			  </c:forEach>
              	  <%@ include file="notice_detail.jsp" %>
              </div>
              <a class="text-white small info-button" href="./notice.do">+</a>
            </div>
          </div>
        </div>

        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.3s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/info01.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">II</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-info.png" alt=""/>
	              <h4 class="text-white mb-3">펫정보</h4>
	          </div>                  
              <div class="info-content">
              	  
              	  <a href="./petinfo.do?cate=1">
              	  <div class="info-detail" >
		              <div class="info-font">강아지</div>
              	  </div>
              	  </a>
              	  
              	  <a href="./petinfo.do?cate=2">
              	  <div class="info-detail" >
		              <div class="info-font">고양이</div>
              	  </div>
              	  </a>
              	  
              	  <a href="./petinfo.do?cate=3">
              	  <div class="info-detail" >
		              <div class="info-font">특수동물</div>
              	  </div>
              	  </a>
              	 
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.5s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/info02.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">III</h1> -->
			  <div class="info-title-wrap">              
	              <img class="info-icon" src="./resources/img/info-hotel.png" alt="" />
	              <h4 class="text-white mb-3">펫호텔</h4>
	          </div>    
              <div class="info-content">
              	  <a href="https://www.facebook.com/petgroundhbc">    
                   <div class="info-detail">
                    <div class="info-font">펫그라운드_해방촌</div><br>
                   </div>
                   </a>
              	  <a href="https://www.barkleycleveland.com/">    
                   <div class="info-detail">
                    <div class="info-font" ">멍클리 펫 호텔</div><br>
                   </div>
                  </a>
              	  <a href="https://thepethotel.fr/">    
                   <div class="info-detail">
                    <div class="info-font" ">더 펫 호텔</div><br>
                   </div>
                  </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.7s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/info04.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">IV</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-contact.png" alt="" />
	              <h4 class="text-white mb-3">CONTACT US</h4>
	          </div>    
              <p class="text-white contact-us">
                <div class="contact-phone">02.123.4567</div>
	              <div class="contact-add">주주동물병원 365일 24시간 연중무휴<br>남극 사우스셰틀랜드 제도의 킹 조지 섬 바톤 반도 62.223 S, 58.787 W</div>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- detail Modal -->
	<div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	      
	   
	        <h5 class="modal-title" id="viewModalLabel"></h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div class="row" style="height: 30px; padding-bottom:40px; border-bottom: 1px #dee2e6 solid;">
	           <div class="col">
	              <div id="n_mname">데이터가 없습니다.</div>
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
	              <div id="n_date">데이터가 없습니다.</div>
	           </div>
	        </div>
	        <div class="row" style="padding-top:10px; min-height: 500px; overflow-y: auto;">
	        <div><img id="n_file" alt="이미지" src=""> </div>
	           <div class="col" id="n_content"><h1>문제가 발생했습니다. 다시 시도하세요.</h1></div>
	           
	           
	           
	        </div>
	      </div>
	      
	      <div class="modal-footer">        
	        <button type="button" class="btn btn-secondary updateClose" data-bs-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>              			
             
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
    