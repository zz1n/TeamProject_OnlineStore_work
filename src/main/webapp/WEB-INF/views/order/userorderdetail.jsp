<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세 내역</title>
</head>
<body>
<h3 style="text-align: center;">주문 상세 내역</h3>

	<table width="500px" align="center">
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">

			입력해야해~

		</c:forEach>
	</table>
</body>
</html>