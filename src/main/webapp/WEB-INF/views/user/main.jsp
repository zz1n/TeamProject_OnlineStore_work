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
<!-- ���̵� �ߺ�üũ -->
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
         alert('��� ������ ���̵��Դϴ�.');
         } else{
            $('#idCheck').attr('idCheck','N');
            alert('����� �� ���� ���̵��Դϴ�.');
         }
         
      });
      request.fail(function (jqXHR, mtextStatus) {
         alert("request failed:"+textStatus);
      });
   });
</script>
<!-- ��ȿ���˻� -->
<script type="text/javascript">
   $('loginn').click(function {
      var f = document.form;

      //���̵� ��ȿ��
      var vid = /^[A-Za-z0-9]{4,12}$/;
      var cid = f.sellerid.value;
      if (cid == "") {
         alert("���̵�� ������ �� �����ϴ�.");
         f.userid.select();
         return false;
      }
      if (!vid.test(cid)) {
         alert("���̵�� �����ڿ� �������� 4~12�ڸ��� �Է��ؾ��մϴ�.");
         f.userid.select();
         return false;
      }

      //�н����� ��ȿ��
      var vpw = /^[A-Za-z0-9]{6,12}$/;
      var cpw = f.userpw.value;
      if (cpw == "") {
         alert("��й�ȣ�� ������ �� �����ϴ�.");
         f.userpw.select();
         return false;
      }
      if (!vpw.test(cpw)) {
         alert("��й�ȣ�� �����ڿ� ���� 6~12�ڸ��� �Է��ؾ��մϴ�.");
         f.userpw.select();
         return false;
      }

      //��й�ȣȮ��
      var p1 = f.userpw.value;
      var p2 = f.userpw2.value;
      if (p1 != p2) {
         alert("��й�ȣ�� ��ġ ���� �ʽ��ϴ�");
         return false;
      }
      //��ȭ��ȣ ��ȿ��
      var vmobile = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
      var umobile = f.umobile.value;
      if (!vmobile.test(cmobile)) {
         alert("��ȭ��ȣ �Է� ������ �����ּ���.");
         f.umobile.select();
         return false;
      }
      
      //�̸��� ��ȿ��
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
<title>ȸ������</title>
</head>
<body>
	<form name="form" action="loginn" method="post">
		<table border="1" align="center">
			<tr>
				<td>���̵�</td>
				<td><input type="text" name="userid" id="userid">
					<button type="button" id="idCheck" value="N" onclick="idCheck();">�ߺ�üũ</button>
				</td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td><input type="password" name="userpw" id="userpw"></td>
			</tr>
			<tr>
				<td>�н����� Ȯ��</td>
				<td><input type="password" name="userpw" id="userpw"></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td><input type="text" name="uname" id="uname"></td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td><input type="text" name="umail" id="umail">@ <input
					type="text" name="umail" id="umail"> <select name="umail"
					id="uamil" title="�̸��� �ּ� ����" onchange="selectEmail(this)">
						<option value="1">�����Է�</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
				</select> <input type="hidden" name="uemail"></td>
			</tr>
			<tr>
				<td>����ó</td>
				<td><input type="text" name="umobile"
					placeholder="ex) 010-1234-5678"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="uaddress1" placeholder="�˾Ƽ����"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="ȸ������" id="loginn"> &emsp; &emsp;
				<input type="reset" value="�������">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>