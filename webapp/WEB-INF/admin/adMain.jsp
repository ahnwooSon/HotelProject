<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.Member"%>
<%@include file="./../common/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Main</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	/* 
	
	$(document).ready(function(){
		
		$('#home').click(function(){
			location.href="main.ad";
		});	
		
		
		$('#seller').click(function(){
			$.ajax({
				url : 'listSel.ad',
				type : 'GET',
				dataType : 'html',
				success : function(data){
					$('#ajaxdata').html(data);
				}
			});
			return false;		
		});	

		$('#member').click(function(){
			$.ajax({
				url : 'listMem.ad',
				type : 'GET',
				dataType : 'html',
				success : function(data){
					$('#ajaxdata').html(data);
				}
			}); 
			return false;		
		});	
		
		$('#qa').click(function(){
			$.ajax({
				url : 'listQa.ad',
				type : 'GET',
				dataType : 'html',
				success : function(data){
					$('#ajaxdata').html(data);
				}
			}); 
			return false;		
		});	
	}); 
	navbar ajax종료*/
</script>

<style>

/* body {
	background-color: #333;
}


.container {
	background-color: #FFF;
	border-radius: 10px;
} */

.material-icons qa {
	size : 100px;
}

.jumbotron-qa {
	margin-top: 10px;

}

iframe {
	/* border-width : 0; */ 
	width : 570px;
	height :300px; 
}
</style>
</head>



<body>


	<%@include file="/WEB-INF/common/header.jsp"%>

	<!-- <div class="jumbotron">
 	<h1>Hello, world!</h1>
  	<p>...</p>
  	<p><a class="btn btn-default btn-lg" href="#" role="button">시작하기</a></p>
	</div> -->

	<div class="jumbotron"
		style="height: 300px; background: url(resources/img/11.jpg) no-repeat center top; background-size: cover;">

	</div>

	<div class="container">
		<div class="row">
			<div class="col">

				<!-- <ul class="nav nav-tabs nav-justified">
					<li role="presentation" class="active"><a href="#">Home</a></li>
					<li role="presentation" class="active"><a href="#" id="home" >Home</a></li>
					<li role="presentation"><a href="#" id="seller">Seller</a></li>
					<li role="presentation"><a href="#" id="member">Member</a></li>
					<li role="presentation"><a href="#" id="qa">QA</a></li>
					<li role="presentation"><a href="#" >Comment</a></li>
				</ul> -->


				<ul class="nav nav-tabs nav-justified">
					<li role="presentation" class="active"><a href="main.ad"
						id="home">Home</a></li>
					<li role="presentation"><a href="listSel.ad" id="seller">Seller</a></li>
					<li role="presentation"><a href="listMem.ad" id="member">Member</a></li>
					<li role="presentation"><a href="listQa.ad" id="qa">QA</a></li>
					<li role="presentation"><a href="#">Comment</a></li>
				</ul>

			</div>
		</div>


		<div class="row">
			<div class="col-md-6">
				<div class="row">
				<div class="jumbotron-qa">
					<h1>Hello, world!</h1><i class="material-icons qa">question_answer</i>
					<p>...개의 새로운 질문들이 있습니다.</p>
					<p>
						<a class="btn btn-primary btn-lg" href="#" role="button">Read
							more</a>
					</p>
				</div>
				</div>
				
			</div>
			<div class="col-md-6">
				<a href="https://calendar.google.com/calendar/r/eventedit"><i class="material-icons qa">add</i>캘린더에
					일정 추가하기(새창)</a>
				<iframe
					src="https://calendar.google.com/calendar/embed?height=500&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=Asia%2FSeoul&amp;src=cnJud2xyQGdtYWlsLmNvbQ&amp;color=%2322AA99&amp;showTitle=0&amp;showTabs=1&amp;showCalendars=0&amp;showTz=0"
					frameborder="0"
					scrolling="no"></iframe>
			</div>
		</div>
		<!-- <div class="row">
			<div class="col-xs-6 col-md-6">
				<a href="listSel.ad" class="thumbnail">Seller Management<img
					src="..." alt="..."></a>
			</div>
			<div class="col-xs-6 col-md-6">
				<a href="listMem.ad" class="thumbnail">Member Management<img
					src="..." alt="..."></a>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-6 col-md-6">
				<a href="listQa.ad" class="thumbnail">QA Management <img
					src="..." alt="..."></a>
			</div>
			<div class="col-xs-6 col-md-6">
				<a href="#" class="thumbnail">Comment Management<img
					src="..." alt="..."></a>
			</div>
		</div> -->


	</div>












</body>
</html>