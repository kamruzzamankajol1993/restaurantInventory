@extends('admin.master.master')

@section('title')
Kitchen DashBoard
@endsection
@section('css')

@endsection


@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Kitchen DashBoard</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">All Order List</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" style="width:100%">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Invoice Number</th>
                                <th>Food List</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($kitchenOrderList as $key=>$kitchenOrderLists)
                                <?php

                            $orderDetailList = DB::table('order_details')
                                 ->where('order_id',$kitchenOrderLists->id)->get();


                                ?>
                            <tr>
                                <td>01</td>
                                <td>{{ $kitchenOrderLists->invoice_id }}</td>
                                <td>
                                    @foreach($orderDetailList as $orderDetailLists)

                                    <?php

$getAllProductId = DB::table('products')
                                 ->where('id',$orderDetailLists->product_id)
                                 ->value('category_id');

                                 //dd($getAllProductId);

                            $getCategoryName =DB::table('categories')
                                 ->where('id',$getAllProductId)->value('category_name');


                                    ?>
                                    <h5>{{ $getCategoryName }}</h5>
                                    <table class="table table-bordered">


                                        <tr>
                                            <td>
                                                <div class="d-flex justify-content-center align-items-center">
                                                    <img class="table_image_box" src="{{ asset('/') }}{{ $orderDetailLists->product_image }}" alt="">
                                                    <span>{{ $orderDetailLists->product_name }} *  {{ $orderDetailLists->product_quantity }}</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="form-group">
                                                    <label class="fw-700 fs-16 form-label">Status Name</label>
                                                    <select class="form-control productStatus" name="productStatus" id="productStatus">
                                                        <option data-mid="{{ $orderDetailLists->id }}" value="Pending" {{ $orderDetailLists->status == 'Pending' ? 'selected':'' }}>Pending</option>
                                                        <option data-mid="{{ $orderDetailLists->id }}" value="Processing" {{ $orderDetailLists->status == 'Processing' ? 'selected':'' }}>Processing</option>
                                                        <option data-mid="{{ $orderDetailLists->id }}" value="Finish" {{ $orderDetailLists->status == 'Finish' ? 'selected':'' }}>Finish</option>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>





                                    </table>
                                    @endforeach

                                </td>
                                <td>
                                    Status: <span class="badge badge-primary-light">Partial</span>\
                                    <br>
                                    Unit: <span class="badge badge-primary">10/4</span>
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>

@endsection


@section('script')
<script>

$(document).on('change', '.productStatus', function () {

var status = $(this).find(':selected').val();
var id =   $(this).find(':selected').data('mid')


$.ajax({
url: "{{ route('orderStatusUpdate') }}",
method: 'get',
data: {status:status,id:id},
beforeSend: function(){
$('#loader').show()
},
complete: function(){
$('#loader').hide()
},
success: function(data) {

alertify.set('notifier','position','top-center');
alertify.success('Prioriry Updated SuccessFully');
location.reload(true);


}
});

});


</script>

@endsection
