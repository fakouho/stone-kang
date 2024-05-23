<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Plus Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="assets/vendors/jquery-bar-rating/css-stars.css" />
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css" />
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/demo_1/style.css" />
<!-- End layout styles -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
<!-- my health style -->
<link rel="stylesheet" href="assets/css/demo_1/myhealth.css" />



<!-- ******************** CSS 작업가능 영역 START *************************-->

<!-- *******************************  CSS Link 작업영역 START *******************************  -->


<!-- CSS 수정영역 -->
<link rel="stylesheet"
	href="1assets/css/demo_1/reserv/bootstrap.min.css">

<link rel="stylesheet"
	href="assets/css/demo_1/reserv/bootstrap-icons.css">

<link rel="stylesheet"
	href="assets/css/demo_1/reserv/owl.carousel.min.css">

<link rel="stylesheet"
	href="assets/css/demo_1/reserv/owl.theme.default.min.css">

<link href="assets/css/demo_1/reserv/templatemo-pod-talk.css"
	rel="stylesheet">




<!-- *******************************  CSS Link 작업영역 END  ******************************* -->












<!-- ********************  CSS 작업가능 영역 END *************************-->

















</head>

<body>


<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- ** SIDE BAR SECTION ** -->

	<div class="container-scroller">
		<!-- partial:partials/_sidebar.html -->
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
			<ul class="nav">
				<li class="nav-item nav-profile border-bottom">
					<a href="#" class="nav-link flex-column">
						<div class="nav-profile-image">
							<img src="${member.mem_img}" alt="profile" />
							<!--change to offline or busy as needed-->
						</div>
						<div class="nav-profile-text d-flex ms-0 mb-3 flex-column">
							<span class="font-weight-semibold mb-1 mt-2 text-center">${member.mem_name}</span>
							<span class="text-secondary icon-sm text-center">${member.mem_nick}</span>
						</div>
				</a></li>
				<li class="nav-item pt-3"><a class="nav-link d-block"
					href="MainPage.do"> <img class="sidebar-brand-logo"
						src="assets/images/logo.png" alt="" /> <img
						class="sidebar-brand-logomini" src="assets/images/logo-mini.png"
						alt="" />
						<div class="small font-weight-light pt-1">
						fitness responsive web design
						</div>
				</a>
					<form class="d-flex align-items-center" action="#"></form></li>
				<li class="pt-2 pb-1"><span class="nav-item-head">MENU
						</MENU>
				</span></li>



				<!-- ////////////////////////////////////////////////////////////////////////////////////////////// -->
				<!--*** side nar > nav >  사용자 Menu start ***-->
				<li class="nav-item"><a class="nav-link" href="MainPage.do">
						<i class="mdi mdi-compass-outline menu-icon"></i> <span
						class="menu-title">나의운동정보</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="ComparePage.do">
						<i class="mdi mdi-chart-bar menu-icon"></i> <span
						class="menu-title">나의운동비교</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="InputPage.do">
						<i class="mdi mdi-check-circle menu-icon"></i> <span
						class="menu-title">나의운동입력</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="ReservePage.do">
						<i class="mdi mdi-comment-account-outline menu-icon"></i> <span
						class="menu-title">나의운동예약</span>
				</a></li>
				<!--*** 사용자 Menu end ***-->
				<!-- ////////////////////////////////////////////////////////////////////////////////////////////// -->

			</ul>
		</nav>

