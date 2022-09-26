<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 문의</title>
</head>
<body>
<h3 style="text-align: center;">사이트 문의</h3>
	<form action="shop/board/usertositesave" method="post">
		<table style="width: 500px">
			<tr>
				<td>제목</td>
				<td><input type="text" name="bname"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bcont" rows="10" cols="50"></textarea></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="사이트 문의">
		<input type="reset" value="작성 취소">
	</form>
</body>
</html>