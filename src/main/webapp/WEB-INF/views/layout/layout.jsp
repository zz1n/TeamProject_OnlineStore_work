<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
div{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<meta charset="UTF-8">
</head>
<body>

<div class="container">    
  <div class="header">
    <tiles:insertAttribute name="header"/>
  </div>    
  
  <div class="topnav">
    <tiles:insertAttribute name="navi"/>
  </div>  
    
  <div class="lside">
  
</div> 
  
  <div class="imgmain">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="${pageContext.request.contextPath }/image/rank.PNG" alt="1" style="width:100%; height:400px;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/image/rank.PNG" alt="2" style="width:100%; height:400px;">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath }/image/rank.PNG" alt="3" style="width:100%; height:400px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
     
  
  <div class="main">
    <tiles:insertAttribute name="body"/>
  </div>    
  
  <div class="rside">
  
  </div>    
  
  <div class="footer">
    <tiles:insertAttribute name="footer"/>
  </div>
</div>
</body>
</html>
