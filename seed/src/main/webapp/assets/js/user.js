/* logo onclick 메인으로 이동 */
function goMain() {
	location.href='/record/main';
}

/* 로그인 onclick */
function loginBtn() {
	location.href='/user/login'
}

/* 회원가입 onclick */
function joinBtn() {
	location.href='/user/join'
}

/* 회원가입 이메일 중복체크 구현중 */
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

