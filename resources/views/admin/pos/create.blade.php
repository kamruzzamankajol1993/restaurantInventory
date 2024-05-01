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
                                <select class="form-control select2"
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
                                    <input type="search" class="form-control" placeholder="Search"
                                           aria-label="Search" aria-describedby="button-addon2">
                                    <div class="input-group-append">
                                        <button class="btn" type="submit" id="button-addon3"><i
                                                    class="ti-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 mt-4">
                                <div class="card-body">
                                    <div class="row">

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

                                        <div id="myModal{{ $key+1 }}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-lg-5">
                                                                <img height="200" src="{{ asset('/') }}{{ $productLists->product_image }}" alt="">
                                                            </div>
                                                            <div class="col-lg-7">
                                                                <h1>{{ $productLists->product_name }}</h1>
                                                                <h5>{{ $productLists->default_price }} Taka</h5>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <h3>Description</h3>
                                                                <p>{{ $productLists->product_short_description }}</p>

                                                                @if (isset($productLists->variations))
                        @foreach (json_decode($productLists->variations,true) as $key_choice_options=>$item)
                            @if (isset($item["price"]))
                                @break
                            @else
                                                                <div class="mt-5">

@if($item['required'] == 'on')
                                                                    <h3>{{ $item['name'] }} <span class="text-danger">(Required)</span></h3>
                                                                    <p>You need to select minimum {{ $item['min'] }} To maximum {{ $item['max'] }} Options </p>
@else
<h3>{{ $item['name'] }}</h3>


@endif

                                                                    <ul>
                                                                        @if (isset($item['values']))
                                                                        @foreach ($item['values'] as $key_value => $value)
                                                                        <li>
                                                                            <div class="d-flex justify-content-between">
                                                                                <div class="demo-checkbox">
                                                                                    <input type="checkbox" id="basic_checkbox_{{ $key_value }}"/>
                                                                                    <label for="basic_checkbox_{{ $key_value }}">{{ $value['label'] }}</label>
                                                                                </div>
                                                                                <p>{{ $value['optionPrice'] }} Taka</p>
                                                                            </div>
                                                                        </li>
                                                                        @endforeach
                                                                        @endif

                                                                    </ul>
                                                                    <table class="table table-borderless">
                                                                        <tr>
                                                                            <td>
                                                                                <h3>Quantity:</h3>
                                                                            </td>
                                                                            <td class="text-end" style="width:25%">
                                                                                <div class="input-group">
                                              <span class="input-group-btn">
                                                  <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="quant[2]">
                                                    <span class="glyphicon glyphicon-minus"></span>
                                                  </button>
                                              </span>
                                                                                    <input type="text" name="quant[2]" class="form-control input-number"
                                                                                           value="10" min="1" max="100">
                                                                                    <span class="input-group-btn">
                                                  <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="quant[2]">
                                                      <span class="glyphicon glyphicon-plus"></span>
                                                  </button>
                                              </span>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
@endif
@endforeach
@endif

                                                                <h3>Addon</h3>
                                                                <ul>

                                                                    @foreach(json_decode($productLists['product_add_on'],true) as $key=>$addOnId)
                                                                    <li>
                                                                        <div class="d-flex justify-content-between">
                                                                            <div class="demo-checkbox">
                                                                                <input type="checkbox" id="basic_checkbox_{{ $key+6000 }}"/>
                                                                                <label for="basic_checkbox_{{ $key+6000 }}">{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('name')  }}</label>
                                                                            </div>
                                                                            <p>{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('price')  }} Taka</p>
                                                                        </div>
                                                                    </li>
                                                                    @endforeach

                                                                </ul>
                                                                <h2>Total Amount: <span class="text-success text-bold">0 Taka</span></h2>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary"><i class="fa fa-cart-plus"></i> Add</button>
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>

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
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="form-group">
                                <select class="form-control select2"
                                        data-placeholder="Select a State"
                                        style="width: 100%;">
                                    <option>Select Customer</option>
                                    @foreach($customerList as $customerLists)
                                    <option  value="{{ $customerLists->id }}">{{ $customerLists->name }}</option>
                                     @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <button class="btn btn-primary-light" data-bs-toggle="modal" data-bs-target="#myModalw"><i class="fa fa-plus"></i> Add Customer
                            </button>
                        </div>
                        <div class="col-lg-12 ">
                            <div class="form-group">
                                <select class="form-control" name="" id="">
                                    <option value="">Select Branch</option>
                                    <option value="">Dhaka</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <select class="form-control" name="" id="">
                                    <option value="">Select Order Type</option>
                                    <option value="">Take Away</option>
                                    <option value="">Dine In</option>
                                    <option value="">Home Delivery</option>
                                </select>
                            </div>
                        </div>
                        <?php

                          $waiterList = App\Models\Admin::where('designation_list_id',4)->get();

                        ?>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <select class="form-control" name="" id="">
                                    <option value="">Select Waiter</option>
                                    @foreach($waiterList as $waiterLists)
                                    <option value="{{ $waiterLists->admin_name }}">{{ $waiterLists->admin_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-12 mt-4">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Item</th>
                                    <th>QTY</th>
                                    <th>Price</th>
                                    <th>Action</th>
                                </tr>
                                {{-- <tr>
                                    <td>
                                        <img src="../images/food/dish-1.png" height="30" width="30" alt="">
                                        Burger
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" placeholder="1">
                                    </td>
                                    <td>
                                        230 Taka
                                    </td>
                                    <td>
                                        <a href="javascript:void(0)" class="text-info me-10"
                                           data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                            <i class="fa fa-trash"></i>
                                        </a>
                                    </td>
                                </tr> --}}
                            </table>
                        </div>
                        <div class="col-lg-12 mt-2">
                            <table class="table table-borderless">
                                <tr>
                                    <td>Addon</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr>
                                    <td>Subtotal</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr>
                                    <td>Product Discount</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr>
                                    <td>Extra Discount :</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr>
                                    <td>VAT/TAX:</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr>
                                    <td>Delivery Charge :</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                                <tr style="border-top: 1px solid black">
                                    <td>Total</td>
                                    <td style="text-align:right">:</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-6 mt-4">
                            <button type="button"
                                    class="waves-effect waves-light btn mb-5 bg-gradient-primary">Cancel
                                Order
                            </button>
                        </div>
                        <div class="col-lg-6 mt-4">
                            <button type="button"
                                    class="btn-block waves-effect waves-green btn mb-5 bg-gradient-primary">
                                Submit Order
                            </button>
                        </div>
                    </div>
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
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation" action="{{ route('customer.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf

                    <input type="hidden" class="form-control" id="b" name="bt" value="23" placeholder="Name" >
                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <div class="box">
                            <div class="box-body">
                                <div class="progress" style="display: none;">
                                    <div class="bar"></div >
                                    <div class="percent">0%</div >
                                </div>

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
                                        <input type="text" class="form-control form-control-sm" data-parsley-maxlength="100" id="email" name="email" placeholder="Email" required>

                                        @if ($errors->has('email'))
                                      <span class="text-danger">{{ $errors->first('email') }}</span>
                                  @endif
                                    </div>
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Address</label>
                                        <input type="text" name="address" class="form-control" placeholder="Address" required>
                                    </div>


                                    <div class="form-group">
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
                                    </div>



                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-sm-12">
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

                    </div>

                </div>
                <div class="form-actions mt-10">
                    <button type="submit" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
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

@endsection
