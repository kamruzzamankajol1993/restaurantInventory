<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $ins_name }}" />
	<meta property="og:title" content="{{ $ins_name }}" />
	<meta property="og:description" content="{{ $ins_name }}" />
	<meta property="og:image" content="{{ asset('/') }}{{ $logo }}" />

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">

    <title>Table Order List</title>

    <!-- Vendors Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/vendors_css.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/style.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/skin_color.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        .table-box
{
    height: 100%;
    width: 100%;
    border-radius: 6px;
}

.table-box-book
{
    background-color: darkslateblue;
    color: white;

}

.table-box-vacant
{
    background-color: white;
    color: black !important;
}
    </style>
    <style>
        .ajax-loader {
          display: none;
          background-color: rgba(255,255,255,0.7);
          position: absolute;
          z-index: +100 !important;
          width: 100%;
          height:100%;
        }

        .ajax-loader img {
          position: relative;
          top:3%;
          left:40%;
        }
        </style>
</head>
<body class="hold-transition light-skin sidebar-mini theme-primary fixed">

<div class="wrapper">
    <div id="loader"></div>
    <div class="ajax-loader">
        <img src="{{ asset('/') }}public/admin/assets/images/preloaders/1.gif" class="img-responsive" />
    </div>

    <!--*******************
    Top Header start
    ********************-->

    <!--*******************
    Top Header end
    ********************-->


    <!-- Content Wrapper. Contains page content -->
    <div class="" style="margin-left:30px !important;">
        <div class="">
            <section class="content">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5>POS List</h5>
                                    <div class="d-flex justify-content-center">
                                        <button class="btn btn-primary btn-sm me-5"><a href="{{ route('admin.dashboard') }}" style="color:white;">Dashboard</a></button>
                                        <button class="btn btn-primary btn-sm me-5"><a href="{{ route('pos.create') }}" style="color:white;">Point Of Sales</a></button>
                                        <button class="btn btn-primary btn-sm me-5"><a href="{{ route('tableOrder.create') }}" style="color:white;">Table</a></button>
                                        <button class="btn btn-primary btn-sm me-5"><a href="{{ route('pos.index') }}" style="color:white;">Order</a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <div class="col-7">
                        <div class="box">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    @foreach($tableList as $key=>$tableLists)
                                    <?php

                                    $totalOrder = DB::table('orders')->where('table_id',$tableLists->id)->count();
                                    $lastOrderTime = DB::table('orders')
                                    ->orderBy('id','desc')
                                    ->where('table_id',$tableLists->id)

                                    ->Where('pay_status','Unpaid')
                                    ->value('created_at');


                                    $grandTotal = DB::table('orders')
                                    ->orderBy('id','desc')
                                    ->where('table_id',$tableLists->id)
                                    ->Where('pay_status','Unpaid')
                                    ->value('grand_total');

                                    $payStatus = DB::table('orders')
                                    ->orderBy('id','desc')
                                    ->where('table_id',$tableLists->id)
                                    ->Where('pay_status','Unpaid')
                                    ->value('pay_status');

                                    $orderStatus = DB::table('orders')
                                    ->orderBy('id','desc')
                                    ->where('table_id',$tableLists->id)
                                    ->value('status');

                                        ?>

                                          <?php
 $totalName = DB::table('tables')->where('id',1)->value('name');
 $totalOrderLast = DB::table('orders')->where('table_id',1)
 ->orderBy('id','desc')->Where('pay_status','Unpaid')->first();

 $totalOrderLastId = DB::table('orders')->where('table_id',1)
 ->orderBy('id','desc')->Where('pay_status','Unpaid')->value('id');

 $getTotalOrderDetail = DB::table('order_details')->where('order_id',$totalOrderLastId)
 ->latest()->get();

                                            ?>
                                             <?php

                                                $totalPrice = 0;

                                                ?>
                                                @foreach($getTotalOrderDetail as $getTotalOrderDetails)
                                                  <?php

                                                $totalPrice = $totalPrice + ($getTotalOrderDetails->prodcut_price*$getTotalOrderDetails->product_quantity);


                                                ?>
                                                @endforeach

                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        @if($orderStatus == 'pending' || $orderStatus == 'Processing')
                                        <div class="table-box table-box-book sideBarOrder" id="{{ $tableLists->id }}">
                                            <a href="#" style="color:white;">
                                            @else
                                            <div class="table-box table-box-vacant"><a style="color:black;" href="{{ route('addOrderToTable',$tableLists->id) }}">
                                            @endif
                                            <div class="text-center">
                                                <h4 class="pt-10">Table</h4>
                                                <h2>{{ $tableLists->name }}</h2>

                                                <h5>{{ $totalOrder }} Order</h5>
                                            </div>
                                            <table class="table table-bordered" style="margin-bottom: 0 !important; text-align: center;">
                                                <tr>
                                                    <td>Sitting: {{ $tableLists->sitting }} Person</td>
                                                    <td>Time:

                                                        @if(empty($lastOrderTime))

                                                        @else

                                                        {{ date('h:i a', strtotime($lastOrderTime)) }}

                                                        @endif

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Bill: {{$grandTotal}} Taka</td>
                                                    <td>Bill Type: {{ $payStatus }}</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </a>
                                    </div>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                        <!-- /.box -->
                    </div>
                    <div class="col-5">
                        <div class="card">
                            <div class="card-body" id="getProductForPosNew">
                                <div class="pos-sidebar" >
                                    <div class="pos-sidebar-product">


                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="d-flex justify-content-between">
                                                    <h5><i class="fa fa-folder-open"></i> Table {{ $totalName }}</h5>
