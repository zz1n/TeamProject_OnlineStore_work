<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 문의 내역</title>
</head>
<body>
<h3 style="text-align: center;">사이트 문의 내역</h3>

	<table width="700px" align="center">
		<tr bgcolor="grey">
			<th>글번호</th>
			<th>작성날짜</th>
			<th>글제목</th>
			<th>상세내용</th>
		</tr>
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td>${list[i].bto.bnum }</td>
				<td>${list[i].bto.bdate }</td>
				<td>${list[i].bto.bname }</td>	<!-- 문의글 상세로 이어지는 링크 걸어야 -->
				<td><a href="usertositeout?bnum=${list[i].bto.bnum }">작성한 문의 보러 가기</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>