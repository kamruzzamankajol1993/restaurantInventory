@extends('admin.master.master')

@section('title')
Category List
@endsection

@section('css')

@endsection


@section('body')
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Add/Edit Category</h4>
        </div>

    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
                    @include('flash_message')
                    <form class="custom-validation" action="{{ route('categoryList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                        @csrf
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Category Name</label>
                                        <input type="text" name="category_name" class="form-control" placeholder="Category Name">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->
                            <div class="row">
                                <!--/span-->
                                <div class="col-md-6">
                                    <h4 class="box-title mt-20">Uploaded Category Image</h4>
                                    <div class="category_demo text-start">
                                        <img id ="blah" src="{{ asset('/') }}public/admin/assets/images/progga_images/demo_product/img2.jpg" alt=""
                                             class="mb-15">
                                        <div class="mb-3">
                                            <label class="form-label">Category Images</label>
                                            <small class="text-danger"> * (Ratio 1:1)</small>
                                            <input   name="image" class="form-control" accept="image/*" type='file' id="imgInp">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h4 class="box-title mt-20">Uploaded Banner Image</h4>
                                    <div class="category_demo text-start">
                                        <img id ="blahone" src="{{ asset('/') }}public/admin/assets/images/progga_images/demo_product/img1.jpg" alt=""
                                             class="mb-15">
                                        <div class="mb-3">
                                            <label class="form-label">Banner Images</label>
                                            <small class="text-danger"> * (Ratio 8:1)</small>
                                            <input   name="web_image" class="form-control" accept="image/*" type='file' id="imgInpone">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions mt-10">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save /
                                Add
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
            <h4 class="page-title">Category List</h4>
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
                                <th>Category Image</th>
                                <th>Banner Image</th>
                                <th>Name</th>
                                <th>Status</th>
                                <th>Priority</th>
                                <th>Action</th>
                            </tr>

                            <?php

                              $menuListCount= count($menuList);

                            ?>
                            @foreach ($menuList as $menuLists)
                           <tr>
                            <td>{{ $loop->index+1 }}</td>
                            <td> <img src="{{ asset('/') }}{{ $menuLists->image }}"    height="150px"/> </td>
                            <td> <img src="{{ asset('/') }}{{ $menuLists->web_image }}"    height="150px"/> </td>
                            <td >{{ $menuLists->category_name }}</td>
                            <td >


                                <select class="form-control" name="" id="">
                                <option value="1" {{ $menuLists->status == '1' ? 'selected':'' }}>Active</option>
                                <option value="0" {{ $menuLists->status == '0' ? 'selected':'' }}>InActive</option>
                            </select>


                        </td>
                            <td >


                                <select class="form-control" name="" id="">
                                    @for ($i = 1; $i <= $menuListCount; $i++)
                                    <option value="{{ $i }}"  {{ $menuLists->priority == $i ? 'selected':'' }}>{{ $i }}</option>
                                  @endfor
                                </select>




                            </td>
                                <td>


                                <a href="{{ route('categoryList.edit',$menuLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                    <i class="fa fa-pencil"></i>
                                    </a>
                                    <a href="javascript:void(0)" onclick="deleteTag({{ $menuLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <form id="delete-form-{{ $menuLists->id }}" action="{{ route('categoryList.destroy',$menuLists->id) }}" method="POST" style="display: none;">
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
    imgInp.onchange = evt => {
  const [file] = imgInp.files
  if (file) {
    blah.src = URL.createObjectURL(file)
  }
}

imgInpone.onchange = evt => {
  const [file] = imgInpone.files
  if (file) {
    blahone.src = URL.createObjectURL(file)
  }
}
</script>
@endsection