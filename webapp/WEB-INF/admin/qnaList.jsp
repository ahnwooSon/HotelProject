<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.model.Member"%>
<%@ page import="java.net.URLEncoder"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>QA List</title>

<link rel="stylesheet" type="text/c	ss"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
</style>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript">
	
</script>
</head>


<body>

<p>Q&A리스트 페이지</p>
<p><a href="<%=request.getContextPath() %>/main.ad">관리자 메인 페이지로 돌아가기</a></p>
<p>기본적으로 Q&A등록일 기준으로 정렬</p>

	<%
		if (session.getAttribute("loginfo") == null) {
			response.sendRedirect("main.jsp");
		} else {
			Member loginfo = (Member) session.getAttribute("loginfo");
			if (!loginfo.getM_email().equals("admin@admin")) {
				response.sendRedirect("main.jsp");
			}
		}
	%>
	<%
		String enc = URLEncoder.encode(
				"/qnaUpdate.ad?num=${qna.num}&pageNumber=${pageInfo.pageNumber}&whatColumn=${whatColumn }&keyword=${keyword}",
				"utf-8");
	%>

	<form action="listQna.ad" method="get">
		<select name="whatColumn">
			<option value="all"
				<c:if test="${whatColumn eq 'all' }">selected</c:if>>전체</option>
			<option value="email"
				<c:if test="${whatColumn eq 'email' }">selected</c:if>>이메일검색</option>
			<option value="content"
				<c:if test="${whatColumn eq 'content' }">selected</c:if>>제목+내용검색</option>
			<option value="checked"
				<c:if test="${whatColumn eq 'checked' }">selected</c:if>>미해결검색</option>
		</select> 
		<input type="text" name="keyword" value=${keyword }> 
		<input type="submit" value="검색">
	</form>


	<table border="1">
		<tr>
			<td>번호</td>
			<td>이메일</td>
			<td>제목</td>
			<td>내용</td>
			<td>등록일</td>
			<td>상태</td>
		</tr>

		<c:forEach items="${qnaList}" var="qna" varStatus="status">
			<tr>
				<td>${qna.num }</td>
				<td>${qna.email }</td>
				<td>${qna.title }</td>
				<td>${qna.content }</td>
				<td>${qna.regDate }</td>
				<%-- <td><a href="javascript:test('<%=enc%>')">${qna.checked }</a></td> --%>
				<td><a href="<%=request.getContextPath() %>/updateQna.ad?num=${qna.num}&pageNumber=${pageInfo.pageNumber}&whatColumn=${whatColumn }&keyword=${keyword}">${qna.checked }</a></td>
				<%-- <td><a href="<%=enc %>">${qna.checked }</a></td> --%>
			</tr>
		</c:forEach>

	</table>
	${pageInfo.pagingHtml}

</body>
</html>
