@extends('admin.master.master')

@section('title')
create Order
@endsection
@section('css')

@endsection


@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">POS</h4>
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
                    <form class="custom-validation" action="{{ route('tableOrder.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                        @csrf
                        @include('flash_message')
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="form-group">
                                <select name="customer_id" class="form-control select2"
                                        data-placeholder="Select a State"
                                        style="width: 100%;">
                                    <option value="">Select Customer</option>
                                    <option value="Walk In Customer" selected>Walk In Customer</option>
                                    @foreach($customerList as $customerLists)
                                    <option  value="{{ $customerLists->id }}">{{ $customerLists->name }}</option>
                                     @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <a class="btn btn-primary-light" data-bs-toggle="modal" data-bs-target="#myModalw"><i class="fa fa-plus"></i> Add Customer
                            </a>
                        </div>
                        <div class="col-lg-12 ">
                            <div class="form-group">
                                <select class="form-control" name="branch" id="">
                                    <option value="">Select Branch</option>
                                    <option value="Dhaka" selected>Dhaka</option>
                                </select>
                            </div>
                            <input name="tableId" value="{{ $tableId }}" class="form-control" type="hidden"/>

                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <select class="form-control" name="order_type" id="order_type">
                                    <option value="">Select Order Type</option>
                                    <option value="Take Away">Take Away</option>
                                    <option value="Dine In">Dine In</option>
                                    <option value="Home Delivery">Home Delivery</option>
                                </select>
                            </div>
                        </div>
                        <?php

                          $waiterList = App\Models\Admin::where('designation_list_id',4)->get();

                        ?>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <select class="form-control" name="waiter_id" id="">
                                    <option value="">Select Waiter</option>
                                    @foreach($waiterList as $waiterLists)
                                    <option value="{{ $waiterLists->id }}">{{ $waiterLists->admin_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-12" id="shipAddress" style="display: none;">
                              <label>Delivery Phone</label>
                            <div class="form-group">
                                <input name="phone" class="form-control" type="number"/>
                            </div>
                            <label>Delivery Address</label>
                            <div class="form-group">
                                <textarea name="shipAddress" class="form-control" id="" cols="3" rows="2"></textarea>
                            </div>


                        </div>

                    </div>
                    <div class="row" id="ajaxDataForCart">
                        <?php
                        $cartContent = \Cart::getContent();

                                                        ?>
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
                                    <td style="text-align:right">:

                                        {{ $totalFinalCostOne - $totalAddOnPrice  }}

                                        <input type="hidden" name="subTotal" value="{{ $totalFinalCostOne - $totalAddOnPrice  }}" id="subTotal"/>


                                    </td>
                                </tr>

                                <tr>
                                    <td>Addon </td>
                                    <td style="text-align:right">:

                                        {{ $totalAddOnPrice }}
                                        <input type="hidden" name="addOn" value="{{ $totalAddOnPrice  }}" id="addOn"/>

                                    </td>
                                </tr>

                                <tr>
                                    <td>Product Discount</td>
                                    <td style="text-align:right">:

                                        {{ $totalProductDiscount }}
                                        <input type="hidden" name="discount" value="{{ $totalProductDiscount  }}" id="discount"/>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Extra Discount :</td>
                                    <td style="text-align:right">  <input name="extraDiscount" id="extraDiscount" value="0" class="form-control" type="number"/></td>
                                </tr>
                                <tr>
                                    <td>VAT/TAX:</td>
                                    <td style="text-align:right">:

                                        {{ $totalProductTax }}
                                        <input type="hidden" name="vatTAx" value="{{ $totalProductTax  }}" id="vatTax"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Delivery Charge :</td>
                                    <td style="text-align:right">: 0 </td>
                                </tr>
                                <tr style="border-top: 1px solid black">
                                    <td>Total</td>
                                    <td style="text-align:right">:

                                        <span id="t2">
                                        {{ ($totalFinalCostOne + $totalProductTax ) - $totalProductDiscount  }}
                                        </span>
                                        <input type="hidden" name="total" value="{{ ($totalFinalCostOne + $totalProductTax ) - $totalProductDiscount  }}" id="total"/>

                                    </td>
                                </tr>
                            </table>
                        </div>
                        @if(count($cartContent) == 0)

                        @else
                        <div class="col-lg-6 mt-4">
                            <button type="button" id="clearAllCartData"
                                    class="waves-effect waves-light btn mb-5 bg-gradient-primary">Cancel
                                Order
                            </button>
                        </div>
                        @endif
                        <div class="col-lg-6 mt-4">
                            <button type="submit"
                                    class="btn-block waves-effect waves-green btn mb-5 bg-gradient-primary">
                                Submit Order
                            </button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- modal related to product start --->

<div id="myModalw" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1>Add New customer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation" action="{{ route('postData') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf

                    {{-- <input type="hidden" class="form-control" id="b" name="bt" value="23" placeholder="Name" > --}}
                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <div class="box">
                            <div class="box-body">
                                {{-- <div class="progress" style="display: none;">
                                    <div class="bar"></div >
                                    <div class="percent">0%</div >
                                </div> --}}

            @include('flash_message')
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Customer Name</label>

                                        <input type="text" class="form-control" id="name" name="name" data-parsley-maxlength="150" placeholder="Name" required>

                                        @if ($errors->has('name'))
                                        <span class="text-danger">{{ $errors->first('name') }}</span>
                                    @endif
                                    </div>
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Phone Number</label>
                                        <input  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                        type = "number"
                                        maxlength = "11" class="form-control form-control-sm" id="text" data-parsley-length="[11, 11]" name="phone" placeholder="Phone Number" required>

                                        @if ($errors->has('phone'))
                                      <span class="text-danger">{{ $errors->first('phone') }}</span>
                                  @endif
                                    </div>
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Customer Email</label>
                                        <input type="text" class="form-control form-control-sm" data-parsley-maxlength="100" id="email" name="email" placeholder="Email" >

                                        @if ($errors->has('email'))
                                      <span class="text-danger">{{ $errors->first('email') }}</span>
                                  @endif
                                    </div>
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Address</label>
                                        <input type="text" name="address" class="form-control" placeholder="Address" >
                                    </div>


                                    <input type="hidden" name="type" value="Regular" class="form-control" placeholder="Address" required>
                                    <input type="hidden" name="reward_point" value="No" class="form-control" placeholder="Address" required>






                                    {{-- <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Customer Type</label>
                                        <select name="type" required class="select2 form-control ms-0 wide">
                                            <option value="">Choose...</option>

                                            <option value="Regular">Regular</option>
                                            <option value="Premium">Premium</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Reward Point Availabe?</label>
                                        <select name="reward_point" required class="select2 form-control ms-0 wide">
                                            <option value="">Choose...</option>

                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div> --}}



                            </div>
                        </div>
                    </div>

                    {{-- <div class="col-lg-6 col-sm-12">
                        <div class="box">
                            <div class="box-body">
                                <div class="category_demo text-start">
                                    <img id="blahone" src="{{ asset('/') }}public/admin/assets/images/progga_images/demo_product/img2.jpg" alt=""
                                         class="mb-15">
                                    <div class="mb-3">
                                        <label class="form-label">Customer Images</label>
                                        <small class="text-danger"> * (Ratio 1:1)</small>
                                        <input class="form-control" name="employee_image" accept="image/*" type='file' id="imgInpone" required/>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> --}}

                </div>
                <div class="form-actions mt-10">
                    <button id="saveButton" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
                </div>
            </form>
            </div>
            <div class="modal-footer">
                {{-- <button type="button" class="btn btn-primary"><i class="fa fa-cart-plus"></i> Add</button> --}}
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<!-- modal related to product end --->
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
