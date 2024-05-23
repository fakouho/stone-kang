document.addEventListener('DOMContentLoaded', function() {

	document.getElementById("chg_join").addEventListener("click", function() {
		document.getElementById("change_main").innerHTML = `
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
	</div>`;
		// chg_login 함수 연결
		document.getElementById("chg_login").addEventListener("click", chg_login);
		// chg_join 함수 삭제
		document.getElementById("chg_join").removeEventListener("click", chg_join);
	});

	document.getElementById("chg_login").addEventListener("click", function() {
		document.getElementById("change_main").innerHTML = `
                    <div class="panel shadow1">
                        <link rel="stylesheet" href="assets/css/login.css" />
                        <form class="login-form" action="Login.do" method="post">
                            <div class="panel-switch animated fadeIn">
                                <button type="button" id="chg_login">Login</button>
                                <button type="button" id="chg_join">SignUp</button>
                            </div>
                            <h1 class="animated fadeInUp animate1" id="title-login">FITNEEDS 로그인</h1>
                            <fieldset id="login-fieldset">
        					<input class="login animated fadeInUp animate2" class="loginfont"
        						name="mem_id" type="text" required placeholder="id" value="">
        					<input class="login animated fadeInUp animate3" class="loginfont"
        						name="mem_pw" type="password" required placeholder="pw" value="">
        					</fieldset>
                            <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="로그인">
                            <input type="submit" class="naverlogin_form button animated fadeInUp animate4" value="네이버 회원가입">
                        </form>
                    </div>`;
		// chg_join 함수 연결
		document.getElementById("chg_join").addEventListener("click", chg_join);
		// chg_login 함수 삭제
		document.getElementById("chg_login").removeEventListener("click", chg_login);
	});

	function chg_join() {
		document.getElementById("change_main").innerHTML = `
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
	</div>`;
		// chg_login 함수 연결
		document.getElementById("chg_login").addEventListener("click", chg_login);
		// chg_join 함수 삭제
		document.getElementById("chg_join").removeEventListener("click", chg_join);
	}

	function chg_login() {
		document.getElementById("change_main").innerHTML = `
                    <div class="panel shadow1">
                        <link rel="stylesheet" href="assets/css/login.css" />
                        <form class="login-form" action="Login.do" method="post">
                            <div class="panel-switch animated fadeIn">
                                <button type="button" id="chg_login">Login</button>
                                <button type="button" id="chg_join">SignUp</button>
                            </div>
                            <h1 class="animated fadeInUp animate1" id="title-login">FITNEEDS 로그인</h1>
                            <fieldset id="login-fieldset">
        					<input class="login animated fadeInUp animate2" class="loginfont"
        						name="mem_id" type="text" required placeholder="id" value="">
        					<input class="login animated fadeInUp animate3" class="loginfont"
        						name="mem_pw" type="password" required placeholder="pw" value="">
        					</fieldset>
                            <input type="submit" id="login-form-submit" class="login_form button animated fadeInUp animate4" value="로그인">
                        </form>
                    </div>`;
		// chg_join 함수 연결
		document.getElementById("chg_join").addEventListener("click", chg_join);
		// chg_login 함수 삭제
		document.getElementById("chg_login").removeEventListener("click", chg_login);
	}
});