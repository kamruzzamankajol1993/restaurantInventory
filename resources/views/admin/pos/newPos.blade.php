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

    <title>Pos</title>

    <!-- Vendors Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/vendors_css.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <!-- Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/style.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/skin_color.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                                    <h5>POS</h5>
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
                    <div class="col-8">
                        <div class="box">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!-- Nav tabs -->
                                <div class="vtabs customvtab">
                                    <ul class="nav nav-tabs tabs-vertical" role="tablist">

                                                                                <li class="nav-item">
                                            <a class="nav-link active" data-bs-toggle="tab"
                                               href="#homeall" role="tab" aria-expanded="true">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    All Dishes
                                                </div>

                                            </a>
                                        </li>

                                        @foreach($foodTypeList as $key=>$foodTypeLists)
                                        @if($key == 0)
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab"
                                               href="#home{{ $key+1 }}" role="tab" aria-expanded="false">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    {{ $foodTypeLists->category_name }}
                                                </div>

                                            </a>
                                        </li>
                                        @else
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab" href="#profile{{ $key+1 }}"
                                               role="tab" aria-expanded="false">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    {{ $foodTypeLists->category_name }}
                                                </div>
                                            </a>
                                        </li>
                                        @endif
                                        @endforeach

                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">

                                         <div class="tab-pane active" id="homeall" role="tabpanel" aria-expanded="true">
                                            <div class="ps-20">
                                                <div class="row">
                                                    <div class="col-12 mb-5">

                                                        <h3>Search The Product</h3>
                                                        <div class="search-bx">
                                                            <form>
                                                                <div class="input-group">
                                                                    <input type="search" id="0" class="form-control posProductSearch"
                                                                           placeholder="Search" aria-label="Search"
                                                                           aria-describedby="button-addon2">
                                                                    <div class="input-group-append">
                                                                        <button class="btn" type="submit"
                                                                                id="button-addon3"><i
                                                                                    class="ti-search"></i></button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                      <?php

                                        $productListAll = \App\Models\Product::latest()->get();

                                        ?>
                                                <div class="row mt-20"  id="searchResultPos0">
                                                    @foreach($productListAll as $productLists)
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModalall{{ $productLists->id }}">
                                                                <img class="card-img-top"
                                                                     src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h6 class="card-title">{{ $productLists->product_name}}</h6>
<h6 class="card-title">{{ $productLists->chinese_name}}</h6>
                                                                    <?php

                                                                    $inventoryIdList =  DB::table('assaign_quantiys')
                                                                    ->where('product_id',$productLists->id)->get();


                                                                    ?>
                                                                    <p class="card-text">
@foreach($inventoryIdList as $key=>$inventoryIdLists)
<?php
$inventoryName = DB::table('inventories')
->where('id',$inventoryIdLists->inventory_id)->value('name_id');

$inventoryNameMain = DB::table('inventory_names')
->where('id',$inventoryName)->value('name');

?>
@if(count($inventoryIdList) == 1)
{{ $inventoryNameMain }}
@else

@if(count($inventoryIdList) == ($key+1))
                {{ $inventoryNameMain }}
                @else
                {{ $inventoryNameMain }},
                @endif
                @endif
                @endforeach

                                                                    </p>
                                                                    <h6 class="pos_price" style="font-size:15px !important;">{{ $productLists->default_price }} Taka</h6>
                                                                </div>
                                                            </a>
                                                             <!-- modal related to product start --->

                                       @include('admin.pos.partial.newProductModalall')

                                       <!-- modal related to product end --->
                                                        </div>
                                                    </div>
                                                    @endforeach


                                                </div>
                                            </div>
                                        </div>
                                        @foreach($foodTypeList as $key=>$foodTypeLists)
                                        <?php

                                        $productList = \App\Models\Product::where('main_type',$foodTypeLists->id)->latest()->get();

                                        ?>
                                        @if($key == 0)
                                        <div class="tab-pane" id="home{{ $key+1 }}" role="tabpanel" aria-expanded="false">
                                            <div class="ps-20">
                                                <div class="row">
                                                    <div class="col-12 mb-5">

                                                        <h3>Search The Product</h3>
                                                        <div class="search-bx">
                                                            <form>
                                                                <div class="input-group">
                                                                    <input type="search" id="{{ $foodTypeLists->id }}" class="form-control posProductSearch"
                                                                           placeholder="Search" aria-label="Search"
                                                                           aria-describedby="button-addon2">
                                                                    <div class="input-group-append">
                                                                        <button class="btn" type="submit"
                                                                                id="button-addon3"><i
                                                                                    class="ti-search"></i></button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mt-20"  id="searchResultPos{{ $foodTypeLists->id }}">
                                                    @foreach($productList as $productLists)
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModal{{ $productLists->id }}">
                                                                <img class="card-img-top"
                                                                     src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h6 class="card-title">{{ $productLists->product_name}}</h6>
