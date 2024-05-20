@extends('admin.master.master')

@section('title')
Waiter DashBoard
@endsection
@section('css')

@endsection


@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Waiter DashBoard</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-primary">
                    Product Section
                </div>
                <div class="card-body">
                    <div style="height: 75vh; overflow-y: auto; overflow-x: hidden;">
                        <div class="row">
                            <div class="col-lg-6">
                                <select id="posCategory" class="form-control select2"
                                        data-placeholder="Select a Category"
                                        style="width: 100%;">
                                    <option value="">Select Category</option>
                                    @foreach($categoryList as $categoryLists)
                                    <option value="{{ $categoryLists->id }}">{{ $categoryLists->category_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="search" id="posProductSearch" class="form-control" placeholder="Search"
                                           aria-label="Search" name="posProductSearch" aria-describedby="button-addon2">
                                    <div class="input-group-append">
                                        <button class="btn" type="submit" id="button-addon3"><i
                                                    class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 mt-4">
                                <div class="card-body">
                                    <div class="row"  id="getProductForPos">

                                        @foreach($productList as $key=>$productLists)
                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                            <div class="card">
                                                <a href="" data-bs-toggle="modal" data-bs-target="#myModal{{ $key+1 }}">
                                                    <img class="card-img-top"
                                                         src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                         alt="Card image cap">
                                                    <div class="card-body text-center">
                                                        <p class="card-title">{{ $productLists->product_name}}</p>
                                                        <h5 class="card-text">{{ $productLists->default_price }} Taka</h5>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                        <!-- modal related to product start --->

                                       @include('admin.pos.partial.modalRelatedProduct')

                                        <!-- modal related to product end --->
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header bg-primary">
                    Billing Section

                    <?php


$customerList = \App\Models\Customer::latest()->get();



                    ?>
                </div>
                <div class="card-body">
                    <div class="row" id="ajaxDataForCart">
                        <?php
                        $cartContent = \Cart::getContent();

                                                        ?>
                        @if(count($cartContent) == 0)

                        @else
                        <div class="text-end">

                            <button id="clearAllCartData" class="btn btn-danger me-10"
                                           data-bs-toggle="tooltip" data-bs-original-title="Clear Cart">
                                            <i class="fa fa-trash"></i>
                        </button>

                        </div>
                        @endif


                        <div class="col-lg-12 mt-4">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Item</th>
                                    <th>QTY</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>

                                <?php

                                $totalAddOnPrice = 0;
                                $totalVariationPrice = 0;
                                $totalProductDiscount = 0;
                                $totalProductTax = 0;
                                $totalFinalCostOne=0;

                                ?>

                                @foreach($cartContent as $productInfoCArt)
                                <tr>
                                    <td>
                                        <img src="{{ asset('/') }}{{ $productInfoCArt->attributes->image }}" height="30" width="30" alt="">
                                        {{ $productInfoCArt->name }}

                                        {{-- {{ implode(',',$productInfoCArt->attributes->addOnLabelList) }}
                                        {{ implode(',',$productInfoCArt->attributes->varationLabelList) }}
                                        {{ implode(',',$productInfoCArt->attributes->variationPriceList) }} --}}



                                    </td>
                                    <td>
                                        <input class="form-control" id="updateCartQuantity{{ $productInfoCArt->id  }}" type="number" value="{{ $productInfoCArt->quantity }}">
                                    </td>
                                    <td>
                                        {{ $productInfoCArt->price }} Taka
                                    </td>
                                    <td>
                                        <a id="singleItemDelete{{ $productInfoCArt->id  }}" href="javascript:void(0)" class="text-info me-10"
                                           data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>

                                <?php
                                $totalFinalCostOne = $totalFinalCostOne + (($productInfoCArt->price + $productInfoCArt->attributes->variationPrice + $productInfoCArt->attributes->addOnPrice)*$productInfoCArt->quantity);
                                $totalFinalCost = ($productInfoCArt->price + $productInfoCArt->attributes->variationPrice + $productInfoCArt->attributes->addOnPrice)*$productInfoCArt->quantity;

                                 $getDiscountInfo = DB::table('products')
                                              ->where('id',$productInfoCArt->id)->first();

                                 if($getDiscountInfo->discount_type == 'Amount'){



                                    $getFinalCal = intval($getDiscountInfo->discount_price);



                                 }else{

                                    $getFinalCal = intval(($totalFinalCost/100)*$getDiscountInfo->discount_price);


                                 }

                                 $totalProductDiscount = $totalProductDiscount+$getFinalCal;



                                 if($getDiscountInfo->tax_type == 'Amount'){

                                    $getFinalCalTax = intval($getDiscountInfo->tax_rate);



                                }else{

                                $getFinalCalTax = intval(($totalFinalCost/100)*$getDiscountInfo->tax_rate);


                                }

                                $totalProductTax = $totalProductTax+$getFinalCalTax;



                                 $totalVariationPrice = $totalVariationPrice + $productInfoCArt->attributes->variationPrice;
                                 $totalAddOnPrice = $totalAddOnPrice + $productInfoCArt->attributes->addOnPrice;

                                ?>
                                @endforeach
                            </table>
                        </div>
                        <div class="col-lg-12 mt-2">
                            <table class="table table-borderless">

                                <tr>
                                    <td>Subtotal</td>
                                    <td style="text-align:right">: {{ $totalFinalCostOne - $totalAddOnPrice  }}</td>
                                </tr>

                                <tr>
                                    <td>Addon </td>
                                    <td style="text-align:right">: {{ $totalAddOnPrice }}</td>
                                </tr>

                                <tr>
                                    <td>Product Discount</td>
                                    <td style="text-align:right">: {{ $totalProductDiscount }}</td>
                                </tr>
                                <tr>
                                    <td>Extra Discount :</td>
                                    <td style="text-align:right">  <input id="extraDiscount" value="0" class="form-control" type="number"/></td>
                                </tr>
                                <tr>
                                    <td>VAT/TAX:</td>
                                    <td style="text-align:right">: {{ $totalProductTax }}</td>
                                </tr>
                                <tr>
                                    <td>Delivery Charge :</td>
                                    <td style="text-align:right">: 0 </td>
                                </tr>
                                <tr style="border-top: 1px solid black">
                                    <td>Total</td>
                                    <td style="text-align:right">: {{ ($totalFinalCostOne + $totalProductTax ) - $totalProductDiscount  }}</td>
                                </tr>
                            </table>
                        </div>
                        {{-- <div class="col-lg-6 mt-4">
                            <button type="button"
                                    class="waves-effect waves-light btn mb-5 bg-gradient-primary">Cancel
                                Order
                            </button>
                        </div> --}}
                        <div class="col-lg-6 mt-4">
                            <button type="button"
                                    class="btn-block waves-effect waves-green btn mb-5 bg-gradient-primary">
                                Send To Kitchen
                            </button>
                        </div>
                    </div>
                </div>
            </div>

    </div>
</section>


@endsection


@section('script')
@include('admin.pos.partial.script')
<script>

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
@endsection
