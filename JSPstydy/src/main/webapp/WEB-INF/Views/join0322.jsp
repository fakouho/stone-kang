<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/join.css" />

<!-- 제이쿼리를 사용 라이브러리 -->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<div>
		<div id="change_main">
			<div class="panel shadow1">
				<form class="join-form" action="Join.do" method="post"
					onsubmit="return validateForm()">
					<div class="panel-switch animated fadeIn">
						<button type="button" id="chg_login">Login</button>
						<button type="button" id="chg_join">SignUp</button>
					</div>
					<h1 class="animated fadeInUp animate1" id="title-login">FITNEEDS
						회원가입</h1>
					<fieldset id="login-fieldset">
						
						<input class="login animated fadeInUp animate2 loginfont"
							name="mem_id" type="text" required placeholder="아이디" value="">
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_pw" type="password" required placeholder="비밀번호"
							value=""> 
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_nick" type="text" required placeholder="닉네임" value="">
						<!-- ============================================================ -->
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_name" type="text" required placeholder="이름" value="">
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_birthdate" type="text" id="exampleInputDate" required
							placeholder="생년월일" value=""> 
						<select class="login animated fadeInUp animate3 loginfont"
							name="mem_gender" id="gender" required>
							<option value="M">남성</option>
							<option value="F">여성</option>
						</select> 
						<!-- ============================================================ -->
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_phone" type="text" required placeholder="000-0000-0000"
							value="">
						<div class="error-message hidden" id="phone-error">올바르지 못한
							양식입니다.</div>
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_addr" type="text" required placeholder="주소" value="">
						<input class="login animated fadeInUp animate3 loginfont"
							name="mem_email" type="text" required placeholder="이메일" value="">
						<!-- ============================================================ -->
					   <input class="login animated fadeInUp animate3 loginfont"
							name="height" type="text" required placeholder="키" value="">
						<div class="error-message hidden" id="height-error">올바르지 못한
							양식입니다.</div>
						<input class="login animated fadeInUp animate3 loginfont"
							name="weight" type="text" required placeholder="몸무게" value="">
						<div class="error-message hidden" id="weight-error">올바르지 못한
							양식입니다.</div>
					</fieldset>
					<input type="submit" id="login-form-submit"
						class="login_form button animated fadeInUp animate4" value="회원가입">
				</form>
			</div>
		</div>
	</div>
</body>

<!--달력기능 사용-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script>
	// 달력 라이브러리
    $(function() {
        $("#exampleInputDate").datepicker({
            dateFormat: "yy-mm-dd",
            regional: "ko", // 한글로 지역화
           	changeYear: true 
        });
    });

    // 형식 검사 및 오류 메시지 표시 함수
    $(document).ready(function() {
    // 전화번호	
	    $("input[name='mem_phone']").on("blur", function() {
	        var phoneNumber = $(this).val();
	        var phoneNumberPattern = /^\d{3}-\d{4}-\d{4}$/;
	        if (!phoneNumberPattern.test(phoneNumber)) {
	            $("#phone-error").text('올바르지 못한 양식입니다.').show();
	        } else {
	            $("#phone-error").hide();
	        }
	    });
		// 키
	    $("input[name='height']").on("blur", function() {
	        var height = $(this).val();
	        if (height < 30 || height > 999 || isNaN(height)) {
	            $("#height-error").text('올바르지 못한 양식입니다').show();
	        } else {
	            $("#height-error").hide();
	        }
	    });
		// 몸무게
	    $("input[name='weight']").on("blur", function() {
	        var weight = $(this).val();
	        if (weight < 30 || weight > 999 || isNaN(weight)) {
	            $("#weight-error").text('올바르지 못한 양식입니다').show();
	        } else {
	            $("#weight-error").hide();
	        }
	        });
    });
   

</script>
</html>