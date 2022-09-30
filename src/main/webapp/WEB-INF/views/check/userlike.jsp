<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#cbx_chkAll").click(function() {
				if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#cbx_chkAll").prop("checked", false);
				else $("#cbx_chkAll").prop("checked", true); 
			});
		});
	</script>
</head>
<body>
<h3 style="text-align:center;">좋아요</h3>
	<form action="checkdel" method="post">
		<table style="width: 500px" align="center">
			<tr>
				<th><input type="checkbox" id="cbx_chkAll" value="전체 선택"></th>
				<th>제품사진</th> <th>제품이름</th> <th>가격</th>
				
			</tr>
		<c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
			<tr>
				<td><input type="checkbox" name="chk" value="${list[i].pcode }" ></td>
				<td>${list[i].pthumbnail }</td> <td>${list[i].pname }</td> <td>${list[i].price }</td>
				
			</tr>
		</c:forEach>
			<tr>
				<td><input type="submit" value="삭제"> </td>
			</tr>
		</table>
	</form>
</body>
</html>