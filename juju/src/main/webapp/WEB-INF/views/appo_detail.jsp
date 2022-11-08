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
	width: 120px;
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
.form-control::placeholder {
	font-size: 14px;
}
.appo-modal-body {
	padding-bottom: 2rem !important;
}
.modal-btn-sub {
	margin-right: 5px;
}
.modal-btn-sub, .modal-btn-can {
	width: 130px;
	border-radius: 5px !important;
	background-color: #C68B59;
	border-color: #C68B59;
}
.modal-btn-sub:hover, .modal-btn-can:hover {
	background-color: #8FC1D4;
	border-color: #8FC1D4;
}
.modal-inner {
	display: flex;
	justify-content: space-between;
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

<body>

<!-- <div class="container-xxl py-5 appo-body">
      <div class="container">
        <div class="row g-5"> -->
          
          <!-- detail Modal -->
		<div class="modal fade" id="appoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-xl modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="viewModalLabel"></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body appo-modal-body">
		        
		        <h2 class="mb-3">진료예약하기</h2>
		        
		        <div class="modal-inner">
		        <!-- 달력 -->
				<div class="calendar">
				   <div class="header">
				      <button class="calendar_btn" onclick="prevCal();">&lt;</button>
				      <div class="title"><span class="year"></span><span class="month"></span></div>
				      <button class="calendar_btn" onclick="nextCal();">&gt;</button>
				   </div>
				   <div class="day">
				      <div>S</div>
				      <div>M</div>
				      <div>T</div>
				      <div>W</div>
				      <div>T</div>
				      <div>F</div>
				      <div>S</div>
				   </div>
				   <div class="dates"></div>
				</div>
				
				<!-- 예약 폼 -->
				<div class="container">
				    <div class="input-form-backgroud row">
				      <div class="input-form col-md-12 mx-auto">
				        <h2 class="mb-3"></h2>
				        <form class="validation-form" action="./appo_detail.do" method="post" onsubmit="submit();" >
				          <div class="row">
				            <div class="col-md-6 mb-3">
				              <label for="name">성함</label>
				              <input type="text" class="form-control" id="name" name="name" placeholder="성함을 입력해 주세요." required>
				              <div class="invalid-feedback">
				                성함을 입력해 주세요.
				              </div>
				                 <p id="resultMsg"></p>
				            </div>
				            <div class="col-md-6 mb-3">
				              <label for="p_name">반려동물 이름</label>
				              <input type="text" class="form-control" id="p_name" name="p_name" placeholder="반려동물 이름을 입력해 주세요." required>
				              <div class="invalid-feedback">
				                이름을 입력해주세요.
				              </div>
				            </div> 
				          </div>
				
				          <div class="mb-3">
				            <label>반려동물 종</label>
				            <input type="text" class="form-control" id="p_type" name="p_type" placeholder="반려동물 종을 입력해 주세요." required>
				            <div class="invalid-feedback">
				              반려동물 종을 입력해 주세요.
				            </div>
				            <p id="resultMsg3"></p>
				          </div>
				          <div class="mb-3">
				            <label >날짜 확인</label>
				            <input type="text" id="period_1" class="form-control" name="period_1" placeholder="날짜를 골라주세요." readonly="readonly" >
				            <div class="invalid-feedback">
				              날짜를 골라주세요.
				            </div>
				               <p id="resultMsg2"></p>
				          </div>
				
				          <div class="mb-3">
				            <label for="phoneNumber">전화번호<span class="text-muted">&nbsp;</span></label>
				            <input type="number" maxlength="11" oninput="numberMaxLength(this);" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="-빼고 입력해 주세요" required>
				          </div>
				          
				          <div class="mb-3">
				            <label for="email">증상<span class="text-muted">&nbsp;</span></label>
				            <input type="text" class="form-control" id="comment" name="comment" placeholder="증상을 입력해 주세요.">
				          </div>
				      
				          <hr class="mb-4">
				          <div class="custom-control custom-checkbox">
				            <input type="checkbox" class="custom-control-input" id="aggrement" required>
				            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
				          </div>
				          <div class="mb-4"></div>
				          <button class="btn btn-primary btn-lg btn-block modal-btn-sub" type="submit" id="btnS">예약하기</button>
				          <button class="btn btn-primary btn-lg btn-block modal-btn-can" type="reset" id="btnF">취소</button>
				        </form>
				      </div>
				    </div>
				  </div>
		        </div>
        
		      </div>
		    </div>
		  </div>
		</div>
          
            
          <!-- </div>
        </div>
      </div> -->
<script type="text/javascript">
var CDate = new Date(); 
var today = new Date();
var selectCk = 0;
var check = 1;


var buildcalendar = function(){
   var htmlDates = ''; 
   var prevLast = new Date(CDate.getFullYear(), CDate.getMonth(), 0); //지난 달의 마지막 날 
   var thisFirst = new Date(CDate.getFullYear(), CDate.getMonth(), 1); //이번 달의 첫쨰 날
   var thisLast = new Date(CDate.getFullYear(), CDate.getMonth() + 1, 0); //이번 달의 마지막 날
   document.querySelector(".year").innerHTML = CDate.getFullYear() + "년";  // year에 년도 출력
   document.querySelector(".month").innerHTML = (CDate.getMonth() + 1) + "월";  //month에 월 출력
   const dates = []; 
   if(thisFirst.getDay()!=0){ 
      for(var i = 0; i < thisFirst.getDay(); i++){
         dates.unshift(prevLast.getDate()-i); // 지난 달 날짜 채우기
      } 
   } 
   for(var i = 1; i <= thisLast.getDate(); i++){
          dates.push(i); // 이번 달 날짜 채우기 
   } 
   for(var i = 1; i <= 13 - thisLast.getDay(); i++){ 
          dates.push(i); // 다음 달 날짜 채우기 (나머지 다 채운 다음 출력할 때 42개만 출력함)
   } 
   
   for(var i = 0; i < 42; i++){
      if(i < thisFirst.getDay()){
         htmlDates += '<div class="date last">'+dates[i]+'</div>'; 
      }else if(today.getDate()==dates[i] && today.getMonth()==CDate.getMonth() && today.getFullYear()==CDate.getFullYear()){
          htmlDates += '<div id="date_'+dates[i]+'" class="date today" onclick="fn_selectDate('+dates[i]+');">'+dates[i]+'</div>'; 
      }else if(i >= thisFirst.getDay() + thisLast.getDate()){
          htmlDates += '<div class="date next">'+dates[i]+'</div>'; 
      }else{
         htmlDates += '<div id="date_'+dates[i]+'" class="date" onclick="fn_selectDate('+dates[i]+');">'+dates[i]+'</div>'; 
      }
    } 
document.querySelector(".dates").innerHTML = htmlDates; 
} 

function prevCal(){
    CDate.setMonth(CDate.getMonth()-1); 
    buildcalendar(); 
} 
function nextCal(){
    CDate.setMonth(CDate.getMonth()+1);
    buildcalendar(); 
}

function fn_selectDate(date){
   
   var year = CDate.getFullYear();
   var month = CDate.getMonth() + 1;
   var date_txt = "";
   if(CDate.getMonth + 1 < 10){
      month = "0" + (CDate.getMonth() + 1);
   }
   if(date < 10){
      date_txt = "0" + date;
   }
   
   if(selectCk == 0){
      $(".date").css("background-color", "");
      $(".date").css("color", "");
      $("#date_"+date).css("background-color", "red");
      $("#date_"+date).css("color", "white");
      
      $("#period_1").val(year+"-"+month+"-"+date);
      check = 0;
      selectCk = 0;
         
      if(check == 0){
         const target = document.getElementById('btnS');
         target.disabled = false;
      }
   
   }
   
}

buildcalendar();

const target = document.getElementById('btnS');
target.disabled = true;


function numberMaxLength(e){

    if(e.value.length > e.maxLength){
        e.value = e.value.slice(0, e.maxLength);
    }

}

/* window.onkeydown = function() {
   var kcode = event.keyCode;
   if(kcode == 116) {
   history.replaceState({}, null, location.pathname);
   }
   } */

var appo_result = 3;
<c:if test="${param.result eq 0}">appo_result = 0;</c:if>
if(appo_result == 0){
	$("#appo_top").get(0).click();
	$("#appo_btn").trigger("click");
   alert("예약이 불가능합니다. 다른날을 선택해 주세요.");
}


</script>

</body>

<style>


.calendar {
	font-size: 20px;
	width: 1000px; 
	padding: 20px 20px 20px 20px; 
	box-sizing: border-box; 
	border: 1px solid;
	margin: 25px 0;
	margin-left: 20px;
	margin-right: 10px;
}
.calendar > .header {text-align: center;}
.calendar > .header > .title {font-size: 25px; width:50%; display: inline-block;}
.calendar > .header > .calendar_btn {
	font-size: 20px;
   width: 30px;
   height: 30px;
   border: none;
   padding: 0;
   background-color: #ffffff;
   vertical-align: middle;
   color: black;
   
}
.calendar > .day {width:100%; display: table; table-layout: fixed; margin-top: 10px; font-size: 22px;}
.calendar > .day > div {display: table-cell; text-align: center; height: 50px; vertical-align: middle;}
.calendar > .day > div:first-child {color: red;}
.calendar > .day > div:last-of-type {color: blue;}
.calendar > .dates {display: flex; flex-wrap: wrap; width: 100%;}
.calendar > .dates > .date {text-align: center; width: calc(100%/7); height: 50px; box-sizing: border-box;line-height: 3; border-radius: 3px;} 
.calendar > .dates > .date:nth-child(7n){color: blue;}
.calendar > .dates > .date:nth-child(7n+1){color: red;}
.calendar > .dates > .last {color: #c8c8c8 !important;}
.calendar > .dates > .next {color: #c8c8c8 !important;}
</style>