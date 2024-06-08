@extends('admin.master.master')

@section('title')
Inventory List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')







<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Inventory Information </h4>
        </div>

    </div>
    <div class="row">

        @if (Auth::guard('admin')->user()->can('inventoryAdd'))
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <a href="{{ route('inventory.create') }}" type="button" class="btn btn-primary btn-sm">Add New Inventory <span class="btn-icon-end"><i class="fa fa-plus"></i></span></a>
            </div>
        </div>
        @endif




    </div>
</div>



<section class="content">


    <div class="row">
        <!-- Individual column searching (text inputs) Starts-->
        <div class="col-sm-12">
            <div class="card">

                <div class="card-body">

                    @include('flash_message')
                    <div class="table-responsive">

                        <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                            <th>Inventory Name</th>
                                            <th>Buying Price</th>
                                            <th>QTY & Unit</th>
                                            <th>Vendor</th>
                                            <th>Expired Date</th>
                                            <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                    @foreach($inventoryList as $key=>$inventoryLists)
                                    <tr>
                                        <td>{{ $key+1 }}</td>
                                        <td>{{ \App\Models\InventoryName::where('id',$inventoryLists->name_id)->value('name') }}</td>
                                        <td>{{ $inventoryLists->buying_price }}</td>
                                        <td> Quantity: <span class="badge badge-primary-light">{{ \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('quantity') }}</span>
                                            <br>
                                            Unit: <span class="badge badge-primary">

                                                <?php

                                                 $unitId = \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('unit_id')
                                                 ?>
{{ \App\Models\Unit::where('id',$unitId)->value('unit_name') }}
                                            </span></td>
                                        <td>{{ \App\Models\Vendor::where('id',$inventoryLists->vendor_id)->value('name') }}</td>
                                        <td>{{date('d-m-Y', strtotime($inventoryLists->expire_date))}}</td>
                                        <td>

                                            @if (Auth::guard('admin')->user()->can('inventoryUpdate'))

                                            <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $inventoryLists->id }}"
                                                class="btn btn-success shadow btn-xs sharp" >
                                                <i class="fa fa-file-text"></i></button>

                                                <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $inventoryLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="myLargeModalLabel">Update Quantity Information</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form  action="{{ route('quantityUpdate') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">

                                                            @csrf
                                                             <input type="hidden" name="inventoryid" value="{{ $inventoryLists->id }}"/>

                                                             <div class="form-group">
                                                                <label class="fw-700 fs-16 form-label">Type</label>
                                                                <select class="form-control" name="type" id="">
                                                                    <option value="Addition" selected>Addition</option>
                                                                    <option value="Subtraction">Subtraction</option>
                                                                </select>
                                                            </div>


                                                            <div class="mb-3">
                                                              <label class="form-label" for="">Quantity<span style="color:red;">*</span></label>
                                                              <input class="form-control" name="quantity" value="{{ \App\Models\InventoryQuantity::where('inventory_id',$inventoryLists->id)->value('quantity') }}"  type="text" placeholder="" required>
                                                          </div>

                                                          <div class="form-group">
                                                            <label class="fw-700 fs-16 form-label">Quantity Unit</label>
                                                            <select class="form-control" name="unit_id" id="">
                                                                <option>--Please Select--</option>
                                                                @foreach($unitList as $inventoryNameLists)
                                                                <option value="{{ $inventoryNameLists->id }}" {{ $inventoryNameLists->id ==  $unitId ? 'selected':''}}>{{ $inventoryNameLists->unit_name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>



                                                            <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                        </form>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->



                                        <a type="button" href="{{ route('inventory.edit',$inventoryLists->id) }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></a>

                                        @endif

                                            @if (Auth::guard('admin')->user()->can('inventoryDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $inventoryLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $inventoryLists->id }}" action="{{ route('inventory.destroy',$inventoryLists->id) }}" method="POST" style="display: none;">
                    @method('DELETE')
                                                  @csrf

                                              </form>

                                              @endif


                                        </td>
                                    </tr>

                                    @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Individual column searching (text inputs) Ends-->
    </div>
</div>
<!-- Container-fluid Ends-->
</section>




@endsection

@section('script')

@endsection

