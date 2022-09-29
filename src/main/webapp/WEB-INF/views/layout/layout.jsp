<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
    
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/layout/CSS.jsp" %>
</head>
<body>

<div class="header">
  <tiles:insertAttribute name="header"/>
</div>
 
<div class="topnav">
  <tiles:insertAttribute name="navi"/>
</div>
 
<div class="row">
  <div class="column side">
    <tiles:insertAttribute name="leftside"/>
  </div>
  <div class="column middle">
    <tiles:insertAttribute name="body"/>
  </div>
  <div class="column side">
    <tiles:insertAttribute name="rightside"/>
  </div>
</div>
 
<div class="footer">
  <tiles:insertAttribute name="footer"/>
</div>

</body>
</html>
