function CheckAddpassword()
{
	var password = document.getElementById('inputpassword');
	var password_con = document.getElementById('inputpassword_con');
	
	if(password != password_con)
	{
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		return false;
	}
	else
	{
		document.newUser.submit();
	}
}