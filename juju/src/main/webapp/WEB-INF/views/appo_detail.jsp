<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css"> 

.modal-content {
	text-align: center;
}
.cancel-button {
	border-radius: 5px !important;
	background-color: #C68B59 !important;
	border-color: #C68B59 !important;
}
.save-button {
	border-radius: 5px !important;
	background-color: #865439 !important;
	border-color: #865439 !important;
}

@media (min-width: 576px) {
	.modal-dialog {
	  max-width: 1500px;
	  margin: 1.75rem auto;
	}
}

</style>

</head>
	
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   	<div class="modal-dialog modal-dialog-centered">
   		<div class="modal-content">
     			<div class="modal-header">
       			<h2 class="modal-title" id="exampleModalLabel">진료시간예약</h2>
       			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     			</div>
     			<div class="modal-body">
       			...
     			</div>
     			<div class="modal-footer">
       			<button type="button" class="btn btn-secondary cancel-button" data-bs-dismiss="modal">취소</button>
       			<button type="button" class="btn btn-primary save-button">예약하기</button>
     			</div>
   		</div>
 		</div>
</div>	
