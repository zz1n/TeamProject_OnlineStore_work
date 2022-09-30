<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
a {
  color: inherit;
  text-decoration: none;
}
html, body{
width: 100%;
height: 100%;
margin: 0;
padding: 0;
}
header {
display: inline-block;
}

.container {
width: 100%;
height: 100%;
/* header에 주지말고 그 안의 요소에 padding을 준다. */
padding: 20px 0;
}
.logo {
float: left;
margin-right: 10px;
margin-top: 10px;
}
.login{
float: right;
margin-left: 10px;
}

.header-search{
height: 50px;
width: 400px;
border: 1px solid #000000;
background: #ffffff;
margin: 0 auto;
}

#rankKeyword{
font-size: 16px;
width: 325px;
padding: 10px;
border: 0px;
outline: none;
float: left;
}
.btn btn-default{
width: 50px;
height: 100%;
border: none;
background: #ffffff;
outline: none;
float: right;
color: #000000;
margin: 0 auto;
}
</style>
</head>
<body>
<form action="search" method="get">
  <div class="header">
    <div id="container">
      <div class="container-left clearfix">
        <div class="logo">
         <a href="main"><h1>랭킹닭컴</h1></a>
        </div>
          <div class="login">
            <a href="#">로그인</a>&nbsp;|
            <a href="#">회원가입</a>&nbsp;|
            <a href="#">주문조회</a>&nbsp;|
            <a href="#">고객센터</a>
          </div>
	    <div class="header-search" id="search">	  
	        <input type="text" id="rankKeyword"
	        placeholder="검색어를 입력해주세요" name="svalue">
		  <button type="submit" class="btn btn-default">
            <span class="glyphicon glyphicon-search"></span>
          </button>
		</div>
	  </div>	  
    </div>
  </div>
</form>
</body>
</html>