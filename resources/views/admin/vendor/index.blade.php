@extends('admin.master.master')

@section('title')
Vendor List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')







<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Vendor Information </h4>
        </div>

    </div>
    <div class="row">

        @if (Auth::guard('admin')->user()->can('vendorAdd'))
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Vendor<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
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
                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Address</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($vendorList as $key=>$vendorLists)
                                <tr>
                                    <td>{{ $key+1 }}</td>

                                    <td>{{ $vendorLists->name }}</td>

                                    <td>{{ $vendorLists->phone }}</td>

                                    <td>{{ $vendorLists->email }}</td>

                                    <td>{{ $vendorLists->address }}</td>


                                    <td>
                                        @if (Auth::guard('admin')->user()->can('vendorView'))
                                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $vendorLists->id }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></button>

                                          <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $vendorLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg">
                                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                          <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                      </div>
                                                      <div class="modal-body">
                                                          <form  action="{{ route('vendor.update',$vendorLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                              @method('PUT')
                                                              @csrf



                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Name<span style="color:red;">*</span></label>
                                                                <input class="form-control" value="{{ $vendorLists->name  }}" required name="name"  type="text" placeholder="" required>
                                                            </div>

                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Phone<span style="color:red;">*</span></label>
                                                                <input class="form-control" value="{{ $vendorLists->phone  }}" required name="phone"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                                                type = "number"
                                                                maxlength = "11" placeholder="" required>
                                                            </div>


                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Email</label>
                                                                <input class="form-control" value="{{ $vendorLists->email  }}" name="email"  type="email" placeholder="" required>
                                                            </div>



                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Address</label>
                                                                <input class="form-control" value="{{ $vendorLists->address  }}" name="address"  type="text" placeholder="" required>
                                                            </div>



                                                              <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                          </form>
                                                      </div>
                                                  </div><!-- /.modal-content -->
                                              </div><!-- /.modal-dialog -->
                                          </div><!-- /.modal -->


    @endif

                                @if (Auth::guard('admin')->user()->can('vendorDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $vendorLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $vendorLists->id }}" action="{{ route('vendor.destroy',$vendorLists->id) }}" method="POST" style="display: none;">
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
                <h4 class="modal-title" id="myLargeModalLabel">Add New Vendor Info</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('vendor.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Name<span style="color:red;">*</span></label>
                        <input class="form-control" required name="name"  type="text" placeholder="" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="">Phone<span style="color:red;">*</span></label>
                        <input class="form-control" required name="phone"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "11" placeholder="" required>
                    </div>


                    <div class="mb-3">
                        <label class="form-label" for="">Email</label>
                        <input class="form-control" name="email"  type="email" placeholder="" required>
                    </div>



                    <div class="mb-3">
                        <label class="form-label" for="">Address</label>
                        <input class="form-control" name="address"  type="text" placeholder="" required>
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

