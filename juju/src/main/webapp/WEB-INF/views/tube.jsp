<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>

<script type="text/javascript">
$(function(){
	$("#tube1").click(function(){	
		window.open("https://youtu.be/5NjxaNjbftc", "child","width=900, height=600");			
	});
	$("#tube2").click(function(){	
		window.open("https://youtu.be/kGCc858zWRY", "child","width=900, height=600");			
	});
	$("#tube3").click(function(){	
		window.open("https://youtu.be/DXeroPf0MFs", "child","width=900, height=600");			
	});
});

</script>
<style type="text/css">

.tube-body {
	margin-top: 100px;
	margin-bottom: 100px;
}
.tube-location {
	margin-left: 70px;
}
.tubesize {
    padding-left: 0px !important;
}
.tubesize:after {
    content: "";
    display: block;
    width: 275px;
    border-bottom: 1px solid #865439;
    border-width: 5px;
    margin: 10px 0;
}

.icon_1{
	visibility: visible;
    animation-delay: 0.1s;
    padding-left: 32px !important;
    width: 164px;
    margin-top: 0px;
}

@media (max-width: 1400px) {
	iframe {
		width: 500px !important;
	}
	.tube-icon {
		width: 450px !important;
	}
	.d-flex {
		padding:0 !important;
		width: 90px;
		margin-right: 2rem;
	}
	.btn-primary3 {
		width: 100%;
	}
}
@media (max-width: 990px) {
	.tube-container{
		max-width: 540px !important;
	}
	.col-lg-6 {
		text-align: center !important;
	}
	.tubesize:after {
		margin: 10px auto !important;
	}
	.tube-location {
		margin: 0 auto;
	}
	.tube-icon {
		justify-content: space-between;
		margin: 0 auto;
	}
	.icon_1 {
		margin-right: 0 !important;
	}
}
@media (max-width: 768px) {
	.tube-container{
		
	}
}
@media (max-width: 576px) {
	iframe {
		width: 450px !important;
	}
}

</style>


<div class="container-xxl py-5 tube-body">
      <div class="container tube-container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp tube-wid" data-wow-delay="0.1s">
                <div id="mv_wrap"><iframe title="YouTube video player" src="https://www.youtube.com/embed/a9yWOm2uOio" width="600" height="360" allowfullscreen allow="autoplay; fullscreen"></iframe></div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="h-100 tube-location">
              <div class="border-start border-5 border-primary ps-4 mb-5 tubesize">
                <h6 class="text-body text-uppercase mb-2">About Us</h6>
                <h1 class="display-6 mb-0">
                  수의사들의 하루
                </h1>
              </div>
              <p class="mb-4">
              반려동물들을 책임지는 수의사들의 하루에 대해 알아보는 시간~! 
              </p>
              <p>
             	구독 좋아요 필수
              </p>
              <div class="border-top mt-4 pt-4">
                <div class="row g-4 tube-icon">
                  <div class="col-sm-4 d-flex wow fadeIn icon_1" data-wow-delay="0.1s">
                    <i
                      href="https://youtu.be/OY1jmWMruzs"
                    ></i>
                     <a class="btn btn-primary3" id="tube1"><img src="./resources/img/youtube.png" alt="" /><br>유콘의 <br>수호자</a>            
                  </div>
                  <div class="col-sm-4 d-flex wow fadeIn icon_1" data-wow-delay="0.3s">
                    <i
                       href="https://youtu.be/OY1jmWMruzs"
                    ></i>
                    <a class="btn btn-primary3" id="tube2"><img src="./resources/img/youtube.png" alt="" />동물병원 <br>응급실</a>                
                  </div>
                  <div class="col-sm-4 d-flex wow fadeIn icon_1" data-wow-delay="0.5s">
                    <i
                      href="https://youtu.be/OY1jmWMruzs"
                    ></i>
                    <a class="btn btn-primary3" id="tube3"><img src="./resources/img/youtube.png" alt="" />쪼꼬미 <br>동물병원</a>                   
                  </div>
   		<a name="info-05"></a>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>