<!-- ** SIDE BAR SECTION END ** -->
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- ** TOP BAR SECTION ** -->

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_settings-panel.html -->
			<div id="settings-trigger">
				<i class="mdi mdi-settings"></i>
			</div>
			<div id="theme-settings" class="settings-panel">
				<i class="settings-close mdi mdi-close"></i>
				<p class="settings-heading">SIDEBAR SKINS</p>
				<div class="sidebar-bg-options selected" id="sidebar-default-theme">
					<div class="img-ss rounded-circle bg-light border me-3"></div>
					Default
				</div>
				<div class="sidebar-bg-options" id="sidebar-dark-theme">
					<div class="img-ss rounded-circle bg-dark border me-3"></div>
					Dark
				</div>
				<p class="settings-heading mt-2">HEADER SKINS</p>
				<div class="color-tiles mx-0 px-4">
					<div class="tiles default primary"></div>
					<div class="tiles success"></div>
					<div class="tiles warning"></div>
					<div class="tiles danger"></div>
					<div class="tiles info"></div>
					<div class="tiles dark"></div>
					<div class="tiles light"></div>
				</div>
			</div>
			<!-- partial -->
			<!-- partial:partials/_navbar.html -->
			<nav
				class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="navbar-menu-wrapper d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center"
						type="button" data-toggle="minimize">
						<span class="mdi mdi-chevron-double-left"></span>
					</button>
					<div
						class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
						<a class="navbar-brand brand-logo-mini" href="MainPage.do"><img
							src="assets/images/logo-mini.png" alt="logo" /></a>
					</div>

					<ul class="navbar-nav navbar-nav-right">

						<li class="nav-item nav-profile dropdown d-none d-md-block">
							<a class="nav-link dropdown-toggle" id="profileDropdown" href="#"
							data-bs-toggle="dropdown" aria-expanded="false">
								<div class="nav-profile-text">MYPAGE</div>
						</a>
							<div class="dropdown-menu center navbar-dropdown"
								aria-labelledby="profileDropdown">
								<a class="dropdown-item" href="UpdatePage.do"> <i
									class="mdi mdi-account-circle me-3"></i> 회원정보수정
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="InputPage.do"> <i
									class="mdi mdi-check-circle me-3"></i> 나의운동입력
								</a>
									<!-- 변경부분 -->
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="WeightPage.do"> <i
									class="mdi mdi-poll-box me-3"></i> 나의체중입력
								</a>
								<!-- 변경부분 -->
								
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="Logout.do"> <i
									class="mdi mdi-logout-variant me-3"></i> 로그아웃
								</a>
								<div class="dropdown-divider"></div>
						</li>
						<li class="nav-item nav-logout d-none d-lg-block"><a
							class="nav-link" href="MainPage.do"> <i
								class="mdi mdi-home-circle"></i>
						</a></li>
					</ul>
					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-menu"></span>
					</button>
				</div>
			</nav>

