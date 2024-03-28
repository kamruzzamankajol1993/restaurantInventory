
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ $ins_name }}" />
	<meta property="og:title" content="{{ $ins_name }}" />
	<meta property="og:description" content="{{ $ins_name }}" />
	<meta property="og:image" content="{{ asset('/') }}{{ $logo }}" />
    <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <title>লগ ইন | {{ $ins_name }}</title>
    <!-- Google font-->

     <link href="{{ asset('/') }}public/admin/assets/vendor/swiper/css/swiper-bundle.min.css" rel="stylesheet">

<link href="{{ asset('/') }}public/admin/assets/css/style.css" rel="stylesheet">

  </head>
  <body>




    <div class="container mt-0">
		<div class="row align-items-center justify-contain-center">
			<div class="col-xl-12 mt-5">
				<div class="card border-0">
					<div class="card-body login-bx">
						<div class="row  mt-5">
							<div class="col-xl-8 col-md-6 sign text-center">
								<div>
									<img src="{{ asset('/') }}public/admin/assets/images/login-img/pic-5.jpg" style="height: 450px;" class="food-img" alt="">
								</div>
							</div>
							<div class="col-xl-4 col-md-6 pe-0">
								<div class="sign-in-your">
									<div class="text-center mb-3">
										<img src="{{ asset('/') }}{{ $logo }}" class="mb-3" alt="">
										{{-- <h4 class="fs-20 font-w800 text-black">Create an Account</h4>
										<span class="dlab-sign-up">Sign Up</span> --}}
									</div>
									{{-- <form action="https://fooddesk.dexignlab.com/xhtml/index.html"> --}}


                                        <form class="theme-form login-form" id="form" action="{{route('login.store')}}" method="post">
                                            @csrf
                                            @include('flash_message')



										<div class="mb-3">
											<label class="mb-1"><strong>Email Address</strong></label>
											<input type="email" name="email" required class="form-control" >
										</div>
										<div class="mb-3">
											<label class="mb-1"><strong>Password</strong></label>
											<input type="password" name="password" class="form-control" id="password">
										</div>
										<div class="row d-flex justify-content-between mt-4 mb-2">
											<div class="mb-3">
											   <div class="form-check custom-checkbox ms-1">
													<input type="checkbox" class="form-check-input" id="basic_checkbox_1">
													<label class="form-check-label" for="basic_checkbox_1" onclick="myFunction()">See Password</label>
												</div>
											</div>
											<div class="mb-3">
												<a href="{{ route('forgetPassword') }}">Forgot Password?</a>
											</div>
										</div>
										<div class="text-center">
											<button type="submit" class="btn btn-primary btn-block shadow">Sign Me In</button>
										</div>
									</form>
									{{-- <div class="text-center my-3">
										<span class="dlab-sign-up style-1">continue With</span>
									</div>
									<div class="mb-3 dlab-signup-icon">
										<button class="btn btn-outline-light"><i class="fa-brands fa-facebook me-2 facebook"></i>Facebook</button>
										<button class="btn btn-outline-light"><i class="fa-brands fa-google me-2 google"></i>Google</button>
										<button class="btn btn-outline-light mt-lg-0 mt-md-1 mt-sm-0 mt-1 linked-btn"><i class="fa-brands fa-linkedin me-2 likedin"></i>linkedin</button>
									</div>
									<div class="text-center">
										<span>Already Have An Account?<a href="javascript:void(0);" class="text-primary"> Sign in</a></span>
									</div> --}}

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="{{ asset('/') }}public/admin/assets/vendor/global/global.min.js"></script>
	<script src="{{ asset('/') }}public/admin/assets/vendor/swiper/js/swiper-bundle.min.js"></script>
    <script src="{{ asset('/') }}public/admin/assets/js/dlabnav-init.js"></script>
	{{-- <script src="{{ asset('/') }}public/admin/assets/js/styleSwitcher.js"></script> --}}

    <script>
        function myFunction() {
          var x = document.getElementById("password");
          if (x.type === "password") {
            x.type = "text";
          } else {
            x.type = "password";
          }
        }
        </script>
  </body>
</html>

























