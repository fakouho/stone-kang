<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script> 
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
<script>
    // Flatpickr 초기화
    document.addEventListener('DOMContentLoaded', function() {
        flatpickr('#birthdate', {
            dateFormat: "Y-m-d", // 날짜 형식 설정
            maxDate: new Date().fp_incr(-1), // 오늘 이전 날짜 선택 불가능하도록 설정
            locale: 'ko' // 한글로 설정
        });
    });
</script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" href="assets/css/join.css" />
</head>
<body>
	<div>
		<link rel="stylesheet" href="assets/css/join.css" />
		<div class="panel shadow1">
			<form class="join-form" action="Join.do" method="post">
				<!-- 로그인 또는 회원가입 이동 -->
				<div class="panel-switch animated fadeIn">
					<button type="button" id="sign_up" class="active-button"
						onclick='location.href="fitlogin0320.do"'>Log in</button>
					<button type="button" id="log_in" class="active-button"
						onclick='location.href="fitjoin0320.do"'>Sign Up</button>
				</div>

				<!-- 이름칸 -->
				<h1 class="animated fadeInUp animate1" id="title-login">FITNEEDS
					회원가입</h1>

				<!-- 개인정보 입력칸 -->
				<fieldset id="login-fieldset">
					<input class="login animated fadeInUp animate2" class="loginfont"
						name="mem_id" type="text" required placeholder="아이디" value="">
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="mem_pw" type="password" required placeholder="비밀번호" value="">
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="mem_name" type="text" required placeholder="이름" value="">
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="mem_phone" type="text" required placeholder="000-0000-0000"
						value=""> 
					<input
						class="login animated fadeInUp animate3 loginfont" 
						name="mem_birthdate" type="text" id="birthdate" required
						placeholder="생년월일" value=""> 
					<input
						class="login animated fadeInUp animate3" class="loginfont"
						name="mem_addr" type="text" required placeholder="주소"
						value=""> 
					<input class="login animated fadeInUp animate3"
						class="loginfont" name="mem_email" type="text" required
						placeholder="이메일" value=""> 
					<input
						class="login animated fadeInUp animate3" class="loginfont"
						name="mem_nick" type="text" required placeholder="닉네임"
						value=""> 
					<!--  옵셥을 통해서 성별 변경하기 -->
					<select
						class="login animated fadeInUp animate3 loginfont"
						name="mem_gender" id="gender" required>
						<option value="M">남성</option>
						<option value="F">여성</option>
					</select>
					
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="height" type="text" required placeholder="키" value="">
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="weight" type="text" required placeholder="몸무게" value="">
				</fieldset>
				
				<input type="submit" id="login-form-submit"
					class="login_form button animated fadeInUp animate4" value="회원가입">
			</form>
		</div>
	</div>
</body>

</html>
