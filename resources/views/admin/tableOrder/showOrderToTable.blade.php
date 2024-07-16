<div class="pos-sidebar" >
    <div class="pos-sidebar-product">

        <?php
$totalName = DB::table('tables')->where('id',$tableId)->value('name');
$totalOrderLast = DB::table('orders')->where('table_id',$tableId)
->orderBy('id','desc')->orWhere('status','Processing')->Where('status','pending')->first();

$totalOrderLastId = DB::table('orders')->where('table_id',$tableId)
->orderBy('id','desc')->orWhere('status','Processing')->Where('status','pending')->value('id');

$getTotalOrderDetail = DB::table('order_details')->where('order_id',$totalOrderLastId)
->latest()->get();

            ?>
        <div class="row">
            <div class="col-lg-12">
                <div class="d-flex justify-content-between">
                    <h5><i class="fa fa-folder-open"></i>Table {{ $totalName }}</h5>
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
                <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal{{$totalOrderLastId}}"><i
                            class="fa fa-cart-plus"></i> Payment
                </button>
            </div>

             <div class="modal fade" id="exampleModal{{$totalOrderLastId}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payment Method</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form method="post" action="{{route('posTablePayment')}}">
              @csrf

              <input type="hidden" name="discountAmount" id="formDiscountTotal{{ $totalOrderLastId }}"/>
              <input type="hidden" name="serviceAmount" value="{{$getFinalCalService}}"/>
              <input type="hidden" name="taxAmount" value="{{$getFinalCalTax}}"/>

              <input type="hidden" id="formFinalTotal{{ $totalOrderLastId }}" name="formFinalTotal" value="{{$totalPrice +$getFinalCalTax + $getFinalCalService }}"/>
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
