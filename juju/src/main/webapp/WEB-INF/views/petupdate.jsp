<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"> 
    <head>
        <%@ include file="head.jsp" %>
        <!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/css/map_styles.css" rel="stylesheet" />
<link href="./resources/assets/css/board.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


	<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#sidebar-wrapper{
	position: fixed;
	top:0;
}
body {
	min-height: 100vh;
	background-color: #F4AE34;
	overflow: hidden;
}
.blind {
	position: absolute;
	overflow: hidden;
	margin: -1px;
	padding: 0;
	width: 1px;
	height: 1px;
	border: none;
	clip: rect(0, 0, 0, 0);
}
.container {
padding-top: 50px;
}
.input-form {
	width: 1200px;
	padding: 15px 32px 20px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
}
a.btn-secondary{
	margin-top:0px;
	margin-left: 5px;
	font-weight: 400;
	background-color: #fd7e14;
	border: 1px solid #fd7e14;
}
#right-btnn > .mb-3{
	margin-bottom: 0 !important;
}
#writeBtn { 
	position: relative;
	left: 85%;
	margin-top: 10px;
}
#findFile {
	margin-top: 10px;
}
.mt-4{
	margin-top: 1rem !important;
}
#right-btnn{
	float: right;
}
#sidebar-wrapper{
	font-size: 16px;
}
.note-font .note-btn-bold,
.note-fontname,
.note-color-all,
.note-table,
.note-insert button:first-child + button,
.note-insert button:first-child + button + button{
	display: none;
}
</style>
    </head>
      
    <body id="page-top">
                <!-- Page content-->
                <div class="container">
				<!-- SideBar -->				 
                    <!-- 본문내용은 여기에 -->
                    <div class="input-form col-md-12 mx-auto">
                    	<form action="./petupdate.do?cate=${pet_updetail.board_cate }&bno=${pet_updetail.board_no }" method="post">
							<input type="text" name="title" class="form-control mt-4 mb-2" placeholder="제목을 입력해주세요." required value="${pet_updetail.board_title }">
							<div class="form-group">
								<textarea class="form-control" rows="20" name="content" required>${pet_updetail.board_content }</textarea>
							</div>
							<input type="hidden" name="board_no" value="${pet_updetail.board_no }">
							<div id="right-btnn">
								<button type="submit" class="btn btn-secondary mb-3">수정하기</button>
								<a href="petinfo_detail.do?bno=${pet_updetail.board_no }" role="button" class="btn btn-secondary">취소</a>
							</div>
						</form>
                    </div>               
                </div>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=afab85b277584170c156a224f1486e30&libraries=services"></script>
        <!-- Footer -->
	<%@ include file="footer.jsp"%>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"><i
		class="fas fa-angle-up"></i></a>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/assets/js/scripts.js"></script>
    </body>
</html>