@extends('admin.master.master')

@section('title')
Product Add
@endsection


@section('css')

@endsection

@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Product Add</h4>
        </div>

    </div>
</div>

<section class="content">
    <form class="custom-validation" action="{{ route('productList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
        @csrf
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <div class="box">
                <div class="box-body">

                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Product Name <span style="color:red;">*</span></label>
                            <input type="text" name="product_name" class="form-control" placeholder="Name" >
                        </div>

                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Product Name(Chinese) <span style="color:red;">*</span></label>
                            <input type="text" name="chinese_name" class="form-control" placeholder="Name" >
                        </div>

                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Short Description <span style="color:red;">*</span></label>
                            <textarea class="form-control" name="product_short_description"  id="" cols="30" rows="7"></textarea>
                        </div>

                </div>
            </div>
        </div>
        <div class="col-lg-6 col-sm-12">
            <div class="box">
                <div class="box-body">
                    <div class="category_demo text-start">
                        <img id ="blah" src="{{ asset('/') }}public/admin/assets/images/progga_images/demo_product/img2.jpg" alt=""
                             class="mb-15">
                        <div class="mb-3">
                            <label class="form-label">Product Images <span style="color:red;">*</span></label>
                            <small class="text-danger"> * (Ratio 1:1)</small>
                            <input name="product_image"  class="form-control" accept="image/*" type='file' id="imgInp">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-sticky-note me-15"></i> Category
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Category <span style="color:red;">*</span></label>
                                <select name="category_id"  id="category_id" class="form-control select2" style="width: 100%;">
                                    <option value="">--please select --</option>
                                    @foreach($categoryList as $categoryLists)
                                    <option value="{{ $categoryLists->id }}">{{ $categoryLists->category_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Sub Category </label>
                                <select name="subcategory_id" id="subcategory_id" class="form-control select2" style="width: 100%;">
                                    <option value="">--please select --</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Item Type <span style="color:red;">*</span> </label>
                                <select name="item_type" class="form-control select2"  style="width: 100%;">
                                    <option value="">Select One</option>

                                    <option value="Set Menu">Set Menu</option>
                                    <option value="Single">Single</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Product Type <span style="color:red;">*</span></label>
                                <select name="product_type" class="form-control select2"  style="width: 100%;">
                                    {{-- <option selected="selected">Select One</option>
                                    <option>Vegetable</option>
                                    <option>Non Vegetable</option> --}}

                                    <option value="">Select One</option>
                                    <option value="Vegetable">Vegetable</option>
                                    <option value="Non Vegetable">Non Vegetable</option>


                                </select>
                            </div>
                        </div>


                        <div class="col-lg-12 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Type <span style="color:red;">*</span></label>
                                <select name="main_type" class="form-control select2"  style="width: 100%;">
                                    {{-- <option selected="selected">Select One</option>
                                    <option>Vegetable</option>
                                    <option>Non Vegetable</option> --}}

                                    <option value="">Select One</option>
                                    @foreach($foodTypeList as $foodTypeLists)
                                    <option value="{{ $foodTypeLists->id }}">{{ $foodTypeLists->category_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>

        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-clock-o me-15"></i> Availability
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label" for="">Turning visibility off will
                                    not show this product in the user app and website <span style="color:red;">*</span></label>
                                <select class="form-control"  name="available_status" id="">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="bootstrap-timepicker">
                                <div class="form-group">
                                    <label class="form-label">Available Time: <span style="color:red;">*</span></label>

                                    <div class="input-group">
                                        <input type="text"  name="available_time" class="form-control timepicker">

                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="bootstrap-timepicker">
                                <div class="form-group">
                                    <label class="form-label">Available Till: <span style="color:red;">*</span></label>

                                    <div class="input-group">
                                        <input type="text"  name="available_till" class="form-control timepicker">

                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-sm-12">
                            <div class="bootstrap-timepicker">
                                <div class="form-group">
                                    <label class="form-label">Approximate Time(minute): <span style="color:red;">*</span></label>

                                    <div class="input-group">
                                        <input type="number"  name="approximate_time" class="form-control">

                                        <div class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </div>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-money me-15"></i> Price Information
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12 col-sm-12">
                            <div class="form-group">
                                <label class="form-label">Default Price <span style="color:red;">*</span></label>
                                <div class="input-group mb-3">
                                    <span class="input-group-text"><i class="ti-money"></i></span>
                                    <input type="text"  name="default_price" class="form-control" placeholder="Price">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Discount Type <span style="color:red;">*</span></label>
                                <select class="form-control"  name="discount_type" id="">
                                    <option value="">--Select--</option>
                                    <option value="Percentage">Percentage</option>
                                    <option value="Amount">Amount</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Discount <span style="color:red;">*</span></label>
                                <input type="number"  name="discount_price" class="form-control" placeholder="Ex: 5%">
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Tax Type <span style="color:red;">*</span></label>
                                <select class="form-control"  name="tax_type" id="">
                                    <option value="">--Select--</option>
                                    <option value="Percentage">Percentage</option>
                                    <option value="Amount">Amount</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Tax Rate <span style="color:red;">*</span></label>
                                <input type="number"  name="tax_rate" class="form-control" placeholder="Ex: 100 Taka">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-puzzle-piece me-15"></i> Addons & Stocks
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Select Addons <span style="color:red;">*</span></label>
                                <select name="product_add_on[]"  class="form-control select2" multiple="multiple"
                                        data-placeholder="Select a Addons"
                                        style="width: 100%;">
                                        @foreach($productAddOnList as $productAddOnLists)
                                    <option value="{{ $productAddOnLists->id }}">{{ $productAddOnLists->name }}</option>
                                    @endforeach

                                </select>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Product Stock <span style="color:red;">*</span></label>
                                <select class="form-control"  name="product_stock_type" id="stock_type">
                                    <option value="fixed">Fixed</option>
                                    <option value="daily">Daily</option>
                                    <option value="Unlimited">Unlimited</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12" id="product_stock_div">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Product Stock</label>
                                <input type="number"  name="product_stock_quantity" class="form-control" placeholder="Ex: 10">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- inventory start --->
        <div class="col-md-12">


            <div class="card mt-3">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-puzzle-piece me-15"></i> Product Inventory
                    </h4>
                </div>
                <div class="card-body pb-0">

                    <div class="mb-3 col-lg-12">
                        <table class="table table-light" id="dynamicAddRemove">
                            <tr>
                                <th>Name<span
                                    class="text-danger">*</span></th>
                                <th>Quantity<span
                                    class="text-danger">*</span></th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>

                                    <select id="m0" name="inventory_id[]"
                                           class="form-control inventoryId" >
                                           <option value="">--Select--</option>
                                           @foreach($inventoryList as $inventoryLists)
                                           <?php

                                                 $unitId = \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('unit_id')
                                                 ?>
                                           <option data-lid="0" data-unit="{{ \App\Models\Unit::where('id',$unitId)->value('unit_name') }}" data-mid="{{ $inventoryLists->id }}" data-quantity="{{ \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('quantity') }}" value="{{ $inventoryLists->id }}">{{ \App\Models\InventoryName::where('id',$inventoryLists->name_id)->value('name') }}</option>
                                           @endforeach
                                    </select>
                                    <div id="avq0"></div>
                                </td>
                                <td>
                                    <input type="text" data-qid="0" name="product_quantity[]"
                                           class="form-control productQuantity" />
                                </td>
                                <td><button type="button" name="add" id="dynamic-ar" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>
                                </button></td>
                            </tr>
                        </table>

                    </div>

                </div>
            </div>

        </div>

<!-- inventory end -->

        <div class="col-lg-12 col-sm-12">

            <!-- code from 6 am start -->


            <div class="card mt-3">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-puzzle-piece me-15"></i> Product Variations
                    </h4>
                </div>
                <div class="card-body pb-0">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="add_new_option">
                            </div>
                            <br>
                            <div class="">
                                <a class="btn btn-success"
                                   id="add_new_option_button">Add New Variation</a>
                            </div>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>



            <!-- code from 6 am end -->

            <!-- old code  start-->
            {{-- <div class="card">
                <div class="card-header">
                    <h4 class="box-title text-info mb-0"><i class="fa fa-puzzle-piece me-15"></i> Product Variations
                    </h4>
                </div>
                <div class="card-body">
                    <div class="card">
                        <div class="card-header">
                            Add New
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Name</label>
                                        <input type="text" class="form-control" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <label class="fw-700 fs-16 form-label">Selection Type</label>
                                    <div class="row">
                                        <div class="col-6">
                                            <input name="group1" type="radio" id="radio_1" checked />
                                            <label for="radio_1">Single</label>
                                        </div>
                                        <div class="col-6">
                                            <input name="group1" type="radio" id="radio_2" />
                                            <label for="radio_2">Multiple</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Min</label>
                                        <input type="text" class="form-control" placeholder="min ">
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Max</label>
                                        <input type="text" class="form-control" placeholder="max">
                                    </div>
                                </div>
                                <div class="col-lg-1">
                                    <label for="" class="fw-700 fs-16 form-label">?</label>
                                    <div class="checkbox checkbox-success">
                                        <input id="checkbox1" type="checkbox">
                                        <label for="checkbox1">  </label>
                                    </div>
                                </div>
                                <div class="col-lg-1">
                                    <br>
                                    <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                </div>
                            </div>
                            <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label class="fw-700 fs-16 form-label">Option Name</label>
                                            <input type="text" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <label class="fw-700 fs-16 form-label">Additional Price</label>
                                            <input type="text" class="form-control" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-danger me-1">
                                    <i class="ti-plus"></i> Add New Option
                                </button>
                            </div>
                            </div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success me-1">
                        <i class="ti-plus"></i> Add New Variations
                    </button>
                </div>
            </div> --}}

            <!-- old code end -->
        </div>


    </div>

    <div class="form-actions mt-10">
        <button type="submit" id="finalSubmitButton" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
    </div>
</form>
</section>
@endsection

@section('script')
<script>

    //priority status  code


    $(document).on('change', '.inventoryId', function () {

        var name_id = $(this).find(':selected').val();
        var id =   $(this).find(':selected').data('mid');
        var lid =   $(this).find(':selected').data('lid');
        var unit =   $(this).find(':selected').data('unit');
        var quantity =   $(this).find(':selected').data('quantity');

        $('#avq'+lid).html('Available Quantity: '+ quantity + ' '+unit );


        // $.ajax({
        // url: "{{ route('getInventoryInfo') }}",
        // method: 'get',
        // data: {name_id:name_id,id:id,unit:unit,quantity:quantity},
        // beforeSend: function(){
        // $('#loader').show()
        // },
        // complete: function(){
        // $('#loader').hide()
        // },
        // success: function(data) {

        // alertify.set('notifier','position','top-center');
        // alertify.success('Prioriry Updated SuccessFully');
        // location.reload(true);


        // }
        // });

    });
    $(document).on('keyup', '.productQuantity', function () {
        var id =   $(this).data('qid');
        var quantity = $('#m'+id).find(':selected').data('quantity');

        if( $(this).val() > quantity){

            alertify.alert('Error', 'Quantity Not Available!', function(){ alertify.success('Ok'); });

            $('#finalSubmitButton').hide();

        }else{

            $('#finalSubmitButton').show();

        }

        //alert(quantity);
    });
    </script>
<script>
    var i = 0;
    $("#dynamic-ar").click(function () {
        ++i;
        $("#dynamicAddRemove").append('<tr>' +
            '<td>' +
            '<select id="m'+i+'" name="inventory_id[]" class="form-control inventoryId" ><option value="">--Select--</option>@foreach($inventoryList as $inventoryLists)<?php $unitId = \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('unit_id')?><option data-lid="'+i+'" data-unit="{{ \App\Models\Unit::where('id',$unitId)->value('unit_name') }}" data-mid="{{ $inventoryLists->id }}" data-quantity="{{ \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('quantity') }}" value="{{ $inventoryLists->id }}">{{ \App\Models\InventoryName::where('id',$inventoryLists->name_id)->value('name') }}</option>@endforeach</select><div id="avq'+i+'"></div>' +
            '</td>' +
            '<td>' +
            '<input type="text" data-qid="'+i+'" name="product_quantity[]" class="form-control productQuantity" />' +
            '</td>' +
            '<td>' +
            '<button type="button" class="btn btn-danger btn-sm remove-input-field"><i class="fa fa-trash"></i></button>' +
            '</td>' +
            '</tr>'
        );
    });
    $(document).on('click', '.remove-input-field', function () {
        $(this).parents('tr').remove();
    });
</script>
<script>
    $("#stock_type").change(function(){
            if(this.value === 'daily' || this.value === 'fixed') {
               $("#product_stock_div").show()
            }
            else {
                $("#product_stock_div").hide()
            }
        });
</script>
<script>

        $(document).on('change', '#category_id', function () {

            var value = $(this).find(':selected').val();


                $.ajax({
            url: "{{ route('getSubCategoryId') }}",
            method: 'get',
            data: {value:value},
            beforeSend: function(){
                $('#loader').show()
            },
            complete: function(){
                $('#loader').hide()
            },
            success: function(data) {


                $('#subcategory_id').html('');
                $('#subcategory_id').html(data);
                alertify.set('notifier','position','top-center');
                alertify.success('SubCategory Viewed');
                //location.reload(true);


            }
            });

    });

    </script>
<script>
    var count = 0;
    $(document).ready(function() {

        $("#add_new_option_button").click(function(e) {
            count++;
            var add_option_view = `
                <div class="card view_new_option mb-2" >
                    <div class="card-header">
                        <label for="" id=new_option_name_` + count + `> Add New</label>
                    </div>
                    <div class="card-body">
                        <div class="row g-2">
                            <div class="col-lg-3 col-md-6">
                                <label for="" class="fw-700 fs-16 form-label">Name</label>
                                <input  name=options[` + count + `][name] class="form-control" type="text"
                                    onkeyup="new_option_name(this.value,` + count + `)">
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <label class="fw-700 fs-16 form-label">Selection Type</label>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <input type="radio" value="single" name="options[` + count + `][type]" id="stype` + count +`" onchange="hide_min_max(` + count + `)" checked />
                                                        <label for="stype` + count +`">Single</label>
                                                    </div>
                                                    <div class="col-6">
                                                        <input type="radio" value="multi" name="options[` + count + `][type]" id="type` + count +`" checked onchange="show_min_max(` + count + `)"" />
                                                        <label for="type` + count +`">Multiple</label>
                                                    </div>
                                                </div>


                            </div>
                            <div class="col-12 col-lg-6">
                                <div class="row g-2">
                                    <div class="col-sm-6 col-md-4">
                                        <label for="" class="fw-700 fs-16 form-label">Min</label>
                                        <input id="min_max1_` + count + `"   name="options[` + count + `][min]" class="form-control" type="number" min="1">
                                    </div>
                                    <div class="col-sm-6 col-md-4">
                                        <label for="" class="fw-700 fs-16 form-label">Max</label>
                                        <input id="min_max2_` + count + `"    name="options[` + count + `][max]" class="form-control" type="number" min="1">
                                    </div>

                                    <div class="col-md-4">


<br>
                                        <label class="d-md-block d-none">&nbsp;</label>
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="checkbox checkbox-success">
                                        <input id="options[` + count + `][]" name="options[` + count + `][]" type="checkbox">
                                        <label for="options[` + count + `][]" class="fw-700 fs-16 form-label"> ?</label>
                                    </div>
                                    <div>
                                        <button type="button" class="btn btn-danger btn-sm delete_input_button" onclick="removeOption(this)"title="Delete">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="option_price_` + count + `" >
                    <div class="border rounded p-3 pb-0 mt-3">
                        <div  id="option_price_view_` + count + `">
                            <div class="row g-3 add_new_view_row_class mb-3">
                                <div class="col-md-4 col-sm-6">
                                    <label for="" class="fw-700 fs-16 form-label">Option Name</label>
                                    <input class="form-control"  type="text" name="options[` + count +`][values][0][label]" id="">
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <label for="" class="fw-700 fs-16 form-label">Additional Price</label>
                                    <input class="form-control"  type="number" min="0" step="0.01" name="options[` + count + `][values][0][optionPrice]" id="">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3 p-3 mr-1 d-flex "  id="add_new_button_` + count + `">
                            <button type="button" class="btn btn-danger" onclick="add_new_row_button(` +
                                count + `)" >Add New Option
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>`;

        $("#add_new_option").append(add_option_view);
        });
    });

    function show_min_max(data) {
        $('#min_max1_' + data).removeAttr("readonly");
        $('#min_max2_' + data).removeAttr("readonly");
        // $('#min_max1_' + data).attr("", "true");
        // $('#min_max2_' + data).attr("", "true");
    }

    function hide_min_max(data) {
        $('#min_max1_' + data).val(null).trigger('change');
        $('#min_max2_' + data).val(null).trigger('change');
        $('#min_max1_' + data).attr("readonly", "true");
        $('#min_max2_' + data).attr("readonly", "true");
        // $('#min_max1_' + data).attr("", "false");
        // $('#min_max2_' + data).attr("", "false");
    }

    function new_option_name(value, data) {
        $("#new_option_name_" + data).empty();
        $("#new_option_name_" + data).text(value)
        console.log(value);
    }

    function removeOption(e) {
        element = $(e);
        element.parents('.view_new_option').remove();
    }

    function deleteRow(e) {
        element = $(e);
        element.parents('.add_new_view_row_class').remove();
    }


    function add_new_row_button(data) {
        count = data;
        countRow = 1 + $('#option_price_view_' + data).children('.add_new_view_row_class').length;
        var add_new_row_view = `
            <div class="row add_new_view_row_class mb-3 position-relative pt-3 pt-sm-0">
                <div class="col-md-4 col-sm-5">
                    <label for="">Option_name</label>
                    <input class="form-control"  type="text" name="options[` + count + `][values][` + countRow + `][label]" id="">
                </div>
                <div class="col-md-4 col-sm-5">
                    <label for="">Additional_price</label>
                    <input class="form-control"   type="number" min="0" step="0.01" name="options[` + count + `][values][` + countRow + `][optionPrice]" id="">
                </div>
                <div class="col-sm-2 max-sm-absolute">
                    <label class="d-none d-sm-block">&nbsp;</label>
                    <div class="mt-1">
                        <button type="button" class="btn btn-danger btn-sm" onclick="deleteRow(this)"title="Delete">
                                <i class="fa fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>`;
        $('#option_price_view_' + data).append(add_new_row_view);
    }
</script>

<script>
    imgInp.onchange = evt => {
  const [file] = imgInp.files
  if (file) {
    blah.src = URL.createObjectURL(file)
  }
}
</script>

@endsection
