@extends('admin.master.master')

@section('title')
InventoryName List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')







<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Inventory Name Information </h4>
        </div>

    </div>
    <div class="row">

        @if (Auth::guard('admin')->user()->can('inventoryNameAdd'))
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Inventory Name<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
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
                                    <th>Sl</th>
                                    <th>Inventory Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($inventoryNameList as $key=>$inventoryNameLists)
                                <tr>
                                    <td>{{ $key+1 }}</td>

                                    <td>{{ $inventoryNameLists->name }}</td>




                                    <td>
                                        @if (Auth::guard('admin')->user()->can('inventoryNameUpdate'))
                                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $inventoryNameLists->id }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></button>

                                          <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $inventoryNameLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg">
                                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                          <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                      </div>
                                                      <div class="modal-body">
                                                          <form  action="{{ route('inventoryName.update',$inventoryNameLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                              @method('PUT')
                                                              @csrf

                                                              <div class="mb-3">
                                                                <label class="form-label" for="">Inventory Name<span style="color:red;">*</span></label>
                                                                <input class="form-control" name="name" value="{{ $inventoryNameLists->name  }}"  type="text" placeholder="" required>
                                                            </div>



                                                              <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                          </form>
                                                      </div>
                                                  </div><!-- /.modal-content -->
                                              </div><!-- /.modal-dialog -->
                                          </div><!-- /.modal -->


    @endif

                                @if (Auth::guard('admin')->user()->can('InventoryNameDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $inventoryNameLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $inventoryNameLists->id }}" action="{{ route('inventoryName.destroy',$inventoryNameLists->id) }}" method="POST" style="display: none;">
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

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Add New Inventory Name</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('inventoryName.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Inventory Name<span style="color:red;">*</span></label>
                        <input class="form-control" name="name"  type="text" placeholder="" required>
                    </div>



                <div class="card-footer text-end ">
                    <button class="btn btn-primary mt-3" id="finalButton0" type="submit">Submit</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection

@section('script')

@endsection

