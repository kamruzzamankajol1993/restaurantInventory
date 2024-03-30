@extends('admin.master.master')

@section('title')
Add Employee
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">HRM</li>
            <li class="breadcrumb-item">Add Employee</li>
        </ol>
    </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">

                        <div class="card-body">
                        @include('flash_message')


                        <div class="progress" style="display: none;">
                            <div class="bar"></div >
                            <div class="percent">0%</div >
                        </div>

                            <form class="custom-validation" action="{{ route('user.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                @csrf




                                <!--new code for restuadent --->


                                <div class="row">
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Employee Image</label>
                                        <input type="file" class="form-control" id="" name="image" accept="image/png, image/jpg, image/jpeg" placeholder="Enter Image" >

                                        @if ($errors->has('image'))
                                        <span class="text-danger">{{ $errors->first('image') }}</span>
                                    @endif
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Employee Name</label>
                                        <input type="text" class="form-control" id="name" name="name" data-parsley-maxlength="150" placeholder="Name" required>

                                        @if ($errors->has('name'))
                                        <span class="text-danger">{{ $errors->first('name') }}</span>
                                    @endif
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Email Address</label>
                                        <input type="text" class="form-control form-control-sm" data-parsley-maxlength="100" id="email" name="email" placeholder="Email" required>

                                        @if ($errors->has('email'))
                                      <span class="text-danger">{{ $errors->first('email') }}</span>
                                  @endif
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Phone Number</label>
                                        <input  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                        type = "number"
                                        maxlength = "11" class="form-control form-control-sm" id="text" data-parsley-length="[11, 11]" name="phone" placeholder="Phone Number" required>

                                        @if ($errors->has('phone'))
                                      <span class="text-danger">{{ $errors->first('phone') }}</span>
                                  @endif
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Address</label>
                                        <input type="text" name="address" class="form-control" placeholder="Address" required>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">NID Number</label>
                                        <input type="text" name="nid_number" class="form-control" placeholder="Nid Number" required>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Designation</label>
                                        <select name="designation_list_id" required class="js-example-basic-single form-control ms-0 wide">
                                            <option value="">Choose...</option>
                                            @foreach($designationLists as $designationListsAll)
                                            <option value="{{ $designationListsAll->id }}">{{ $designationListsAll->designation_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label"> Hire Date</label>
                                        <input type="text" name="hire_date" required class="form-control datepicker23" placeholder="Hire Date">
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Salary</label>
                                        <input type="nummber" name="salary" required class="form-control" placeholder="Salary">
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Is Supervisor</label>
                                        <select name="is_supervisor" id="is_supervisor" required  class="js-example-basic-single form-control ms-0 wide">
                                            <option value="">Choose...</option>
                                            <option value="Yes">Yes</option>
                                            <option value="No" selected>No</option>
                                        </select>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Supervisor Name</label>
                                        <select id="supervisor_name" name="supervisor_name" class="js-example-basic-single form-control ms-0 wide">
                                            <option value="" >Choose...</option>

                                            @foreach($superViserList as $superViserLists)
                                            <option value="{{ $superViserLists->id }}">{{ $superViserLists->admin_name }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Emergency Contact Number</label>
                                        <input type="number" required name="emergency_contact_number" class="form-control" placeholder="Emergency Contact Number<">
                                    </div>


                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Role</label>
                                        <select name="roles[]" id="roles" multiple="multiple"  class="form-control form-control-sm js-example-basic-multiple" required>
                                            @foreach ($roles as $role)
                                             <option value="{{ $role->name }}">{{ $role->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>









                                    <div class="mb-3 col-md-6">
                                        <label class="form-label">Status</label>
                                        <select required id="inputState" name="status" class="js-example-basic-single form-control ms-0 wide">
                                            <option  value="">Choose...</option>
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


<script>
    $(document).ready(function(){
      $("#is_supervisor").change(function(){

        var supValue = $(this).val();

        if(supValue == 'Yes'){

            $('select[name="supervisor_name"]').attr('disabled', 'disabled');

        }else{

            $('select[name="supervisor_name"]').removeAttr('disabled', 'disabled');

        }


      });
    });
    </script>



@endsection
