@extends('admin.master.master')

@section('title')
Discount List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')


<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Discount Information </h4>
        </div>

    </div>
    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            @if (Auth::guard('admin')->user()->can('discountAdd'))
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Discount<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
            </div>
            @endif
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">

                    @include('flash_message')
                    <div class="table-responsive">
                        <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Discount Type</th>
                                    <th>Discount Amount(%)</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($discountLists as $key=>$AlldiscountLists)
                                <tr>
                                    <td>{{ $key+1 }}</td>

                                    <td>{{ $AlldiscountLists->type }}</td>

                                    <td>{{ $AlldiscountLists->amount }}</td>


                                    <td>
                                        @if (Auth::guard('admin')->user()->can('discountUpdate'))
                                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $AlldiscountLists->id }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></button>

                                          <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $AlldiscountLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg">
                                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                          <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                      </div>
                                                      <div class="modal-body">
                                                          <form  action="{{ route('discount.update',$AlldiscountLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                              @method('PUT')
                                                              @csrf



                                                              <div class="mb-3">
                                                                <label class="form-label" for="">Discount Type<span style="color:red;">*</span></label>
                                                                <input class="form-control" name="type" value="{{ $AlldiscountLists->type  }}"  type="text" placeholder="" required>
                                                            </div>



                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Discount Amount(%) <span style="color:red;">*</span></label>
                                                                <input class="form-control" name="amount" value="{{ $AlldiscountLists->amount }}"  type="number"  placeholder="" required>

                                                            </div>


                                                              <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                          </form>
                                                      </div>
                                                  </div><!-- /.modal-content -->
                                              </div><!-- /.modal-dialog -->
                                          </div><!-- /.modal -->


    @endif


                                @if (Auth::guard('admin')->user()->can('discountDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $AlldiscountLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $AlldiscountLists->id }}" action="{{ route('discount.destroy',$AlldiscountLists->id) }}" method="POST" style="display: none;">
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
    </div>
</section>

<!-- new code --->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header">
                   <h4> Tax and Service Charge</h4>
                </div>
                <div class="box-body">

                    <div class="table-responsive">
                        <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                            <tr>
                                <th>Tax(%)</th>
                                <th>Service Charge(%)</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                @foreach($systemInformation as $key=>$allSystemInformation)
                            <tr>
                                <td>

                                    @if(empty($allSystemInformation->tax))

                                    Add tax

                                    @else

                                    {{ $allSystemInformation->tax }}

                                    @endif

                                </td>
                                <td>

                                    @if(empty($allSystemInformation->service_charge))

                                    Add Service charge

                                    @else

                                    {{ $allSystemInformation->service_charge }}

                                    @endif


                                </td>
                                <td>
                                    <a data-bs-toggle="modal" data-bs-target="#exampleModal{{ $key+1 }}" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fa fa-edit"></i></a>


                                    <div class="modal fade" id="exampleModal{{ $key+1 }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h1 class="modal-title fs-5" id="exampleModalLabel">Update </h1>
                                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form method="post" action="{{ route('updateTaxAndServiceCharge',$allSystemInformation->id)}}" enctype="multipart/form-data" id="form">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="mb-4">
                                                                <label for="formrow-email-input" class="form-label">Tax(%)</label>
                                                                <input type="number" name="tax" value="{{ $allSystemInformation->tax }}"  class="form-control" placeholder="Tax" required>
                                                                <small></small>
                                                            </div>
                                                        </div>


                                                        <div class="col-md-6">
                                                            <div class="mb-4">
                                                                <label for="formrow-inputZip" class="form-label">Service Charge(%)</label>
                                                                <input name="service_charge" value="{{ $allSystemInformation->service_charge }}"   type="number" class="form-control" id="formrow-inputZip" placeholder="Service Charge" required>
                                                                <small></small>
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div>
                                                        <button type="submit" class="btn btn-primary btn-sm w-md">Update</button>
                                                    </div>


                                                </form>
                                            </div>

                                          </div>
                                        </div>
                                      </div>

                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!-- end new code -->


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Add New Discount</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('discount.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Discount Type<span style="color:red;">*</span></label>
                        <input class="form-control" required name="type" id="discount_name0" type="text" placeholder="" required>
                    </div>


                    <div class="mb-3">
                        <label class="form-label" for="">Discount Amount(%) <span style="color:red;">*</span></label>

                        <div class="row">


                            <div class="col-md-12">
                                <input class="form-control" name="amount"  id="discount_detail0" type="number"  placeholder="" required>
                            </div>
                        </div>


                    </div>





                <div class="card-footer text-end ">
                    <button class="btn btn-primary mt-3"  type="submit">Submit</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')

@endsection

