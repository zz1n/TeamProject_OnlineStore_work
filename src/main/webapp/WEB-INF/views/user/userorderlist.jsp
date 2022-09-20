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
<!-- ocode 주문코드
ocount 구매수량
omethod 배송상태
odate 주문일자
oshipcode 구매상품
ocharge 주문금액
oaddress 후기넘버
*나중에 수정볼때 해결볼것* -->
</head>
<body>
<h3 style="text-align: center;">주문내역</h3>

	<table width="700px" align="center">
		<tr bgcolor="grey">
			<th>주문코드</th>
			<th>주문일자</th>
			<th>금액</th>
			<th>배송상태</th>
			<th>구매상품</th>
			<th>구매수량</th>
			<th>후기</th>
		</tr>
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td>${list[i].ocode }</td>
				<td>${list[i].odate }</td>
				<td><fmt:formatNumber value="${list[i].ocharge }" pattern="#,###,#00원"></fmt:formatNumber></td>
				<td>${list[i].omethod }</td>
				<td><a href="#">${list[i].oshipcode }</a></td>	<!-- 상품 상세페이지로 이어지는 링크 걸어야 -->
				<td>${list[i].ocount}개</td>
				<td><c:choose>
						<c:when test="${list[i].oaddress==0}">
							<a href="shop/user/userreviewwrite?ocode=${list[i].ocode }">리뷰 쓰러 가기</a>
						</c:when>
						<c:otherwise>
							<a href="shop/user/reviewout?bnum=${list[i].oaddress}">내가 쓴 리뷰 보기</a>
						</c:otherwise>
					</c:choose></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>