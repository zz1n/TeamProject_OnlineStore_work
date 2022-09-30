<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 style="text-align: center;">문의 상세</h3>
	<form action="#" method="post">
		<table style="width: 500px">
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td>글번호</td>	<td>${list[i].bnum }</td>
			</tr>
			<tr>
				<td>글제목</td>	<td>${list[i].bname }</td>
				<td>작성날짜</td>	<td>${list[i].bdate }</td>
			</tr>
			<tr>
				<td>글내용</td>
				<td>${list[i].bcont }</td>
			</tr>
			<tr>
				<td><a href="shop/user/usertosellerdel?bnum=${list[i].bnum }" onclick="javascript:alert('정말 삭제하시겠습니까?');">삭제</a></td>
			</tr>
		</c:forEach>
		</table>
	</form>
</body>
</html>