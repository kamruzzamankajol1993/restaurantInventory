@extends('admin.master.master')

@section('title')
Update Customer
@endsection


@section('css')

@endsection

@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Update Customer</h4>
        </div>

    </div>
</div>

<section class="content">
    <form action="{{ route('customer.update',$user->id) }}" method="POST" enctype="multipart/form-data" id="form" data-parsley-validate="">

        @csrf
        @method('PUT')
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <div class="box">
                <div class="box-body">
                    <div class="progress" style="display: none;">
                        <div class="bar"></div >
                        <div class="percent">0%</div >
                    </div>

@include('flash_message')

<div class="form-group">
    <label class="fw-700 fs-16 form-label">Customer Name</label>

    <input type="text" class="form-control" id="name" value="{{ $user->name }}" name="name" data-parsley-maxlength="150" placeholder="Name" required>

    @if ($errors->has('name'))
    <span class="text-danger">{{ $errors->first('name') }}</span>
@endif
</div>
<div class="form-group">
    <label class="fw-700 fs-16 form-label">Phone Number</label>
    <input  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number"
    maxlength = "11" value="{{ $user->phone_number }}" class="form-control form-control-sm" id="text" data-parsley-length="[11, 11]" name="phone" placeholder="Phone Number" required>

    @if ($errors->has('phone'))
  <span class="text-danger">{{ $errors->first('phone') }}</span>
@endif
</div>
<div class="form-group">
    <label class="fw-700 fs-16 form-label">Customer Email</label>
    <input type="text" value="{{ $user->email }}" class="form-control form-control-sm" data-parsley-maxlength="100" id="email" name="email" placeholder="Email" required>

    @if ($errors->has('email'))
  <span class="text-danger">{{ $errors->first('email') }}</span>
@endif
</div>
<div class="form-group">
    <label class="fw-700 fs-16 form-label">Address</label>
    <input type="text" value="{{ $user->address }}" name="address" class="form-control" placeholder="Address" required>
</div>


<div class="form-group">
    <label class="fw-700 fs-16 form-label">Customer Type</label>
    <select name="type" required class="select2 form-control ms-0 wide">
        <option value="">Choose...</option>

        <option value="Regular" {{ 'Regular' == $user->type ? 'selected':'' }}>Regular</option>
        <option value="Premium" {{ 'Premium' == $user->type ? 'selected':'' }}>Premium</option>
    </select>
</div>

<div class="form-group">
    <label class="fw-700 fs-16 form-label">Reward Point Availabe?</label>
    <select name="reward_point" required class="select2 form-control ms-0 wide">
        <option value="">Choose...</option>

        <option value="Yes"  {{ 'Yes' == $user->reward_point ? 'selected':'' }}>Yes</option>
        <option value="No"  {{ 'No' == $user->reward_point ? 'selected':'' }}>No</option>
    </select>
</div>


<div class="form-group">
    <label class="fw-700 fs-16 form-label">Status</label>
    <select name="status" required class="select2 form-control ms-0 wide">
        <option value="">Choose...</option>

        <option value="1"  {{ '1' == $user->status ? 'selected':'' }}>Active</option>
        <option value="0"  {{ '0' == $user->status ? 'selected':'' }}>InActive</option>
    </select>
</div>
                </div>
            </div>
        </div>

        <div class="col-lg-6 col-sm-12">
            <div class="box">
                <div class="box-body">
                    <div class="category_demo text-start">
                        <img id="blahone" src="{{ asset('/') }}{{ $user->image }}"" alt=""
                             class="mb-15">
                        <div class="mb-3">
                            <label class="form-label">Customer Images</label>
                            <small class="text-danger"> * (Ratio 1:1)</small>
                            <input class="form-control" name="employee_image" accept="image/*" type='file' id="imgInpone" />
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <div class="form-actions mt-10">
        <button type="submit" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Update</button>
    </div>
</form>
</section>

@endsection

@section('Script')

@endsection
