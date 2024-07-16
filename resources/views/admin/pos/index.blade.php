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
        <div class="col-12">
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>{{ $pendingOrderListCount }}</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Pending
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>{{ $confirmOrderListCount }}</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Confirmed
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-warning">
                                    <strong>{{ $processingOrderListCount }}</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-warning-light btsr-0 bter-0">
                                <p class="fw-600">
                                    <span class="icon-Ticket me-5 text-warning"></span> Processing
                                </p>
                            </div>
                        </a>
                    </div>

                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>0</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Out For Delivery
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>0</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Delivered
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-warning">
                                    <strong>0</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-warning-light btsr-0 bter-0">
                                <p class="fw-600">
                                    <span class="icon-Ticket me-5 text-warning"></span> Canceled
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>0</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Return
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>0</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Failed to Delivery
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">All Order List</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table id="example5" class="table table-bordered" style="width:100%">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Order ID</th>
                                <th>Order Date</th>
                                <th>Table No</th>

                                <th>Total Amount</th>
                                <th>Order Status</th>
                                <th>Order Type</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                @foreach($kitchenOrderList as $key=>$kitchenOrderLists)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $kitchenOrderLists->invoice_id }}</td>
                                <td>
                                    <span>{{ date('d-F-y', strtotime($kitchenOrderLists->created_at)) }}</span>
                                    <br>
                                    <span>{{ date('H:i:s A', strtotime($kitchenOrderLists->created_at)) }}</span>
                                </td>

                                <td>
                                    <?php

                                    $table = DB::table('tables')->where('id',$kitchenOrderLists->table_id)->value('name');


                                        ?>

                                        {{ $table  }}
                                </td>
                                <td>
                                    <span>{{ $kitchenOrderLists->grand_total }} Taka</span> <br>
                                    <span class="text-danger">{{ $kitchenOrderLists->pay_status }}</span>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">{{ $kitchenOrderLists->status }}</span>
                                </td>
                                <td>
                                    <span class="badge badge-info-light">{{ $kitchenOrderLists->order_type }}</span>
                                </td>
                                <td>
                                    @if($kitchenOrderLists->pay_status == 'paid')

                                    @else
                                    <a href="#" class="text-info me-10" data-bs-toggle="modal" data-bs-target="#exampleModal{{ $kitchenOrderLists->id }}">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    @endif

                                                        <div class="modal fade" id="exampleModal{{ $kitchenOrderLists->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payment Method</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form method="post" action="{{route('posTablePayment')}}">
              @csrf

              <input type="hidden" name="orderPosId" value="{{ $kitchenOrderLists->id }}"/>

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

                                    <a href="{{ route('printPdf',$kitchenOrderLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Print">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </td>
                            </tr>

                            @endforeach


                            </tbody>
                            <tfoot>
                            <tr>
                                <th>SL</th>
                                <th>Order ID</th>
                                <th>Delivery Date</th>
                                <th>Table No</th>

                                <th>Total Amount</th>
                                <th>Order Status</th>
                                <th>Order Type</th>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
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

</body>

</html>






