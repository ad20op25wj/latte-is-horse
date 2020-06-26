function CheckAddComment() {
	var rating = document.getElementById('inputrating');
	
	if (rating.value < 0.5  || rating.value > 5.0) {
		alert("[별점]\n최소 0.5에서 최대 5.0까지 입력해주세요");
		rating.select();
		rating.focus();
		return false;
	}
	else {
		document.newComment.submit();
	}
}