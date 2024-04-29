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

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <title>@yield('title')</title>

    <!-- Vendors Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/vendors_css.css">

    <!-- font style-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/style.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/skin_color.css">
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://parsleyjs.org/src/parsley.css">
<link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'rel='stylesheet'>
<script src="{{ asset('/')}}public/parsely1.js"></script>


 @yield('css')
 <style>

    .parsley-required{

        margin-top:10px;
    }





    input.parsley-success,

    select.parsley-success,

    textarea.parsley-success {

      color: #468847;

      background-color: #DFF0D8;

      border: 1px solid #D6E9C6;

    }

    input.parsley-error,

    select.parsley-error,

    textarea.parsley-error {

      color: #B94A48;

      background-color: #F2DEDE;

      border: 1px solid #EED3D7;

    }


    .parsley-errors-list {

      margin: 2px 0 3px;

      padding: 0;

      list-style-type: none;

      font-size: 0.9em;

      line-height: 0.9em;

      opacity: 0;


      transition: all .3s ease-in;

      -o-transition: all .3s ease-in;

      -moz-transition: all .3s ease-in;

      -webkit-transition: all .3s ease-in;

    }


    .parsley-errors-list.filled {

      opacity: 1;

    }



    .error,.parsley-type, .parsley-required, .parsley-equalto, .parsley-pattern, .parsley-length{

     color:#ff0000;

    }




    .swal2-confirm{

    margin-left:10px;
    }

    .select2.select2-container .select2-selection--multiple .select2-selection__choice .select2-selection__choice__remove {
    position: absolute !important;
    top: 0 !important;
    left: 0 !important;
    height: 22px !important;
    width: 22px !important;
    margin: 0 !important;
    text-align: center !important;
    color: #e74c3c !important;
    font-weight: bold !important;
    font-size: 16px !important;
    }

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.0/iconfont/material-icons.min.css" integrity="sha512-mRuH7OxetZB1XiSaKZ2fxENKgxVvx3ffpzX0FUcaP6GBqAuqOLc8YiC/3EVTUVt5p5mIRT5D9i4LitZUQKWNCg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

{{-- <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" /> --}}
</head>

<body class="hold-transition light-skin sidebar-mini theme-primary fixed">

<div class="wrapper">
    <div id="loader"></div>

    <!--*******************
    Top Header start
    ********************-->

    @include('admin.include.header')
    <!--*******************
    Top Header end
    ********************-->

    <!--*******************
    Sidebar Header  start
    ********************-->
    @include('admin.include.headerLeft')
    <!--*******************
    Sidebar Header  end
    ********************-->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <div class="container-full">
            <!-- Main content -->
          @yield('body')
            <!-- /.content -->
        </div>
    </div>
    <!-- /.content-wrapper -->

    <!--*******************
    Footer Section  start
    ********************-->
    @include('admin.include.footer')
    <!--*******************
    Footer Section  end
    ********************-->


    <!--*******************
    Control Section  start
    ********************-->
    @include('admin.include.control_section')
    <!--*******************
    Control Section  end
    ********************-->


</div>
<!-- ./wrapper -->

<!--*******************
Control Section  start
********************-->
@include('admin.include.chat_box')
<!--*******************
Control Section  end
********************-->


<!-- Page Content overlay -->


<!-- Vendor JS -->
<script src="{{ asset('/') }}public/admin/assets/js/vendors.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/chat-popup.js"></script>
{{-- <script src="{{ asset('/') }}public/admin/assets/vendor_components/apexcharts-bundle/dist/apexcharts.min.js"></script> --}}
<script src="{{ asset('/') }}public/admin/assets/vendor_components/datatable/datatables.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/progressbar.js-master/dist/progressbar.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/OwlCarousel2/dist/owl.carousel.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
	<script src="{{ asset('/') }}public/admin/assets/vendor_components/select2/dist/js/select2.full.js"></script>
<!-- Riday Admin App -->
<script src="{{ asset('/') }}public/admin/assets/js/template.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/dashboard3.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/data-table.js"></script>
{{-- <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script> --}}
<script src="{{ asset('/') }}public/admin/assets/js/pages/advanced-form-element.js"></script>
<script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
<script type="text/javascript">
    function deleteTag(id) {
        swal({
            title: 'Are You Sure',
            text: "You can't bring it back",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <script>

        $(document).ready(function() {
          $('.summernote').summernote();
        });
                </script>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<script>
  $(document).on('click', '#pp', function(e) {


        $('.bd-example-modal-lg').modal('hide');
});
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery.browser = {};
    (function () {
        jQuery.browser.msie = false;
        jQuery.browser.version = 0;
        if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
            jQuery.browser.msie = true;
            jQuery.browser.version = RegExp.$1;
        }
    })();
</script>

  <script>
 $(function(){
    $("#datepicker").datepicker({
        dateFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true
    });
});
  </script>

<script>
    $(function(){
       $("#datepicker1").datepicker({
           dateFormat: "yy-mm-dd",
           changeMonth: true,
           changeYear: true
       });
   });
     </script>


<script>
    $(function(){
       $(".datepicker23").datepicker({
           dateFormat: "yy-mm-dd",
           changeMonth: true,
           changeYear: true
       });
   });
     </script>

<script>
    $(function(){
       $(".datepicker233").datepicker({
           dateFormat: "dd-mm-yy",
           changeMonth: true,
           changeYear: true,
           calendarWeeks: true,
    todayHighlight: true,
    autoclose: true
       });
   });





     </script>

     <script>
        $(document).ready(function() {
    $('.js-example-basic-multiple').select2();
    $('.js-example-basic-single').select2();
});
     </script>


<script>
    $(document).ready(function(){
  $("#form").on("submit", function(){


    //alert(123);
    //$("#pageloader").fadeIn();
    $("#pageloaderOne").fadeIn();

  });//submit
});//document ready
</script>
<script>
    setTimeout(function(){
  $('#divID').remove();
}, 3000);
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.js"></script>

@yield('script')
</body>

</html>
