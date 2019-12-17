<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.Member"%>
<%@include file="./../common/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Main</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">



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

<%@include file="/WEB-INF/common/header.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col">


			</div>
		</div>



		<div class="row">
			<div class="col-md-12">

				<ul class="nav nav-tabs nav-justified">
					<li role="presentation" class="active"><a href="#">Home</a></li>
					<li role="presentation"><a href="#">Seller</a></li>
					<li role="presentation"><a href="#">Member</a></li>
					<li role="presentation"><a href="#">QA</a></li>
					<li role="presentation"><a href="#">Comment</a></li>
				</ul>
			<div>
		</div>
					<div class="row">
						<div class="col-xs-6 col-md-6">
							<a href="listSel.ad" class="thumbnail">Seller Management<img
								src="..." alt="...">
							</a>
						</div>
						<div class="col-xs-6 col-md-6">
							<a href="listMem.ad" class="thumbnail">Member Management<img
								src="..." alt="...">
							</a>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-6 col-md-6">
							<a href="listQa.ad" class="thumbnail">QA Management <img
								src="..." alt="...">
							</a>
						</div>
						<div class="col-xs-6 col-md-6">
							<a href="#" class="thumbnail">Comment Management<img
								src="..." alt="...">
							</a>
						</div>
					</div>


				</div>
			</div>

		</div>


	</div>












</body>
</html>