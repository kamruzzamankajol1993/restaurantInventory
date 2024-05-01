@extends('admin.master.master')

@section('title')
Sub-Category Edit
@endsection


@section('css')


@endsection


@section('body')
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Edit Sub-Category</h4>
        </div>

    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
                    <form class="custom-validation" action="{{ route('subcategoryList.update',$subcategoryListEdit->id) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                        @csrf
                        @method('put')
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Sub Category Name</label>
                                        <input type="text" required value="{{ $subcategoryListEdit->subcategory_name }}" name="subcategory_name" class="form-control" placeholder="Sub Category Name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Main Category Name</label>
                                        <select name="category_id" required class="form-control select2" style="width: 100%;">

                                            <option value="">--Please Select--</option>
                                            @foreach($menuList as $menuLists)
                                            <option value="{{ $menuLists->id }}" {{ $menuLists->id == $subcategoryListEdit->category_id ? 'selected':'' }}>{{ $menuLists->category_name }}</option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!--/row-->
                        </div>
                        <div class="form-actions mt-10">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Update
                            </button>
                            {{-- <button type="button" class="btn btn-danger">Cancel</button> --}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Sub Category List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
                    <div class="table-responsive">
                        <table id="productorder" class="table table-hover no-wrap product-order" data-page-size="10">
                            <tr>
                                <th>SL</th>
                                <th>Main Category Name</th>
                                <th>Sub Category Name</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>

                            @foreach($subcategoryList as $key=>$subcategoryLists)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>

                                    <?php

                                   $categoryName = DB::table('categories')
                                       ->where('id',$subcategoryLists->category_id)
                                       ->value('category_name');

                                    ?>

                                    {{ $categoryName }}


                                </td>
                                <td>{{ $subcategoryLists->subcategory_name }}</td>
                                <td>
                                    <select class="form-control changeStatus" name="" id="">
                                        <option data-id="{{ $subcategoryLists->id }}" value="1" {{ $subcategoryLists->status == '1' ? 'selected':'' }}>Active</option>
                                        <option data-id="{{ $subcategoryLists->id }}" value="0" {{ $subcategoryLists->status == '0' ? 'selected':'' }}>InActive</option>
                                    </select>
                                </td>
                                <td>

                                    <a href="{{ route('subcategoryList.edit',$menuLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-pencil"></i>
                                        </a>
                                        <a href="javascript:void(0)" onclick="deleteTag({{ $menuLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                        <form id="delete-form-{{ $menuLists->id }}" action="{{ route('subcategoryList.destroy',$menuLists->id) }}" method="POST" style="display: none;">
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

<script>

$(document).on('change', '.changeStatus', function () {

    var status = $(this).find(':selected').val();

    var id =   $(this).find(':selected').data('id')


        $.ajax({
    url: "{{ route('subcategoryStatusUpdate') }}",
    method: 'get',
    data: {status:status,id:id},
    beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
    success: function(data) {

        alertify.set('notifier','position','top-center');
        alertify.success('Updated SuccessFully');
        location.reload(true);


    }
    });

});

</script>
@endsection