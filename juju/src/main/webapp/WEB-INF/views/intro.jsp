<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
   
<head>
<%@ include file="head.jsp"%>


<style type="text/css">
.intro{
height:200px;
text-align: center;
font-size: 60px;
background-color: rgb(44, 62, 80);
color:#ffffff;
}
div.title{
  width: 703px;
  margin-left: 600px;
}
.title{
background-size: 900px;
 padding-right:50px;
 text-align:center;
 font-size: 30px;
 margin:60px;

 background-color: green;
}
.title span{
  font-weight: bold;
 
}
div.pic{
width: 900px;
}
img.famliy{
 width:900px;
 margin-left: 500px;
}
p{
text-align: center;
}
div.title2{
  width: 703px;
  margin-left: 600px;
}
.title2{
background-size: 900px;
 padding-right:50px;
 text-align:center;
 font-size: 30px;
 margin:60px;
 background-color: green;
}
.title2 span{
  font-weight: bold;
}
img.famliy2{
 width:900px;
 margin-left: 500px;
}
</style>



</head>




<body>
<%@ include file="header.jsp"%>
	<div class="intro">병원 소개</div>
	<div class="title"> <span> 제목 </span></div>
	<p>
	우리 병원을 소개합니당.
	</p>
	<img class="famliy" alt="picc" src="./resources/img/int.png">
	<div class="title2"> <span> 제목 </span></div>
	<p>
	강아지 고양이 가족이용
	</p>
	<img class="famliy2" alt="picc" src="./resources/img/int2.jpg">
	
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