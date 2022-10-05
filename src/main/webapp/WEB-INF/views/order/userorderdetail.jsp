<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세 내역</title>
</head>
<body>
<h3 style="text-align: center;">주문 상세 내역</h3>

	<table width="500px" align="center">
		<tr>
			<td rowspan="3">${tto.lto.pthumbnail }</td>
			<td>${tto.oto.ocode }</td>
			<td>${tto.oto.odate }</td>
		</tr>
		<tr>
			<td>${tto.lto.pname }</td>
			<td>${tto.oto.pcode }</td>
		</tr>
		<tr>
			<td>${tto.oto.ocount }</td>
			<td>${tto.oto.ocharge }</td>
		</tr>
		<tr>
			<td>주문상태 : ${tto.oto.ostate }</td>
		</tr>
		<c:choose>
			<c:when test="${tto.oto.oshipcode=1 }">
				<tr>
					<td>배송상태 : ${tto.oto.oshipcode }</td>
				</tr>
				<tr>
					<td><a href="#">배송정보수정</a></td>
					<td><a href="#">취소신청</a></td>
					<td><a href="#">교환신청</a></td>
				</tr>
			</c:when>
			
			<c:when test="${tto.oto.oshipcode=2 }">
				<tr>
					<td>배송상태 : ${tto.oto.oshipcode }</td>
				</tr>
				<tr>
					<td><a href="#">배송정보수정</a></td>
					<td><a href="#">취소신청</a></td>
					<td><a href="#">교환신청</a></td>
				</tr>
			</c:when>
			
			<c:when test="${tto.oto.oshipcode=3 }">
				<tr>
					<td>배송상태 : ${tto.oto.oshipcode }</td>
				</tr>
				<tr>
					<td><a href="#">배송정보수정</a></td>
					<td><a href="#">취소신청</a></td>
					<td><a href="#">교환신청</a></td>
				</tr>
			</c:when>
			
			<c:otherwise>
				<c:set var="grd" value="F"></c:set>
			</c:otherwise>
		</c:choose>
		<tr>
			<td>배송상태 : ${tto.oto.oshipcode }</td>
		</tr>
	</table>
</body>
</html>