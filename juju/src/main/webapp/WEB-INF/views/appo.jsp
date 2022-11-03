<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>  
<html>
<head>

<meta charset="UTF-8"> 
<title>Insert title here</title>
<script type="text/javascript">
	var myModal = document.getElementById('myModal')
	var myInput = document.getElementById('myInput')
	
	myModal.addEventListener('shown.bs.modal', function () {
	  myInput.focus()
	})
</script>

<style>

.appo-body{
	margin-top: 150px;
}
.appo-title{
	text-align: center;
}
.appo-title:after {
	content: "";
    display: block;
    width: 200px;
    border-bottom: 1px solid #865439;
    border-width: 5px;
    margin: 20px auto;
}
.text-primary {
	color: #8FC1D4 !important;
}
.appo-box {
	padding: 1.5rem 0 1.5rem;
	
}
.appo-button {
	margin-top: 30px;
	text-align: center !important;
	height: auto;
}
.appo-button .small {
	height: 50px;
	padding-top: 0.3rem;
}
.appo-button .small:hover {
	background-color: #ffffff;
	color: #865439;
	border-color: #C68B59; 
}
.appo-detail {
	text-align: center;
}
.appo-check {
	display: flex !important;
	justify-content: center !important;
	padding-right: 50px !important;
	padding-left: 50px !important;
}
.wow > span {
	text-align: center;
}
.flex-column {
	background-color: #8FC1D4 !important;
}
.d-flex > h2 {
	margin-bottom: 0 !important;
}
.bg-primary {
	background-color: #8FC1D4;
}
.pb-3 {
	padding-bottom: 0.5rem !important;
}
.pe-3 {
	padding-right: 0.5rem !important;
}
.ps-5 {
	padding-left: 0 !important;
}
.pt-5 {
	padding-top: 0 !important;
}
.appo-icon {
	width: 3.5rem;
	height: 3.5rem;
	background-color: #CDCDCD;
    border: 10px solid #CDCDCD;
}
.carousel-img {
	height: 400px !important;
	overflow: hidden;
	padding-left: 1rem;
}
.appo-intro {
	margin-left: 1rem;
	padding-right: 0.8rem !important;
	padding-bottom: 0.8rem !important;
}
.carousel-control-prev-icon,
.carousel-control-next-icon {
	filter: drop-shadow(0px 0px 4px gray) !important;
}
@media (min-width: 992px) {
	.appo-title {
	    flex: 0 0 auto;
	    width: 100%;
	}
	.appo-box {
	    background-color: #F8F9FA;	
	}
	.appo-button{
		flex: 0 0 auto;
		width: 100%;
	}
	#carouselControls {
		flex: 0 0 auto !important;
		width: 50% !important;
	}
}
</style>

</head>

<div class="container-xxl py-5 appo-body">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp appo-box" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4 mb-5 appo-title">
              <h6 class="text-body text-uppercase mb-2">Treat Appointment</h6>
              <h1 class="display-6 mb-0">
                진료 예약
              </h1>
            </div>
            
            <p class="mb-5">
            </p>
            <div class="row gy-5 gx-4 appo-detail">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3 appo-check">
                  <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                  <h5 class="mb-0">24시간 온라인 예약</h5>
                </div>
                <span>온라인 예약을 이용하시면<br>전문 상담원이 빠른 예약을<br>도와드립니다</span>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3 appo-check">
                  <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                  <h5 class="mb-0">주주 진료 시간</h5>
                </div>
                <span>본원의 진료시간은<br>평일 오전 9시 ~ 오후 6시,<br>토요일 오전 9시 ~ 오후 1시 입니다</span>
              </div>
              
            </div>
            
            <div class="col-lg-6 text-lg-end wow fadeInUp appo-button" data-wow-delay="0.3s">
            <!-- <a class="btn btn-primary py-3 px-5" href="">More Services</a> -->
            <button type="button" class="btn btn-primary small" data-bs-toggle="modal" data-bs-target="#exampleModal">
  				예약하기
			</button>
			
			<%-- <%@ include file="appo_detail.jsp" %> --%>
			
         	</div>
           
          </div>
          
          <!-- <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="position-relative overflow-hidden ps-5 pt-5 h-100" style="min-height: 400px">
              	<div id="appo-carousel">
	              <img class="position-absolute w-100 h-100" src="./resources/img/doc02.jpg" alt="" style="object-fit: cover"/>
              	</div>

			        <button
			          class="carousel-control-prev"
			          type="button"
			          data-bs-target="#appo-carousel"
			          data-bs-slide="prev"
			        >
			          <span class="carousel-control-prev-icon appo-icon" aria-hidden="true"></span>
			          <span class="visually-hidden">Previous</span>
			        </button>
			        <button
			          class="carousel-control-next"
			          type="button"
			          data-bs-target="#appo-carousel"
			          data-bs-slide="next"
			        >
			          <span class="carousel-control-next-icon appo-icon" aria-hidden="true"></span>
			          <span class="visually-hidden">Next</span>
			        </button>
         	  </div>	 
              
			        
              <div class="position-absolute top-0 start-0 bg-white pe-3 pb-3" style="width: 150px; height: 150px;">
                <div class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3">
                  <h2 class="text-white">의료진 소개</h2>
                  <h2 class="text-white"></h2>
                  <h5 class="text-white mb-0"></h5>
                </div>
              </div>
              
            </div> -->
            
            <div id="carouselControls" class="col-lg-6 wow fadeInUp carousel slide fadeInUp carousel-img" data-wow-delay="0.1s" data-bs-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="./resources/img/doctor05.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="./resources/img/doctor06.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="./resources/img/doctor07.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselControls" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselControls" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			  
			  <div class="position-absolute top-0 start-0 bg-white pe-3 pb-3 appo-intro" style="width: 150px; height: 150px;">
                <div class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3">
                  <h2 class="text-white">의료진 소개</h2>
                  <h2 class="text-white"></h2>
                  <h5 class="text-white mb-0"></h5>
                </div>
              </div>
			  
			</div>
            
          </div>
        </div>
      </div>
    </div>