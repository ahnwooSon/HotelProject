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

<script type="text/javascript">
	
</script>



<style type="text/css">
body {
	
}

.container {
	padding-right: 5px;
	padding-left: 5px;
	margin-right: auto;
	margin-left: auto;
}

.row {
	border: 1px solid black;
}
</style>





</head>
<body>

	<%
		if (session.getAttribute("loginfo") == null) {
			response.sendRedirect("main.jsp");
		} else {
			Member loginfo = (Member) session.getAttribute("loginfo");
			if (!loginfo.getM_email().equals("admin@admin.com")) {
				response.sendRedirect("main.jsp");
			}
		}
	%>


	<div class="container">

		<div class="row">
			<div class="col">

				<header>
					<a href="main.jsp" class="main">호텔로고자리</a> <a href="logout.mem"
						style="float: right; margin: 20px;">로그아웃</a> <span
						style="float: right; margin: 20px;">"${sessionScope.loginfo }"</span>
					<a href="info.mem" style="float: right; margin: 20px;">내 정보</a>

				</header>

			</div>
		</div>




		<div class="row">
			<div class="col">
				<div class="row">
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="..." alt="...">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="..." alt="...">
						</a>
					</div>
					<div class="col-xs-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="..." alt="...">
						</a>
					</div>
					...
				</div>



			</div>
		</div>


		<div class="row">
			<div class="col-md-4">
				<a href="listSel.ad">Seller관리</a>
			</div>
			<div class="col-md-4">
				<a href="listQa.ad">QA관리</a>
			</div>
			<div class="col-md-4">
				<a href="listMem.ad">Member관리</a>
			</div>
		</div>




	</div>




</body>
</html>