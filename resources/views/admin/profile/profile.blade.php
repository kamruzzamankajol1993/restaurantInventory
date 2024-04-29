@extends('admin.master.master')

@section('title')
Profile
@endsection


@section('body')

<!-- new code start -->
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Profile</h4>
        </div>

    </div>
</div>
<?php
$designationName = DB::table('designation_lists')
->where('id',Auth::guard('admin')->user()->designation_list_id)
->value('designation_name');

$branchName = DB::table('branches')
->where('id',Auth::guard('admin')->user()->branch_id)
->value('branch_name');

?>
<section class="content">
    <div class="row">

        <div class="col-lg-6 col-sm-6">
            <div class="box">
                <div class="box-body">
                    @if(empty(Auth::guard('admin')->user()->admin_image))
                    <img src="{{asset('/')}}public/admin/user.png" alt="user-img" />
                    @else
                    <img src="{{asset('/')}}{{ Auth::guard('admin')->user()->admin_image }}" alt="user-img" />
                @endif
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-sm-6">
            <div class="box">
                <div class="box-body">

                        <p style="text-list-style: none;">

                            <i class="fa fa-user" style="font-size: 25px;"></i>
                            <span style="padding-left: 10px;font-size:15px; ">{{ Auth::guard('admin')->user()->admin_name }}</span>

                        </p>


                        <p>

                            <i class="fa fa-envelope" style="font-size: 25px;"></i>
                            <span style="padding-left: 10px;font-size:15px; ">{{ Auth::guard('admin')->user()->email }}</span>

                        </p>


                        <p>

                            <i class="fa fa-graduation-cap" style="font-size: 25px;"></i>
                            <span style="padding-left: 10px;font-size:15px; ">{{ $designationName}}</span>

                        </p>


                        <p>

                            <i class="fa fa-phone" style="font-size: 25px;"></i>
                            <span style="padding-left: 10px;font-size:15px; ">{{ Auth::guard('admin')->user()->admin_mobile}}</span>

                        </p>



                        <p>

                            <i class="fa fa-address-card-o" style="font-size: 25px;"></i>
                            <span style="padding-left: 10px;font-size:15px; ">{{ Auth::guard('admin')->user()->address}}</span>

                        </p>




                </div>
            </div>
        </div>
    </div>
</section>



<!----new code end -->

@endsection

@section('script')
@endsection

