@extends('admin.master.master')

@section('title')
Menu List
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
                        <li class="breadcrumb-item active">Food & Table Management/li>
                        <li class="breadcrumb-item">Menu Information </li>
                    </ol>
                </div>
                @if (Auth::guard('admin')->user()->can('menuAdd'))
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div style="text-align: right;">
                        <a href="{{ route('menuList.create') }}" type="button" class="btn btn-primary btn-sm">Add New Menu<span class="btn-icon-end"><i class="fa fa-plus"></i></span></a>
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
                                            <th>Menu Image</th>
                                            <th>Menu Name</th>
                                            <th>Menu Status</th>
                                            <th>Created At</th>
                                            <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($menuList as $menuLists)

                                    <tr>
                                       <td>{{ $loop->index+1 }}</td>

                                        <td> <img src="{{ asset('/') }}{{ $menuLists->image }}"    height="150px"/> </td>
                                        <td >{{ $menuLists->category_name }}</td>
                                        <td >{{ $menuLists->status }}</td>
                                        <td >{{ date('d/m/y', strtotime($menuLists->created_at)) }}</td>
                                                    <td>


                                                        <button type="button"  onclick="location.href = '{{ route('menuList.edit',$menuLists->id) }}';"
                                                            class="btn btn-primary shadow btn-xs sharp me-1" >
                                                            <i class="fa fa-edit"></i></button>





                                                            <button type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $menuLists->id }})"><i class="fa fa-trash"></i></button>

     <form id="delete-form-{{ $menuLists->id }}" action="{{ route('menuList.destroy',$menuLists->id) }}" method="POST" style="display: none;">
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
