@extends('admin.master.master')

@section('title')
Role List
@endsection


@section('body')
<div class="content-body">
<div class="container-fluid">


    <div class="row page-titles">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Setting</li>
                    <li class="breadcrumb-item">Role Information </li>
                </ol>
            </div>
            @if (Auth::guard('admin')->user()->can('roleAdd'))
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div style="text-align: right;">
                    <a href="{{ route('role.create') }}" type="button" class="btn btn-primary btn-sm">Add New Role<span class="btn-icon-end"><i class="fa fa-plus"></i></span></a>
                </div>
            </div>
            @endif







        </div>
    </div>

        <!-- end page title -->


        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                  <div class="card-body">
                        @include('flash_message')
                        <div class="table-responsive">
                            <table id="example3" class="display">
                            <thead>
                                <tr>

                                        <th>Sl</th>
                                        <th>Role Name</th>
                                        <th >Permission List</th>
                                        <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($roles as $role)

                                <tr>
                                   <td>

                                    {{ $loop->index+1 }}

                                    <td>{{ $role->name }}</td>
                                    <td >



                                        @foreach ($role->permissions as $key=>$perm)


                                        @if(($key+1) == 6)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 12)
                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 18)
                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 24)

                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 30)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 36)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 42)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 48)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 54)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 60)
                                            {{ $perm->name }},<br>

                                            @else
                                            {{ $perm->name }},
                                            @endif


                                        @endforeach

                                    </td>

                                                <td>


                                                    <button type="button"  onclick="location.href = '{{ route('role.edit',$role->id) }}';"
                                                        class="btn btn-primary shadow btn-xs sharp me-1" >
                                                        <i class="fa fa-edit"></i></button>





                                                        <button type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $role->id }})"><i class="fa fa-trash"></i></button>

 <form id="delete-form-{{ $role->id }}" action="{{ route('role.destroy',$role->id) }}" method="POST" style="display: none;">
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
</div>
</div>
@endsection

@section('script')
@endsection
