
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
    <title> 500 | {{ $ins_name }}</title>
    <!-- Google font-->
<!-- Vendors Style-->
<link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/vendors_css.css">

<!-- Style-->
<link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/style.css">
<link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/skin_color.css">
 <!-- font style-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body class="hold-transition theme-primary bg-img" style="background-image: url({{ asset('/') }}public/admin/assets/images/auth-bg/bg-5.jpg)">
    <section class="error-page h-p100">
		<div class="container h-p100">
		  <div class="row h-p100 align-items-center justify-content-center text-center">
			  <div class="col-lg-7 col-md-10 col-12">
				  <div class="rounded30 p-50">
					  <img src="{{ asset('/') }}public/admin/assets/images/auth-bg/500.jpg" class="max-w-200" alt="" />
					  <h1>Uh-Ah</h1>
					  <h3>Internal Server Error !</h3>
					  <div class="my-30"><a href="{{ route('admin.dashboard') }}" class="btn btn-info">Back to dashboard</a></div>
					  <h5 class="mb-15">-- OR --</h5>
					  <h4>Please try after some time</h4>
			      </div>
			  </div>
		  </div>
		</div>
	</section>


	<!-- Vendor JS -->
	<script src="{{ asset('/') }}public/admin/assets/js/vendors.min.js"></script>
	<script src="{{ asset('/') }}public/admin/assets/js/pages/chat-popup.js"></script>
	<script src="{{ asset('/') }}public/admin/assets/vendor_components/apexcharts-bundle/dist/apexcharts.min.js"></script>
    <script src="{{ asset('/') }}public/admin/assets/icons/feather-icons/feather.min.js"></script>

  </body>
</html>

























