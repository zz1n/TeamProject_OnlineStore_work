<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
<style type="text/css">
a {
  color: inherit;
  text-decoration: none;
}
html, body{
  width: 100vw;
  height: 100vh;
}
.container{
  margin: 0 auto;
  width: 100vw;
  height: 100vh;
  display: grid;
  grid-template-columns: 1fr 4fr 1fr;
  grid-template-rows:200px 100px 500px auto 200px;
  grid-template-areas:
                      "header header header"
                      "topnav topnav topnav"
                      "imgmain imgmain imgmain"
                      "lside main rside"
                      "footer footer footer";
}
.header{
  grid-area: header;
}
.topnav{
  grid-area: topnav;
}
.lside{
  grid-area: lside;
}
.imgmain{
  grid-area: imgmain;
}
.main{
  grid-area: main;
}
.rside{
  grid-area: rside;
}
.footer {  
  grid-area: footer;
  background: #ccc;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>