@if(!$totalOrderLast)

@else
                                                    <h5>Order: #{{ $totalOrderLast->invoice_id }}</h5>
                                                    @endif
                                                </div>
                                                <hr>
                                            </div>
                                            <div class="col-lg-12">

                                                <?php

                                                $totalPrice = 0;

                                                ?>
                                                @foreach($getTotalOrderDetail as $getTotalOrderDetails)


                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="{{ asset('/') }}{{ $getTotalOrderDetails->product_image }}" alt="">
                                                            <div class="pos-product-text">
                                                                <p>{{ $getTotalOrderDetails->product_name }}</p>

                                                                <p>{{ $getTotalOrderDetails->prodcut_price }} TaKa</p>
                                                                <div class="d-flex">
                                                                    {{-- <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a> --}}
                                                                    <input type="text" class="custom-form" disabled name="qty"
                                                                           value="{{ $getTotalOrderDetails->product_quantity }}">
                                                                    {{-- <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a> --}}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    {{-- <div class="p-2 flex-fill text-end">
                                                        <a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div> --}}
                                                </div>

                                                <?php

                                                $totalPrice = $totalPrice + ($getTotalOrderDetails->prodcut_price*$getTotalOrderDetails->product_quantity);


                                                ?>
                                                @endforeach
                                                <hr>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="pos-sidebar-button" id="">
                                        <table class="custom-table">
                                            <tbody>
                                            <tr>
                                                <td>Subtotal</td>
                                                <td class="text-end">

                                                    @if(!$totalOrderLast)

@else

{{ $totalPrice }}

                                                    @endif

                                                </td>
                                            </tr>
                                            <?php

$systemInfo = DB::table('system_information')->first();
$discountInfo = DB::table('discounts')->get();

            ?>
            <tr>
                <td>Service Charge(%)</td>
                <td class="text-end">{{ $systemInfo->service_charge }}</td>
            </tr>
            <tr>
                <td>Tax(%)</td>
                <td class="text-end">{{ $systemInfo->tax }}</td>
            </tr>
            <tr>
                <td>Discount(%)</td>
                <td class="text-end">
                    <select class="form-control" id="finalDiscout{{$totalOrderLastId}}">
                        <option value="0">--select--</option>
                        @foreach($discountInfo  as $discountInfos)
                        <option value="{{ $discountInfos->amount }}">{{ $discountInfos->type }}</option>
                        @endforeach
                        <option value="200">Other</option>
                    </select>

                    <div id="customeDiscountDiv{{$totalOrderLastId}}" style="display: none;">
                        <input type="number" class="form-control mt-3"  value="" id="customeDiscount{{$totalOrderLastId}}" />
                    </div>
                </td>
            </tr>
                                            </tbody>
                                            <tfoot style="border-top: 1px solid black">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="text-end">

                                                        @if(!$totalOrderLast)

                                    @else

                                    <?php

                                    $getFinalCalTax = intval(($totalPrice/100)*$systemInfo->tax);
                                    $getFinalCalService = intval(($totalPrice/100)*$systemInfo->service_charge);

                                    ?>

                                    <span id="newFinalTotal{{ $totalOrderLastId }}">{{$totalPrice +$getFinalCalTax + $getFinalCalService }}</span>
                                    <input type="hidden" id="formFinalTotalCal{{ $totalOrderLastId }}"  value="{{$totalPrice}}"/>
                                    <input type="hidden" id="newFinalTotalCal{{ $totalOrderLastId }}"  value="{{$totalPrice +$getFinalCalTax + $getFinalCalService}}"/>
                                                        @endif

                                                    </td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal1"><i
                                                            class="fa fa-cart-plus"></i> Payment
                                                </button>
                                            </div>

                                            <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payment Method</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form method="post" action="{{route('posTablePayment')}}">
              @csrf
              @if(!$totalOrderLast)

              @else
              <input type="hidden" name="discountAmount" id="formDiscountTotal{{ $totalOrderLastId }}"/>
              <input type="hidden" name="serviceAmount" value="{{$getFinalCalService}}"/>
              <input type="hidden" name="taxAmount" value="{{$getFinalCalTax}}"/>

              <input type="hidden" id="formFinalTotal{{ $totalOrderLastId }}" name="formFinalTotal" value="{{$totalPrice +$getFinalCalTax + $getFinalCalService }}"/>
