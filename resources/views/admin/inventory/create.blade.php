@extends('admin.master.master')

@section('title')
Add Inventory List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')







<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Add Inventory Information </h4>
        </div>

    </div>

</div>



<section class="content">
    @include('flash_message')
    <form class="custom-validation"  action="{{ route('inventory.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
        @csrf
    <div class="row">
        <div class="col-lg-12 col-sm-12">
            <div class="box">
                <div class="box-body">

                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Inventory Name</label>
                            <select class="form-control js-example-basic-single" name="name_id" id="">
                                <option>--Please Select--</option>
                                @foreach($inventoryNameList as $inventoryNameLists)
                                <option value="{{ $inventoryNameLists->id }}">{{ $inventoryNameLists->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Inventory Quantity</label>
                            <input type="number" class="form-control" name="quantity" placeholder="Inventory Quantity">
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Quantity Unit</label>
                            <select class="form-control js-example-basic-single" name="unit_id" id="">
                                <option>--Please Select--</option>
                                @foreach($unitList as $inventoryNameLists)
                                <option value="{{ $inventoryNameLists->id }}">{{ $inventoryNameLists->unit_name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Vendor</label>
                            <select class="form-control js-example-basic-single" name="vendor_id" id="">
                                <option>--Please Select--</option>
                                @foreach($vendorList as $inventoryNameLists)
                                <option value="{{ $inventoryNameLists->id }}">{{ $inventoryNameLists->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Buying Price</label>
                            <input type="number" name="buying_price" class="form-control" placeholder="Buying Price">
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Expired Date</label>
                            <input type="date" name="expire_date" class="form-control"  placeholder="Expired Date">
                        </div>

                </div>
            </div>
        </div>


        <div class="form-actions mt-10">
            <button type="submit" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
        </div>

    </div>
</div>
    </form>
<!-- Container-fluid Ends-->
</section>




@endsection

@section('script')

@endsection

