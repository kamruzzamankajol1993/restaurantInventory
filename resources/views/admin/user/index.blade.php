@extends('admin.master.master')

@section('title')
User List  | {{ $ins_name }}
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
                    <li class="breadcrumb-item active">HRM</li>
                    <li class="breadcrumb-item">User Information </li>
                </ol>
            </div>
            @if (Auth::guard('admin')->user()->can('userAdd'))
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div style="text-align: right;">
                    <a href="{{ route('user.create') }}" type="button" class="btn btn-primary btn-sm">Add New User<span class="btn-icon-end"><i class="fa fa-plus"></i></span></a>
                </div>
            </div>
            @endif







        </div>
    </div>




        <div class="row">
            <div class="col-lg-12">
                <div class="card">

                    <div class="card-body">
                        @include('flash_message')
                        <div class="table-responsive">
                            <table id="example3" class="display">
                            <thead>
                                <tr>

                                    <th>SL</th>
                                    <th>Photo</th>
                                    <th>Name</th>
                                    <th>Designation</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>Email</th>
                                    <th>Salary</th>
                                    <th>Nid</th>
                                    <th>Superviser Name</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($users as $user)


                                <tr>
                                   <td>{{ $loop->index+1 }} </td>

                                <td>
                                    @if(empty($user->admin_image))
                                    @else
<img src="{{ asset('/') }}{{ $user->admin_image }}" style="height:60px" />
@endif
                                </td>

                                    <td>{{ $user->admin_name }}</td>

                                    <td>
                                        <?php $desiName = DB::table('designation_lists')
                                        ->where('id',$user->designation_list_id)
                                        ->value('designation_name');


                                            ?>
                                            {{ $desiName }}</td>
                                    <td>{{ $user->address }}</td>
                                    <td>{{ $user->admin_mobile }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->salary }}</td>
                                    <td>{{ $user->nid_number }}</td>
                                    <td>


                                        <?php $supervisor_name = DB::table('admins')
                                        ->where('id',$user->supervisor_name)
                                        ->value('admin_name');


                                            ?>
                                            {{ $supervisor_name }}





                                    </td>
                                    <td>
                                        @foreach ($user->roles as $role)
                                        <span class="badge bg-success mt-1">
                                                {{ $role->name }}
                                        </span>
                                        @endforeach
                                    </td>
                                    <td>

                                        <button type="button"  onclick="location.href = '{{ route('user.show',$user->id) }}';"
                                            class="btn btn-info shadow btn-xs sharp me-1" >
                                            <i class="fa fa-eye"></i></button>



                                          <button type="button"  onclick="location.href = '{{ route('user.edit',$user->id) }}';"
                                          class="btn btn-primary shadow btn-xs sharp " >
                                          <i class="fa fa-pencil"></i></button>

<button   type="button" class="btn btn-danger shadow btn-xs sharp onclick="deleteTag({{ $user->id}})" data-toggle="tooltip" title="Delete"><i class="fas fa-trash"></i></button>
                    <form id="delete-form-{{ $user->id }}" action="{{ route('user.destroy',$user->id) }}" method="POST" style="display: none;">
                      @method('DELETE')
                                                    @csrf

                                                </form>

                                    </td>
                                </tr>
@endforeach

                        </table>
                    </div>
                    </div>
                </div>
            </div>
        </div><!--end row-->



    </div>
    <!-- container-fluid -->
</div>
</div>



@endsection

@section('script')

@endsection







