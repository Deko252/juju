<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
<%@ include file="head.jsp"%>
	<title>Home</title>
	<style type="text/css">
h2{
	text-align: center;
}
body {
  min-height: 100vh;
}

.input-form {
  max-width: 680px;

  margin-top: 60px;
  padding: 32px;

  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
.input-form > h2 {
	font-family: 'Jua', sans-serif;
    font-size: 50px;
	font-weight: 400;
}
.custom-control{
	text-align: center;
}
#resultMsg{
	width: 100%;
	margin-top: 0.25rem;
	font-size: 80%;
	color: #dc3545;
}
#resultMsg2{
	width: 100%;
	margin-top: 0.25rem;
	font-size: 80%;
	color: #dc3545;
}
#resultMsg3{
	width: 100%;
	margin-top: 0.25rem;
	font-size: 80%;
	color: #dc3545;
}
.btn-primary{
	background-color: #EB2524; 
	border-color: #EB2524;
}
.btn-primary:hover{
	background-color: #1F1D1E;
	border-color: #1F1D1E;
}
.was-validated .form-control:invalid, .form-control.is-invalid {
  border-color: #dc3545;
  padding-right: calc(1.5em + 0.75rem);
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 12' width='12' height='12' fill='none' stroke='%23dc3545'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23dc3545' stroke='none'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right calc(0.375em + 0.1875rem) center;
  background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
}
.was-validated .form-control:invalid:focus, .form-control.is-invalid:focus {
  border-color: #dc3545;
  box-shadow: 0 0 0 0.25rem rgba(220, 53, 69, 0.25);
}  
.was-validated .form-control:valid, .form-control.is-valid {
  border-color: #198754;
  padding-right: calc(1.5em + 0.75rem);
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3e%3cpath fill='%23198754' d='M2.3 6.73L.6 4.53c-.4-1.04.46-1.4 1.1-.8l1.1 1.4 3.4-3.8c.6-.63 1.6-.27 1.2.7l-4 4.6c-.43.5-.8.4-1.1.1z'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right calc(0.375em + 0.1875rem) center;
  background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
}

.mt-4{
	margin-top: 15px !important;
}

</style>
	
</head>
<body>
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
<!-- <input type="text" id="period_1"> -->


<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h2 class="mb-3">예약하기</h2>
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
            <input type="text" maxlength="11" oninput="numberMaxLength(this);" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="-빼고 입력해 주세요" required>
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
          <button class="btn btn-primary btn-lg btn-block" type="submit" id="btnS">예약하기</button>
          <button class="btn btn-primary btn-lg btn-block" type="reset" id="btnF">취소</button>
        </form>
      </div>
    </div>
  </div>


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
		$("#period_2").val(year+"-"+month+"-"+date);
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
</script>



<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/wow/wow.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/waypoints/waypoints.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./resources/js/main.js"></script>
</body>
<style>


.calendar {width: 400px; padding: 5px 20px 20px 20px; box-sizing: border-box; border: 1px solid;}
.calendar > .header {text-align: center;}
.calendar > .header > .title {width:50%; display: inline-block;}
.calendar > .header > .calendar_btn {
	width: 30px;
	height: 30px;
	border: none;
	padding: 0;
	background-color: #ffffff;
	vertical-align: middle;
	color: black;
	
}
.calendar > .day {width:100%; display: table; table-layout: fixed;}
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
</html>