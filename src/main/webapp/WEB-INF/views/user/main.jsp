<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
<!-- 아이디 중복체크 -->
<script type="text/javascript">
   $('idCheck').click(function() {
      var userid={"userid":userid=$('#userid').val()};
      var data=JSON.stringify(userid);
      var $.ajax({
         url :"idCheck",
         method:"POST",
         data:{data:data},
         dataType: "json"
      });
      request.done(function (data) {
         console.log(data.result)
         if(data.result=="Y"){
         $('#idCheck').attr('idCheck','Y');
         alert('사용 가능한 아이디입니다.');
         } else{
            $('#idCheck').attr('idCheck','N');
            alert('사용할 수 없는 아이디입니다.');
         }
         
      });
      request.fail(function (jqXHR, mtextStatus) {
         alert("request failed:"+textStatus);
      });
   });
</script>
<!-- 유효성검사 -->
<script type="text/javascript">
   $('loginn').click(function {
      var f = document.form;

      //아이디 유효성
      var vid = /^[A-Za-z0-9]{4,12}$/;
      var cid = f.sellerid.value;
      if (cid == "") {
         alert("아이디는 공백일 수 없습니다.");
         f.userid.select();
         return false;
      }
      if (!vid.test(cid)) {
         alert("아이디는 영문자와 숫자포함 4~12자리로 입력해야합니다.");
         f.userid.select();
         return false;
      }

      //패스워드 유효성
      var vpw = /^[A-Za-z0-9]{6,12}$/;
      var cpw = f.userpw.value;
      if (cpw == "") {
         alert("비밀번호는 공백일 수 없습니다.");
         f.userpw.select();
         return false;
      }
      if (!vpw.test(cpw)) {
         alert("비밀번호는 영문자와 숫자 6~12자리로 입력해야합니다.");
         f.userpw.select();
         return false;
      }

      //비밀번호확인
      var p1 = f.userpw.value;
      var p2 = f.userpw2.value;
      if (p1 != p2) {
         alert("비밀번호가 일치 하지 않습니다");
         return false;
      }
      //전화번호 유효성
      var vmobile = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
      var umobile = f.umobile.value;
      if (!vmobile.test(cmobile)) {
         alert("전화번호 입력 형식을 맞춰주세요.");
         f.umobile.select();
         return false;
      }
      
      //이메일 유효성
      $("#email3").change(function(){
            $("#email2").val( $("#email3").val() );
        });
      }
   
      $('form').submit(function() {
         var uemail1 = $('loginn[name=uemail1]').val();
         var uemail2 = $('loginn[name=uemail2]').val();
         var uemail = uemail1 + '@' + uemail2;
         $('loginn[name=uemail]').val(uemail);
         return false;
      });
   });
   f.submit();
</script>
<title>회원가입</title>
</head>
<body>
	<form name="form" action="loginn" method="post">
		<table border="1" align="center">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" id="userid">
					<button type="button" id="idCheck" value="N" onclick="idCheck();">중복체크</button>
				</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="userpw" id="userpw"></td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" name="userpw" id="userpw"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="uname" id="uname"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="umail" id="umail">@ <input
					type="text" name="umail" id="umail"> <select name="umail"
					id="uamil" title="이메일 주소 선택" onchange="selectEmail(this)">
						<option value="1">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
				</select> <input type="hidden" name="uemail"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="text" name="umobile"
					placeholder="ex) 010-1234-5678"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="uaddress1" placeholder="알아서써라"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="회원가입" id="loginn"> &emsp; &emsp;
				<input type="reset" value="가입취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>