<h6 class="card-title">{{ $productLists->chinese_name}}</h6>
                                                                    <?php

                                                                    $inventoryIdList =  DB::table('assaign_quantiys')
                                                                    ->where('product_id',$productLists->id)->get();


                                                                    ?>
                                                                    <p class="card-text">
@foreach($inventoryIdList as $key=>$inventoryIdLists)
<?php
$inventoryName = DB::table('inventories')
->where('id',$inventoryIdLists->inventory_id)->value('name_id');

$inventoryNameMain = DB::table('inventory_names')
->where('id',$inventoryName)->value('name');

?>
@if(count($inventoryIdList) == 1)
{{ $inventoryNameMain }}
@else

@if(count($inventoryIdList) == ($key+1))
                {{ $inventoryNameMain }}
                @else
                {{ $inventoryNameMain }},
                @endif
                @endif
                @endforeach

                                                                    </p>
                                                                    <h6 class="pos_price" style="font-size:15px !important;">{{ $productLists->default_price }} Taka</h6>
                                                                </div>
                                                            </a>
                                                             <!-- modal related to product start --->

                                       @include('admin.pos.partial.newProductModal')

                                       <!-- modal related to product end --->
                                                        </div>
                                                    </div>
                                                    @endforeach


                                                </div>
                                            </div>
                                        </div>
                                        @else
                                        <div class="tab-pane" id="profile{{ $key+1 }}" role="tabpanel" aria-expanded="false">
                                            <div class="ps-20">
                                                <div class="row">
                                                    <div class="col-12 mb-5">

                                                        <h3>Search The Product</h3>
                                                        <div class="search-bx">
                                                            <form>
                                                                <div class="input-group">
                                                                    <input type="search" id="{{ $foodTypeLists->id }}" class="form-control posProductSearch"
                                                                           placeholder="Search" aria-label="Search"
                                                                           aria-describedby="button-addon2">
                                                                    <div class="input-group-append">
                                                                        <button class="btn" type="submit"
                                                                                id="button-addon3"><i
                                                                                    class="ti-search"></i></button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mt-20"  id="searchResultPos{{ $foodTypeLists->id }}">
                                                    @foreach($productList as $productLists)
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModal{{ $productLists->id }}">
                                                                <img class="card-img-top"
                                                                     src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h6 class="card-title">{{ $productLists->product_name}}</h6>
                                                                    <h6 class="card-title">{{ $productLists->chinese_name}}</h6>
                                                                    <?php

                                                                    $inventoryIdList =  DB::table('assaign_quantiys')
                                                                    ->where('product_id',$productLists->id)->get();


                                                                    ?>
                                                                    <p class="card-text">
@foreach($inventoryIdList as $key=>$inventoryIdLists)
<?php
$inventoryName = DB::table('inventories')
->where('id',$inventoryIdLists->inventory_id)->value('name_id');

$inventoryNameMain = DB::table('inventory_names')
->where('id',$inventoryName)->value('name');

?>
@if(count($inventoryIdList) == 1)
{{ $inventoryNameMain }}
@else

@if(count($inventoryIdList) == ($key+1))
                {{ $inventoryNameMain }}
                @else
                {{ $inventoryNameMain }},
                @endif
                @endif
                @endforeach

                                                                    </p>
                                                                    <h6 class="pos_price" style="font-size:15px !important;">{{ $productLists->default_price }} Taka</h6>
                                                                </div>
                                                            </a>


                                                        </div>
                                                         <!-- modal related to product start --->

                                       @include('admin.pos.partial.newProductModal')

                                       <!-- modal related to product end --->
                                                    </div>
                                                    @endforeach


                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <div class="col-4">

                        <?php


