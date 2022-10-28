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
.text-lg-end {
	margin-top: 40px;
	align-items: center;
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
@media (min-width: 992px) {
.appo-title {
    flex: 0 0 auto;
    width: 100%;
}
}
</style>

</head>
<div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4 mb-5 appo-title">
              <h6 class="text-body text-uppercase mb-2">Treat Appointment</h6>
              <h1 class="display-6 mb-0">
                진료 예약
              </h1>
            </div>
            
            <p class="mb-5">
            </p>
            <div class="row gy-5 gx-4">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3">
                  <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                  <h5 class="mb-0">24시간 온라인 예약</h5>
                </div>
                <span>온라인 예약을 이용하시면<br>전문 상담원이 빠른 예약을<br>도와드립니다</span>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3">
                  <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                  <h5 class="mb-0">주주 진료 시간</h5>
                </div>
                <span>본원의 진료시간은<br>평일 오전 9시 ~ 오후 6시,<br>토요일 오전 9시 ~ 오후 1시 입니다</span>
              </div>
              
            </div>
            
            <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
            <!-- <a class="btn btn-primary py-3 px-5" href="">More Services</a> -->
            <button type="button" class="btn btn-primary small" data-bs-toggle="modal" data-bs-target="#exampleModal">
  			예약하기
			</button>
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
         	</div>
           
            
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div
              class="position-relative overflow-hidden ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="./resources/img/doc02.jpg"
                alt=""
                style="object-fit: cover"
              />
              <div
                class="position-absolute top-0 start-0 bg-white pe-3 pb-3"
                style="width: 150px; height: 150px"
              >
                <div
                  class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3"
                >
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
