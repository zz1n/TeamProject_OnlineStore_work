<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.sellerid_ok{
color:#008000;
display: none;
}

.sellerid_already{
color:#6A82FB; 
display: none;
}
</style>
<meta charset="UTF-8">
<script type="text/javascript">
   window.onload = function() {
      today = new Date();
      console.log("today.toISOString() >>>" + today.toISOString());
      today = today.toISOString().slice(0, 10);
      console.log("today >>>> " + today);
      bir = document.getElementById("todayin");
      bir.value = today;
   }
</script>
<script type="text/javascript">
   //아이디 중복체크
   function checkId(){

        var sellerid = {"sellerid":$('#sellerid').val()};
        var sellerid = JSON.stringify(sellerid);
        
        $.ajax({
            url:'seller/idCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{sellerid:sellerid},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.sellerid_ok').css("display","inline-block"); 
                    $('.sellerid_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.sellerid_already').css("display","inline-block");
                    $('.sellerid_ok').css("display", "none");
                    alert("아이디를 다시 입력해주세요");
                    $('#sellerid').val('');
                }
            }
           // error:function(){
             //   alert("에러입니다");
           // }
        });
        };
</script>
<title>Insert title here</title>
</head>
<body>
      <form action="sinsave" method="post">
         <table border="1" align="center">
            <tr>
               <td>아이디</td>
               <td><input type="text" name="sellerid" id="sellerid" oninput="checkId()">
               </td>
               </tr>
               <tr>
               <td>아이디는:
               </td>
               <td>
                  <!-- id ajax 중복체크 --> 
                  <span class="sellerid_ok">사용 가능한 아이디입니다.</span> 
                  <span class="sellerid_already">사용 불가한 아이디입니다.</span>
               </td>
            </tr>
            <tr>
               <td>패스워드</td>
               <td><input type="password" name="sellerpw"></td>
            </tr>
            <tr>
               <td>패스워드 확인</td>
               <td><input type="password" name="sellerpw2"></td>
            </tr>
            <tr>
               <td>상호명</td>
               <td><input type="text" name="scomname"></td>
            </tr>
            <tr>
               <td>대표자</td>
               <td><input type="text" name="sprename"></td>
            </tr>
            <tr>
               <td>사업자번호</td>
               <td><input type="text" name="sbusnum"></td>
            </tr>
            <tr>
               <td>통신판매 신고번호</td>
               <td><input type="text" name="scomsalenum"></td>
            </tr>
            <tr>
               <td>사업장 소재지</td>
               <td><input type="text" name="scomaddress"></td>
            </tr>
            <tr>
               <td>이메일</td>
               <td><input type="text" name="semail"></td>
            </tr>
            <tr>
               <td>연락처</td>
               <td><input type="text" name="smobile"></td>
            </tr>
            <tr>
               <td>회원가입일</td>
               <td><input type="date" name="srgtdate" id="todayin" readonly></td>
            </tr>
            <tr>

               <td colspan="2"><input type="button" value="회원가입">
                  &emsp; &emsp; <input type="reset" value="가입취소"></td>
            </tr>
         </table>
      </form>

</body>

</html>