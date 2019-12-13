<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.Member"%>
<%@ page import="java.net.URLEncoder"%>
<%@ include file="./../common/common.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QA List</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>






<script type="text/javascript">
	
</script>
<style type="text/css">
.row {
	border: 1px solid black;
}

.col {
	border: 1px solid black;
}
/* .container {
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}

@media (min-width: 992px) {
  .container {
    width: 970px;
  }
}

@media (min-width: 1200px) {
  .container {
    width: 1170px;
  }
} */


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
		<!-- <div class="container-fluid"> -->

		<!-- <div class="row">
			<div class="col">


				<ul class="nav nav-pills">
					<li class="nav-item left-tab"><a class="nav-link active"
						data-toggle="tab" href="#">기본 정보</a></li>
					<li class="nav-item left-tab"><a class="nav-link"
						data-toggle="tab" href="#">세부정보 </a></li>
					<li class="nav-item right-tab">
						<button type="button" class="btn btn-rounded btn-outline-primary">
							취소<span class="btn-icon-right"><i
								class="fas fa-window-close"></i></span>
						</button>
					</li>
					<li class="nav-item right-tab"><button type="button"
							class="btn btn-rounded btn-outline-primary">
							수정 <span class="btn-icon-right"> <i class="fas fa-eidt"></i></span>
						</button></li>
						
				</ul>
			</div>
		</div> -->

		<div class="row">
			<div class="col page-header">
				<h1>
					QA관리 페이지<small>QA manager</small>
				</h1>
				<a href="<%=request.getContextPath()%>/main.ad">관리자 메인 페이지로 돌아가기</a>
				<p>기본적으로 QA등록일 기준으로 정렬됩니다</p>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<form action="listQa.ad" method="get">
					<select class="selectpicker show-tick" name="whatColumn">
						<option value="all"
							<c:if test="${whatColumn eq 'all' }">selected</c:if>>전체</option>
						<option value="q_checked"
							<c:if test="${whatColumn eq 'q_checked' }">selected</c:if>>미해결검색</option>
						<option value="q_num"
							<c:if test="${whatColumn eq 'q_num' }">selected</c:if>>사건번호검색</option>
						<%-- <option value="m_email"
				<c:if test="${whatColumn eq 'm_email' }">selected</c:if>>이메일검색</option> --%>
						<option value="q_title"
							<c:if test="${whatColumn eq 'q_title' }">selected</c:if>>분류검색</option>
						<option value="q_comment"
							<c:if test="${whatColumn eq 'q_comment' }">selected</c:if>>내용검색</option>

					</select> <input type="text" name="keyword" value=${keyword }> <input
						type="submit" value="검색">
				</form>

			</div>
		</div>
		<div class="row">
			<div class="col">

				<table class="table table-hover table-condensed">
					<tr>
						<th class="col-md-1">번호</th>
						<th class="col-md-2">이메일</th>
						<th class="col-md-1">분류</th>
						<th class="col-md-4">문의내용</th>
						<th class="col-md-2">등록일</th>
						<th class="col-md-1">상태</th>
						<th class="col-md-1">삭제</th>
					</tr>

					<c:forEach items="${qaList}" var="qa" varStatus="status">
						<tr>
							<td>${qa.q_num }</td>
							<td>${qa.m_email}</td>
							<td>${qa.q_title}</td>
							<td>${qa.q_comment }</td>
							<td><fmt:formatDate value="${qa.q_regdate}"
									pattern="yyyy-MM-dd" /></td>
							<%-- <td><a href="javascript:test('<%=enc%>')">${qa.checked }</a></td> --%>
							<td><a
								href="<%=request.getContextPath() %>/updateQa.ad?q_num=${qa.q_num}&pageNumber=${pageInfo.pageNumber}&whatColumn=${whatColumn }&keyword=${keyword}">
									<c:choose>
										<c:when test="${qa.q_checked eq 1}">

										</c:when>
										<c:otherwise>

										</c:otherwise>
									</c:choose>
							</a></td>
							<td>
								<button
									onclick="location.href='deleteQa.ad?q_num=${qa.q_num }&pageNumber=${pageInfo.pageNumber}&whatColumn=${whatColumn }&keyword=${keyword}'"
									type="button" class="close" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</td>
							<%-- <a href="deleteQa.ad?q_num=${qa.q_num }&pageNumber=${pageInfo.pageNumber}&whatColumn=${whatColumn }&keyword=${keyword}"></a> --%>
							<%-- <td><a href="<%=enc %>">${qa.checked }</a></td> --%>
						</tr>
					</c:forEach>
				</table>


			</div>
		</div>
		<div class="row">
			<div class="col">
			
					${pageInfo.pagingHtml}
					
			</div>
		</div>
	</div>


</body>
</html>
