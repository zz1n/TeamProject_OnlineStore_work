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
<h3 style="text-align:center;">좋아요</h3>
	<form action="#" method="post">
		<table style="width: 500px" align="center">
			<tr>
				<th></th> <th>제품사진</th> <th>제품이름</th> <th>가격</th> <th>좋아요에서 제거</th>
				
			</tr>
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td></td>
				<td><input type="checkbox" id="#" name="${list[i].pcode }"></td>
				<td>${list[i].pthumbnail }</td> <td>${list[i].pname }</td> <td>${list[i].price }</td>
				<td>장바구니제거버튼</td>
			</tr>
		</c:forEach>
		</table>
	</form>
</body>
</html>