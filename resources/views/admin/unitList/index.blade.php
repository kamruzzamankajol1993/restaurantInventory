@extends('admin.master.master')

@section('title')
Unit List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Setting</li>
                    <li class="breadcrumb-item">Unit Information </li>
                </ol>
            </div>
            @if (Auth::guard('admin')->user()->can('unitAdd'))
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div style="text-align: right;">
                    <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Unit<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
                </div>
            </div>
            @endif
        </div>
    </div>

    <div class="row">
        <!-- Individual column searching (text inputs) Starts-->
        <div class="col-sm-12">
            <div class="card">

                <div class="card-body">

                    @include('flash_message')
                    <div class="table-responsive">

                            <table id="example3" class="display">
                            <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Unit Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($unitList as $key=>$unitLists)
                            <tr>
                                <td>{{ $key+1 }}</td>

                                <td>{{ $unitLists->unit_name }}</td>




                                <td>
                                    @if (Auth::guard('admin')->user()->can('unitUpdate'))
                                    <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $unitLists->id }}"
                                    class="btn btn-primary shadow btn-xs sharp" >
                                    <i class="fa fa-pencil"></i></button>

                                      <!--  Large modal example -->
                                      <div class="modal fade bs-example-modal-lg{{ $unitLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                          <div class="modal-dialog modal-lg">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form  action="{{ route('unitList.update',$unitLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                          @method('PUT')
                                                          @csrf

                                                          <div class="mb-3">
                                                            <label class="form-label" for="">Unit Name<span style="color:red;">*</span></label>
                                                            <input class="form-control" name="unit_name" value="{{ $unitLists->unit_name  }}"  type="text" placeholder="" required>
                                                        </div>



                                                          <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                      </form>
                                                  </div>
                                              </div><!-- /.modal-content -->
                                          </div><!-- /.modal-dialog -->
                                      </div><!-- /.modal -->


@endif

                            @if (Auth::guard('admin')->user()->can('unitDelete'))

<button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $unitLists->id}})" data-toggle="tooltip" title="Delete"><i class="fas fa-trash"></i></button>
              <form id="delete-form-{{ $unitLists->id }}" action="{{ route('unitList.destroy',$unitLists->id) }}" method="POST" style="display: none;">
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
</div>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Add New Unit</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('unitList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Unit Name<span style="color:red;">*</span></label>
                        <input class="form-control" name="unit_name"  type="text" placeholder="" required>
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

