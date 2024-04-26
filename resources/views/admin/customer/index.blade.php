@extends('admin.master.master')

@section('title')
Customer List  | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Customer List</h4>
        </div>

        <div class="row">

            @if (Auth::guard('admin')->user()->can('customerAdd'))
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div style="text-align: right;">
                    <a href="{{ route('customer.create') }}" type="button" class="btn btn-primary btn-sm">Add New Customer<span class="btn-icon-end"><i class="fa fa-plus"></i></span></a>
                </div>
            </div>
            @endif
        </div>

    </div>
</div>

<section class="content">

    <div class="row">
        <div class="col-lg-12 col-sm-12">
            <div class="box">
                <div class="box-body">
                    @include('flash_message')
                    <div class="table-responsive">
                        <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                            <tr>

                                <th>SL</th>
                                <th>Photo</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Type</th>
                                <th>Reward Point</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)


                            <tr>
                               <td>{{ $loop->index+1 }} </td>

                            <td>
                                @if(empty($user->image))
                                @else
<img src="{{ asset('/') }}{{ $user->image }}" style="height:60px" />
@endif
                            </td>

                                <td>{{ $user->name }}</td>

                                <td>{{ $user->address }}</td>
                                <td>{{ $user->phone_number }}</td>
                                <td>{{ $user->email }}</td>

                                <td>{{ $user->type }}</td>

                                <td>{{ $user->reward_point }}</td>

                                <td>

                                    @if($user->status == 1)
                                    Active
                                    @else
                                    Inactive
                                    @endif
                                </td>
                                <td>





                                      <button type="button"  onclick="location.href = '{{ route('customer.edit',$user->id) }}';"
                                      class="btn btn-primary shadow btn-xs sharp " >
                                      <i class="fa fa-pencil"></i></button>

<button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $user->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                <form id="delete-form-{{ $user->id }}" action="{{ route('customer.destroy',$user->id) }}" method="POST" style="display: none;">
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



    </div>


</section>

@endsection

@section('script')

@endsection







