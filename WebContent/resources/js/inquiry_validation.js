function CheckAddInquiry()
{
	var title = document.getElementById("title");
	var email = document.getElementById("email");
	var contents = document.getElementById("contents");
	
	if (title==null) {
		alert("제목을 입력하세요");
		title.focus();
		return false;
	}
	else if(!email){
		alert("이메일을 입력해주세요");
		email.focus();
		return false;
	}
	else if(!check(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/, email, "형식을 올바르게 입력해주세요"))
		return false;
	else if(!contents){
		alert("내용을 입력해주세요");
		contents.focus();
		return false;
	}
	else {
		alert("문의사항이 접수되었습니다. 감사합니다");
		document.newInquiry.submit();
	}
	
	function check(regExp, e, msg){
		
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
}