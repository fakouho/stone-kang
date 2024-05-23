<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" href="assets/css/login.css" />
</head>
<body>

	<div id ="cha_main">
	<link rel="stylesheet" href="assets/css/login.css" />
		<div class="panel shadow1">
			<!-- class명 login-from으로 수정 -->
			<form class="login-form" action="login.do" method="post">

				<!-- 로그인 또는 회원가입 이동 -->
				<div class="panel-switch animated fadeIn">
					<button type="button" id="sign_up" class="active-button"
						onclick='location.href="fitlogin0320.do"'>Log in</button>
					<button type="button" id="log_in" class="active-button"
						onclick='location.href="fitjoin0320.do"'>Sign Up</button>
				</div>
				<!-- =========================================================== -->
				
				<!-- 이름칸 -->
				<h1 class="animated fadeInUp animate1" id="title-login">FITNEEDS
					로그인</h1>
				<!-- =========================================================== -->
				
				<!-- 로그인 입력칸 -->
				<fieldset id="login-fieldset">
					<input class="login animated fadeInUp animate2" class="loginfont"
						name="mem_id" type="text" required placeholder="id" value="">
					<input class="login animated fadeInUp animate3" class="loginfont"
						name="mem_pw" type="password" required placeholder="pw" value="">
				</fieldset>
				
				<input type="submit" id="login-form-submit"
					class="login_form button animated fadeInUp animate4" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>
</html>