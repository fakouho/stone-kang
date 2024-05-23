<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/join.css" />
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
</head>

<!-- 보이는화면 -->
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
					<fieldset id="login-fieldset" style="width: fit-content;">
						<!-- 섹션 1 -->
						<div id="section1" style="display: block;">
							<input class="login animated fadeInUp animate2 loginfont"
								name="mem_id" type="text" required placeholder="아이디" value="">
							<div class="bin-space"></div>
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_pw" type="password" required placeholder="비밀번호"
								value="">
							<div class="bin-space"></div>
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_nick" type="text" required placeholder="닉네임" value="">
							<div class="bin-space"></div>
						</div>
						<!-- 섹션 2 -->
						<div id="section2" style="display: none;">
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_name" type="text" required placeholder="이름" value="">
							<div class="bin-space"></div>
							<input class="login animated fadeInUp animate3"
								name="mem_birthdate" type="text" id="exampleInputDate" required
								placeholder="생년월일" value="">
							<div class="bin-space"></div>
							<select
								class="login animated fadeInUp animate3 loginfont select-style"
								name="mem_gender" id="gender" required>
								<option value="M">남성</option>
								<option value="F">여성</option>
							</select>
							<div class="bin-space"></div>
						</div>
						<!-- 섹션 3 -->
						<div id="section3" style="display: none;">
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_phone" type="text" required
								placeholder="000-0000-0000" value="">
							<div class="error-message" id="phone-error">올바르지 못한 양식입니다.</div>
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_addr" type="text" required placeholder="주소" value="">
							<div class="bin-space"></div>
							<input class="login animated fadeInUp animate3 loginfont"
								name="mem_email" type="text" required placeholder="이메일" value="">
							<div class="bin-space"></div>
						</div>
						<!-- 섹션 4 -->
						<div id="section4" style="display: none;">
							<input class="login animated fadeInUp animate3 loginfont"
								name="height" type="text" required placeholder="키" value="">
							<div class="error-message" id="height-error">올바르지 못한 양식입니다.</div>
							<input class="login animated fadeInUp animate3 loginfont"
								name="weight" type="text" required placeholder="몸무게" value="">
							<div class="error-message" id="weight-error">올바르지 못한 양식입니다.</div>
							<div class="hidden-space"></div>
							<div class="bin-space"></div>
						</div>
						
						<div id="container">
							<div id="button-container">
								<button id="plus" onclick="prevSection()">이전</button>
								<p id="txt">1</p>
								<button id="minus" onclick="nextSection()">다음</button>
							</div>
						</div>
					</fieldset>
					<input type="submit" id="login-form-submit"
						class="login_form button animated fadeInUp animate4" value="회원가입">
					<input type="submit" class="naverlogin_form button animated fadeInUp animate4" value="네이버 회원가입">
				</form>
			</div>
		</div>
	</div>
</body>
<!--달력기능 사용-->
<script type="text/javascript" src="assets/js/join_login.js"></script>
<script type="text/javascript" src="assets/js/change_join_login.js"></script>
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

 // 전화번호 입력란을 벗어날 때 형식 검사
    $(document).ready(function() {
    $("input[name='mem_phone']").on("blur", function() {
        var phoneNumber = $(this).val();
        var phoneNumberPattern = /^\d{3}-\d{3,4}-\d{4}$/; // 수정된 전화번호 형식
        if (phoneNumber !== "") {
            if (!phoneNumberPattern.test(phoneNumber)) {
                $("#phone-error").css({"color": "red", "opacity": "1"}).text('올바르지 못한 양식입니다.').show(); // 오류가 있을 때는 빨간색으로 보이게 합니다.
            } else {
                $("#phone-error").css("opacity", "0"); // 오류가 없을 때는 투명하게 만듭니다.
            }
        } else {
            $("#phone-error").css("opacity", "0"); // 입력 전에는 오류 메시지를 투명하게 만듭니다.
        }
    }).on("focus", function() {
        $("#phone-error").css("opacity", "0"); // 입력란에 포커스가 가면 오류 메시지를 투명하게 만듭니다.
    }).trigger("blur"); // 초기에는 오류 메시지를 투명하게 만듭니다.
});

    $("input[name='height']").on("blur", function() {
        var height = $(this).val();
        if (height !== "") {
            if (height < 30 || height > 300 || isNaN(height)) { // 수정된 키 범위
                $("#height-error").css({"color": "red", "opacity": "1"}).text('올바르지 못한 양식입니다.').show(); // 오류가 있을 때는 빨간색으로 보이게 합니다.
            } else {
                $("#height-error").css("opacity", "0"); // 오류가 없을 때는 투명하게 만듭니다.
            }
        } else {
            $("#height-error").css("opacity", "0"); // 입력 전에는 오류 메시지를 투명하게 만듭니다.
        }
    }).on("focus", function() {
        $("#height-error").css("opacity", "0"); // 입력란에 포커스가 가면 오류 메시지를 투명하게 만듭니다.
    }).trigger("blur"); // 초기에는 오류 메시지를 투명하게 만듭니다.

    // 몸무게 입력란 형식 검사
    $("input[name='weight']").on("blur", function() {
        var weight = $(this).val();
        if (weight !== "") {
            if (weight < 10 || weight > 300 || isNaN(weight)) { // 수정된 몸무게 범위
                $("#weight-error").css({"color": "red", "opacity": "1"}).text('올바르지 못한 양식입니다.').show(); // 오류가 있을 때는 빨간색으로 보이게 합니다.
            } else {
                $("#weight-error").css("opacity", "0"); // 오류가 없을 때는 투명하게 만듭니다.
            }
        } else {
            $("#weight-error").css("opacity", "0"); // 입력 전에는 오류 메시지를 투명하게 만듭니다.
        }
    }).on("focus", function() {
        $("#weight-error").css("opacity", "0"); // 입력란에 포커스가 가면 오류 메시지를 투명하게 만듭니다.
    }).trigger("blur"); // 초기에는 오류 메시지를 투명하게 만듭니다.
    
    var currentSection = 1;

    function nextSection() {
        if (currentSection < 4) {
            document.getElementById('section' + currentSection).style.display = 'none';
            currentSection++;
            document.getElementById('section' + currentSection).style.display = 'block';
            document.getElementById("txt").innerHTML = currentSection;
        }
    }

    function prevSection() {
        if (currentSection > 1) {
            document.getElementById('section' + currentSection).style.display = 'none';
            currentSection--;
            document.getElementById('section' + currentSection).style.display = 'block';
            document.getElementById("txt").innerHTML = currentSection;
        }
    }
    
    
</script>
</html>