<!-- ** TOP BAR SECTION END ** -->
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->



			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper pb-0">



					<!-- *********** my health form ******************* -->
					<div class="content-wrapper">
						<div class="row">

							<div class="card1 ">
								<div class="">

									<section class="hero-section">
										<div class="container">
											<div class="row">

												<div class="col-lg-12 col-12">

													<div class="owl-carousel owl-theme">

														<div class="owl-carousel-info-wrap item">
															<img src="assets/images/reserv/pt_1.jpg"
																class="owl-carousel-image img-fluid" alt="">

															<div class="owl-carousel-info">
																<h4 class="mb-2">Personal trainer | 권혁</h4>
																<span class="btn btn-outline-primary btn-fw"> #헬스
																</span> <span class="btn btn-outline-secondary btn-fw">
																	#바디프로필 </span>
															</div>


														</div>

														<div class="owl-carousel-info-wrap item">
															<img src="assets/images/reserv/pt_2.jpg"
																class="owl-carousel-image img-fluid" alt="">

															<div class="owl-carousel-info">
																<h4 class="mb-2">Personal trainer | 설현</h4>
																<span class="btn btn-outline-primary btn-fw"> #헬스
																</span> <span class="btn btn-outline-danger btn-fw">
																	#필라테스 </span>
															</div>
														</div>

														<div class="owl-carousel-info-wrap item">
															<img src="assets/images/reserv/pt_3.jpg"
																class="owl-carousel-image img-fluid" alt="">

															<div class="owl-carousel-info">
																<h4 class="mb-2">Personal trainer | 고윤정</h4>
																<span class="btn btn-outline-primary btn-fw"> #헬스
																</span> <span class="btn btn-outline-info"> #재활의학과 </span>
															</div>


														</div>

														<div class="owl-carousel-info-wrap item">
															<img src="assets/images/reserv/pt_4.jpg"
																class="owl-carousel-image img-fluid" alt="">

															<div class="owl-carousel-info">
																<h4 class="mb-2">Personal trainer | 마동석</h4>
																<span class="btn btn-outline-primary btn-fw"> #헬스
																</span> <span class="btn btn-outline-success  btn-fw">
																	#벌크업 </span>
															</div>


														</div>





														<div class="owl-carousel-info-wrap item">
															<img src="assets/images/reserv/pt_5.jpg"
																class="owl-carousel-image img-fluid" alt="">

															<div class="owl-carousel-info">
																<h4 class="mb-2">Personal trainer | 추성훈</h4>
																<span class="btn btn-outline-primary btn-fw"> #헬스</span> 
																<span class="btn btn-outline-danger btn-fw"> #격투기 </span> 
																<span class="btn btn-outline-success  btn-fw"> #수상경력 </span>
															</div>
														</div>
														
														
														
														
														
														
													</div>
												</div>
											</div>
										</div>
								</div>
							</div>
							</section>

							<!-- Slide end -->


							<!-- 예약권 START -->

							<section class="latest-podcast-section section-padding pb-0"
								id="section_2">
								<div class="container">
									<div class="row justify-content-center">

										<div class="col-lg-12 col-12">
											<div class="section-title-wrap mb-5">
												<h4 class="section-title">회원권 선택</h4>
											</div>
										</div>

										<div class="col-lg-6 col-12 mb-4 mb-lg-0">
											<div class="custom-block d-flex">
												<div class="">
													<div class="custom-block-icon-wrap">
														<div class="section-overlay"></div>
														<a href="detail-page.jsp" class="custom-block-image-wrap">
															<img src="images/podcast/11683425_4790593.jpg"
															class="custom-block-image img-fluid" alt=""> <a
															href="#" class="custom-block-icon"> <i
																class="bi-play-fill"></i>
														</a>
														</a>
													</div>

													<div class="mt-2">
														<a href="#" class="btn custom-btn"> Subscribe </a>
													</div>
												</div>

												<div class="custom-block-info">
													<div class="custom-block-top d-flex mb-1">
														<small class="me-4"> <i
															class="bi-clock-fill custom-icon"></i> 50 Minutes
														</small> <small>Episode <span class="badge">15</span></small>
													</div>

													<h5 class="mb-2">
														<a href="detail-page.jsp"> Modern Vintage </a>
													</h5>

													<div class="profile-block d-flex">
														<img
															src="images/profile/woman-posing-black-dress-medium-shot.jpg"
															class="profile-block-image img-fluid" alt="">

														<p>
															Elsa <img src="images/verified.png"
																class="verified-image img-fluid" alt=""> <strong>Influencer</strong>
														</p>
													</div>

													<p class="mb-0">Lorem Ipsum dolor sit amet consectetur</p>

													<div
														class="custom-block-bottom d-flex justify-content-between mt-3">
														<a href="#" class="bi-headphones me-1"> <span>120k</span>
														</a> <a href="#" class="bi-heart me-1"> <span>42.5k</span>
														</a> <a href="#" class="bi-chat me-1"> <span>11k</span>
														</a> <a href="#" class="bi-download"> <span>50k</span>
														</a>
													</div>
												</div>

												<div class="d-flex flex-column ms-auto">
													<a href="#" class="badge ms-auto"> <i class="bi-heart"></i>
													</a> <a href="#" class="badge ms-auto"> <i
														class="bi-bookmark"></i>
													</a>
												</div>
											</div>
										</div>

										<div class="col-lg-6 col-12">
											<div class="custom-block d-flex">
												<div class="">
													<div class="custom-block-icon-wrap">
														<div class="section-overlay"></div>
														<a href="detail-page.jsp" class="custom-block-image-wrap">
															<img src="images/podcast/12577967_02.jpg"
															class="custom-block-image img-fluid" alt=""> <a
															href="#" class="custom-block-icon"> <i
																class="bi-play-fill"></i>
														</a>
														</a>
													</div>

													<div class="mt-2">
														<a href="#" class="btn custom-btn"> Subscribe </a>
													</div>
												</div>

												<div class="custom-block-info">
													<div class="custom-block-top d-flex mb-1">
														<small class="me-4"> <i
															class="bi-clock-fill custom-icon"></i> 15 Minutes
														</small> <small>Episode <span class="badge">45</span></small>
													</div>

													<h5 class="mb-2">
														<a href="detail-page.jsp"> Daily Talk </a>
													</h5>

													<div class="profile-block d-flex">
														<img
															src="images/profile/handsome-asian-man-listening-music-through-headphones.jpg"
															class="profile-block-image img-fluid" alt="">

														<p>
															William <strong>Vlogger</strong>
														</p>
													</div>

													<p class="mb-0">Lorem Ipsum dolor sit amet consectetur</p>

													<div
														class="custom-block-bottom d-flex justify-content-between mt-3">
														<a href="#" class="bi-headphones me-1"> <span>140k</span>
														</a> <a href="#" class="bi-heart me-1"> <span>22.4k</span>
														</a> <a href="#" class="bi-chat me-1"> <span>16k</span>
														</a> <a href="#" class="bi-download"> <span>62k</span>
														</a>
													</div>
												</div>

												<div class="d-flex flex-column ms-auto">
													<a href="#" class="badge ms-auto"> <i class="bi-heart"></i>
													</a> <a href="#" class="badge ms-auto"> <i
														class="bi-bookmark"></i>
													</a>
												</div>
											</div>
										</div>

									</div>
								</div>
							</section>



							<!-- 예약권 END -->






							<!-- ******************** HTML 작업가능 영역 END *************************-->
							<!-- ******************** HTML 작업가능 영역 END *************************-->




						</div>
					</div>
