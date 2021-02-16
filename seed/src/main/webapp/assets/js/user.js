function goMain() {
	location.href='/record/main';
}

function loginBtn() {
	location.href='/user/login'
}

function joinBtn() {
	location.href='/user/join'
}

function doubleChk() {
	$.ajax({
		url : '/user/chkEmail',
		type : 'post',
		dataType : 'json',
		data : {"user_email" : $("#user_email").val()},
		success : function(data) {
			if(data == 1) {
				alert('중복된 이메일입니다');
			} else if(data == 0) {
				$('#chkEmail').attr('value', 'Y');
				alert('중복된 이메일입니다');
			}
		}
	})
}
