<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>		<!-- 내가 쓴 리뷰 모아보기 or 해당 상품에 관한 리뷰 모아보기 페이지 -->
	<form action="board_inputdata" method="post">
		<table style="width: 500px">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<input type="hidden" name="userid" value="user001">
			<input type="hidden" name="ocode" value="O00001">
		</table>
		<br>
		<input type="submit" value="후기 등록">
		<input type="reset" value="작성 취소">
	</form>
</body>
</html>