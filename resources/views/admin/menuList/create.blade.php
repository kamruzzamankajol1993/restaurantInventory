@extends('admin.master.master')

@section('title')
Add Menu
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">Food & Table Management</li>
            <li class="breadcrumb-item">Add Menu</li>
        </ol>
    </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">

                        <div class="card-body">
                        @include('flash_message')




                            <form class="custom-validation" action="{{ route('menuList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                @csrf




                                <!--new code for restuadent --->

                                <div class="row">
                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Image</label>
                                        <input type="file" name="image" class="form-control" required>
                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Name</label>
                                        <input type="text" name="category_name" class="form-control" placeholder="Name" required>
                                    </div>

                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Status</label>
                                        <select id="inputState" name="status" class="default-select form-control ms-0 wide">
                                            <option value="">Choose...</option>
                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>

                                <!-- new code form restuadent --->
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
@endsection