$customerList = \App\Models\Customer::latest()->get();



                    ?>

                        <div class="card">
                            <div class="card-body">
                                <form class="custom-validation" action="{{ route('newPosDataInsert') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                    @csrf
                                    @include('flash_message')
                                <div class="pos-sidebar">
                                    <div class="pos-sidebar-product">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <select class="form-control select2"
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
                                            <div class="col-lg-6">
                                                <a class="btn btn-primary-light" data-bs-toggle="modal" data-bs-target="#myModalw"><i class="fa fa-plus"></i> Add Customer
                                                </a>
                                            </div>
                                            @if(Route::is('addOrderToTable') )
                                            <input name="table_id" value="{{ $tableId }}" class="form-control" type="hidden"/>
                                            @else
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <select class="form-control" name="table_id" id="" required>
                                                        <option value="">Select Table</option>
                                                        @foreach($tableList as $key=>$tableLists)
                                                        <option value="{{ $tableLists->id }}">{{ $tableLists->name }}</option>
                                                       @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            @endif
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
                                          <div class="row" id="ajaxDataForCart">
                                            <?php
                                            $cartContent = \Cart::getContent();

                                                                            ?>
                                                                             <?php

                                                                             $totalAddOnPrice = 0;
                                                                             $totalVariationPrice = 0;
                                                                             $totalProductDiscount = 0;
                                                                             $totalProductTax = 0;
                                                                             $totalFinalCostOne=0;

                                                                             ?>
                                            <div class="col-lg-12">
                                                @foreach($cartContent as $productInfoCArt)
                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="{{ asset('/') }}{{ $productInfoCArt->attributes->image }}" alt="">
                                                            <div class="pos-product-text">
                                                                <p>{{ $productInfoCArt->name }}</p>
                                                                <p>{{ $productInfoCArt->price }} Taka</p>
                                                                <div class="d-flex p">


                                                                    <a href="#" id="btn-minusone{{ $productInfoCArt->id }}" class="btn btn-primary btn-sm me-5 btn-minusone" data-type="minus" data-field="quant[2]"><i class="fa fa-minus"></i></a>


                                                                    <input type="text" value="{{ $productInfoCArt->quantity }}" min="1" max="100"  name="quant[2]" id="updateCartQuantity{{ $productInfoCArt->id }}" class="quantityResultone custom-form"
                                                                          >

                                                                    <a href="#" class="btn btn-primary btn-sm ms-5 btn-plusone" id="btn-plusone{{ $productInfoCArt->id }}" data-type="plus" data-field="quant[2]"><i class="fa fa-plus"></i></a>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="p-2 flex-fill text-end">
                                                        <a id="singleItemDelete{{ $productInfoCArt->id  }}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>
                                                <hr>
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
                                                 <input type="hidden" class="pPriceAjaxm{{ $productInfoCArt->id }}" name="price" value="{{ $productInfoCArt->price }}">
                                                @endforeach

                                            </div>
                                          </div>
                                        </div>
                                    </div>
                                    <div class="pos-sidebar-button" >
                                        <table class="custom-table" id="hidem">
                                            <tbody>
                                            <tr>
                                                <td>Subtotal</td>
                                                <td class="text-end"><span id="t2s">{{ $totalFinalCostOne }}</span>
                                                    <input type="hidden" name="vatTAx" value="{{ $totalProductTax  }}" id="vatTax"/>
                                                    <input type="hidden" name="addOn" value="{{ $totalAddOnPrice  }}" id="addOn"/>
                                                    <input type="hidden" name="discount" value="{{ $totalProductDiscount  }}" id="discount"/>
                                                    <input type="hidden" name="subTotal" value="{{ $totalFinalCostOne }}" id="subTotal"/></td>
                                            </tr>
                                            {{-- <tr>
                                                <td>Discount</td>
                                                <td class="text-end"></td>
                                            </tr> --}}
                                            </tbody>
                                            <tfoot style="border-top: 1px solid black">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="text-end"> <span id="t2">
                                                        {{ ($totalFinalCostOne  )   }}
                                                        </span>
                                                        <input name="extra_Discount" id="extraDiscount" value="0" class="form-control" type="hidden"/>
                                                        <input type="hidden" name="total" value="{{$totalFinalCostOne}}" id="total"/></td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <div class="row mt-3">
                                            @if(count($cartContent) == 0)

                                            @else
                                            <div class="col-lg-6">
                                                <button type="button" id="clearAllCartData"
                                                        class="waves-effect waves-light btn mb-5 bg-gradient-primary">Cancel
                                                    Order
                                                </button>
                                            </div>
                                            @endif
                                            <div class="col-lg-6">
                                                <button class="btn btn-primary" type="submit"><i
                                                            class="fa fa-cart-plus"></i> Send To Kitchen
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            @include('admin.pos.partial.ajaxModal')

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

<!--*******************
Chat Section  end
********************-->


<!-- Vendor JS -->
<script src="{{ asset('/') }}public/admin/assets/js/vendors.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/chat-popup.js"></script>

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

$(document).on('keyup', '.posProductSearch', function () {

var productSearch = $(this).val();
var productSearchId = $(this).attr('id');


    $.ajax({
url: "{{ route('posProductSearch') }}",
method: 'get',
data: {productSearch:productSearch,productSearchId:productSearchId},
beforeSend: function(){
    $('.ajax-loader').show()
},
complete: function(){
    $('.ajax-loader').hide()
},
success: function(data) {

    $('#searchResultPos'+productSearchId).html('');
    $('#searchResultPos'+productSearchId).html(data);

}
});

});



</script>

</body>

</html>