<!-- ** Main Area END ** -->
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
				
				
	
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- ** Footer Area START ** -->			
				
				
				
				<!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2024 <a
                target="_blank">Fitneeds</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Fitneeds team & smhrd <i
                class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
				<!-- partial -->
				
				
	
<!-- ** Footer Area END ** -->
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
					<!-- partial -->
				</div>
				<!-- main-panel ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
		<!-- container-scroller -->
		<!-- plugins:js -->
		<script src="assets/vendors/js/vendor.bundle.base.js"></script>
		<!-- endinject -->
		<!-- Plugin js for this page -->
		<script src="assets/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
		<script src="assets/vendors/chart.js/Chart.min.js"></script>
		<script src="assets/vendors/flot/jquery.flot.js"></script>
		<script src="assets/vendors/flot/jquery.flot.resize.js"></script>
		<script src="assets/vendors/flot/jquery.flot.categories.js"></script>
		<script src="assets/vendors/flot/jquery.flot.fillbetween.js"></script>
		<script src="assets/vendors/flot/jquery.flot.stack.js"></script>
		<script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
		<!-- End plugin js for this page -->
		<!-- inject:js -->
		<script src="assets/js/off-canvas.js"></script>
		<script src="assets/js/hoverable-collapse.js"></script>
		<script src="assets/js/misc.js"></script>
		<script src="assets/js/settings.js"></script>
		<script src="assets/js/todolist.js"></script>
		<!-- endinject -->
		<!-- Custom js for this page -->
		<script src="assets/js/dashboard.js"></script>
		<!-- End custom js for this page -->


		<!-- ******************** JS 작업가능 영역 START *************************-->
		<!--  *******************************  JS작업영역 START *******************************  -->
		<script src="assets/js/reserv/jquery.min.js"></script>
		<script src="assets/js/reserv/owl.carousel.min.js"></script>
		<script src="assets/js/reserv/custom.js"></script>



		<!--  *******************************  JS작업영역 END *******************************  -->
		<!-- ******************** JS 작업가능 영역 END *************************-->
</body>

</html>