@endif
              <input type="hidden" name="orderPosId" value="{{$totalOrderLastId}}"/>

              <select class="form-control"  name="ptype">
                  <option value="">--please select--</option>
                  <option value="Bkash">Bkash</option>
                  <option value="Nogod">Nogod</option>
                  <option value="Card">Card</option>
                  <option value="Cash">Cash</option>
              </select>

              <button class="btn btn-sm btn-success mt-5">submit</button>
          </form>
      </div>

    </div>
  </div>
</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>

        </div>
    </div>
    <!-- /.content-wrapper -->


    <!--*******************
    Footer Section  start
    ********************-->

    <!--*******************
    Footer Section  end
    ********************-->





</div>

<!--*******************
Chat Section  start
********************-->
@include('admin.include.chat_box')
<!--*******************
Chat Section  end
********************-->


<!-- Vendor JS -->
<script src="{{ asset('/') }}public/admin/assets/js/vendors.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/chat-popup.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/apexcharts-bundle/dist/apexcharts.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.js"></script>
<script src="{{ asset('/') }}public/admin/assets//vendor_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/select2/dist/js/select2.full.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/moment/min/moment.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/iCheck/icheck.min.js"></script>


<script src="{{ asset('/') }}public/admin/assets/vendor_components/datatable/datatables.min.js"></script>


<!-- Riday Admin App -->
<script src="{{ asset('/') }}public/admin/assets/js/template.js"></script>

<script src="{{ asset('/') }}public/admin/assets/js/pages/advanced-form-element.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/data-table.js"></script>
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
@include('admin.pos.partial.script')
<script>

    //neew pos table start

    $(document).on('click', '.sideBarOrder', function () {

        var table_id = $(this).attr('id');

        //alert(table_id);

        $.ajax({
        url: "{{ route('showOrderToTable') }}",
        method: 'get',
        data: {table_id:table_id},
        beforeSend: function(){
            $('.ajax-loader').show()
        },
        complete: function(){
            $('.ajax-loader').hide()
        },
        success: function(data) {



            alertify.set('notifier','position','top-center');
            alertify.success('product Shown successfully');
            //location.reload(true);
            $('#getProductForPosNew').html('');
            $('#getProductForPosNew').html(data);

        }
        });

    });
    /// new pos table end

    $(document).on('change', '#posCategory', function () {

        var category_id = $(this).find(':selected').val();


            $.ajax({
        url: "{{ route('getProductForPOS') }}",
        method: 'get',
        data: {category_id:category_id},
        beforeSend: function(){
            $('.ajax-loader').show()
        },
        complete: function(){
            $('.ajax-loader').hide()
        },
        success: function(data) {



            alertify.set('notifier','position','top-center');
            alertify.success('product Shown successfully');
            //location.reload(true);
            $('#getProductForPos').html('');
            $('#getProductForPos').html(data);

        }
        });

});


/////search product

$(document).on('keyup', '#posProductSearch', function () {

var productSearch = $(this).val();


    $.ajax({
url: "{{ route('posProductSearch') }}",
method: 'get',
data: {productSearch:productSearch},
beforeSend: function(){
    $('.ajax-loader').show()
},
complete: function(){
    $('.ajax-loader').hide()
},
success: function(data) {



    alertify.set('notifier','position','top-center');
    alertify.success('product Shown successfully');
    //location.reload(true);
    $('#getProductForPos').html('');
    $('#getProductForPos').html(data);

}
});

});



</script>
<script>

    $('[id^=customeDiscount]').on('keyup', function() {

    var main_id = $(this).attr('id');
    var result = main_id.slice(15);
    var mainValue = $(this).val();


        var newcalValue = $('#newFinalTotalCal'+result).val();
        var calValue = $('#formFinalTotalCal'+result).val();
        var getFinalCalDis = parseInt((calValue/100)*mainValue);

        var getTheResult = parseInt(newcalValue) - parseInt(getFinalCalDis);


        $('#formDiscountTotal'+result).val(getFinalCalDis);
        $('#newFinalTotal'+result).html(getTheResult);
        $('#formFinalTotal'+result).val(getTheResult);

    });

    </script>

    <script>
         $('[id^=finalDiscout]').on('change', function() {

    var main_id = $(this).attr('id');
    var result = main_id.slice(12);
    var mainValue = $(this).val();

       if(mainValue == 200){

        $('#customeDiscountDiv'+result).show();
        
        var newcalValue = $('#newFinalTotalCal'+result).val();
        $('#newFinalTotal'+result).html(newcalValue);
        $('#formFinalTotal'+result).val(newcalValue);

       }else{

        $('#customeDiscountDiv'+result).hide();
        var newcalValue = $('#newFinalTotalCal'+result).val();
        var calValue = $('#formFinalTotalCal'+result).val();
        var getFinalCalDis = parseInt((calValue/100)*mainValue);

        var getTheResult = parseInt(newcalValue) - parseInt(getFinalCalDis);


        $('#formDiscountTotal'+result).val(getFinalCalDis);
        $('#newFinalTotal'+result).html(getTheResult);
        $('#formFinalTotal'+result).val(getTheResult);


       }

    });
    </script>
</body>

</html>
