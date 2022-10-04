<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home">홈</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">list <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/shop/list/main">main</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">seller <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/shop/seller/main">main</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">user <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/shop/user/main">main</a></li>
          <li><a href="/shop/order/orderlist?stnrd=0">orderlist</a></li>
          <li><a href="/shop/order/orderlist?stnrd=3">bfrorderlist</a></li>
          <li><hr></li>
          <li><a href="/shop/board/reviewlist?btype=2">review</a></li>
          <li><a href="/shop/check/usercheck?bcode=1">cart</a></li>
          <li><a href="/shop/check/usercheck?bcode=2">like</a></li>
          <li><hr></li>
          <li><a href="/shop/board/usertosellerlist?btype=1">ask to seller list</a></li>
          <li><a href="/shop/board/usertosite">ask to site</a></li>
          <li><a href="/shop/board/usertositelist?btype=3">ask to site list</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>


</body>
</html>