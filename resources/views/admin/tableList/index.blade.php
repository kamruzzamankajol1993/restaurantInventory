@extends('admin.master.master')

@section('title')
Table List | {{ $ins_name }}
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
                    <li class="breadcrumb-item active">Food & Table Management</li>
                    <li class="breadcrumb-item">Table Information </li>
                </ol>
            </div>
            @if (Auth::guard('admin')->user()->can('tableAdd'))
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div style="text-align: right;">
                    <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Table<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
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
                                <th>Table Name</th>
                                <th>Waiter Name</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($tableList as $key=>$tableLists)
                            <tr>
                                <td>{{ $key+1 }}</td>

                                <td>{{ $tableLists->name }}</td>

                                <td>

                                    


                                    <?php $waiter_name = DB::table('admins')
                                        ->where('id',$tableLists->admin_id)
                                        ->value('admin_name');


                                            ?>
                                            {{ $waiter_name }}


                                </td>


                                <td>
                                    @if (Auth::guard('admin')->user()->can('tableUpdate'))
                                    <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $tableLists->id }}"
                                    class="btn btn-primary shadow btn-xs sharp" >
                                    <i class="fa fa-pencil"></i></button>

                                      <!--  Large modal example -->
                                      <div class="modal fade bs-example-modal-lg{{ $tableLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                          <div class="modal-dialog modal-lg">
                                              <div class="modal-content">
                                                  <div class="modal-header">
                                                      <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                      </button>
                                                  </div>
                                                  <div class="modal-body">
                                                      <form  action="{{ route('tableList.update',$tableLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                          @method('PUT')
                                                          @csrf

                                                          <div class="mb-3">
                                                            <label class="form-label" for="">Table Name<span style="color:red;">*</span></label>
                                                            <input class="form-control" name="name" value="{{ $tableLists->name  }}"  type="text" placeholder="" required>
                                                        </div>

                                                        <div class="mb-3 col-md-12">
                                                            <label class="form-label">Waiter Name <span style="color:red;">*</span></label>
                                                            <select id="inputState" name="admin_id" class="form-control ms-0 wide" required>
                                                                <option value="">Choose...</option>
                                                                @foreach($waiterList as $waietLists)
                                                                <option value="{{ $waietLists->id }}" {{ $waietLists->id == $tableLists->admin_id ? 'selected':'' }}>{{ $waietLists->admin_name }}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                          <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                      </form>
                                                  </div>
                                              </div><!-- /.modal-content -->
                                          </div><!-- /.modal-dialog -->
                                      </div><!-- /.modal -->


@endif

                            @if (Auth::guard('admin')->user()->can('tableDelete'))

<button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $tableLists->id}})" data-toggle="tooltip" title="Delete"><i class="fas fa-trash"></i></button>
              <form id="delete-form-{{ $tableLists->id }}" action="{{ route('tableList.destroy',$tableLists->id) }}" method="POST" style="display: none;">
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
                <h4 class="modal-title" id="myLargeModalLabel">Add New Table</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('tableList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Table Name<span style="color:red;">*</span></label>
                        <input class="form-control" name="name"  type="text" placeholder="" required>
                    </div>

                    <div class="mb-3 col-md-12">
                        <label class="form-label">Waiter Name<span style="color:red;">*</span></label>
                        <select id="inputState" name="admin_id" class="form-control ms-0 wide" required>
                            <option value="">Choose...</option>
                            @foreach($waiterList as $waietLists)
                            <option value="{{ $waietLists->id }}" >{{ $waietLists->admin_name }}</option>
                            @endforeach
                        </select>
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

