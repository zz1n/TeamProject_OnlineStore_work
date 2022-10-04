<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 내역</title>
</head>
<body>
<h3 style="text-align: center;">주문 내역</h3>

	<table width="500px" align="center">
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">

			<tr>
				<td rowspan="3">${list[i].oaddress }</td> <td>${list[i].ocode }</td> <td align="right"><a href="orderdetail?ocode=${list[i].ocode }">상세 주문 내역</a></td>
			</tr>
			<tr>
				<td>${list[i].omemo }</td> <td>${list[i].ocount }개</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><fmt:formatNumber value="${list[i].ocharge }" pattern="#,###,#00원"></fmt:formatNumber></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>