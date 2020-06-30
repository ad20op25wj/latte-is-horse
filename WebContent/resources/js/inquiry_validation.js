function CheckAddInquiry()
{
	var contents  = document.getElementById('contents');
	
	if(contents == null)
	{
		alert("문의사항을 입력하지 않으셨습니다.");
		return false;
	}
	else
	{
		document.newInquiry.submit();
	}
}