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
<h3 style="text-align:center;"><i class="fa-solid fa-cart-shopping"></i></h3>
	<form action="checkdel" method="post">
		<table style="width: 800px" align="center">
			<tr>
				<th></th> <th>제품사진</th> <th>제품이름</th> <th>가격</th>
				<th>수량</th> <th>총합</th> <th>장바구니에서 제거</th>
				
			</tr>
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td><input type="checkbox" name="check[]" value="${list[i].pcode }"></td>
				<td>${list[i].pthumbnail }</td> <td>${list[i].pname }</td> <td>${list[i].price }</td>
				<td>${list[i].cost }</td> <td>${list[i].price*list[i].cost }</td>
				<td>장바구니제거버튼</td>
			</tr>
		</c:forEach>
			<tr>
				<td><input type="submit" value="삭제"> </td>
			</tr>
		</table>
	</form>
	
</body>
</html>