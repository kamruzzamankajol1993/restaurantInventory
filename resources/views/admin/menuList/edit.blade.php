@extends('admin.master.master')

@section('title')
Update Menu
@endsection



@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Update Menu</h4>
        </div>

    </div>
</div>
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">

                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <form class="custom-validation" action="{{ route('menuList.update',$menuList->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                        @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Select Products <span style="color:red;">*</span></label>
                                <select name="product_id[]" required class="form-control select2" multiple="multiple"
                                        data-placeholder="Select Products"
                                        style="width: 100%;">
                                        @foreach($productList as $productAddOnLists)
                                    <option value="{{ $productAddOnLists->id }}"  {{in_array($productAddOnLists->id,json_decode($menuList['product_id'],true))?'selected':''}}>{{ $productAddOnLists->product_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <h4 class="box-title mt-20">Uploaded Menu Image</h4>
                            <div class="category_demo text-start">
                                <img id ="blah" src="{{ asset('/') }}{{ $menuList->image }}" alt=""
                                     class="mb-15">
                                <div class="mb-3">
                                    <label class="form-label">Menu Images</label>
                                    <small class="text-danger"> * (Ratio 1:1)</small>
                                    <input   name="image" class="form-control" accept="image/*" type='file' id="imgInp">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Menu Name</label>
                                <input type="text" name="name" value="{{ $menuList->name }}" required class="form-control" placeholder="Menu Name">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Status</label>
                                <select class="form-control" required name="status" id="">
                                    <option value="">--Select--</option>
                                    <option value="1" {{ $menuList->status == '1' ? 'selected':''  }}>Active</option>
                                    <option value="0" {{ $menuList->status == '0' ? 'selected':''  }}>Inactive</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="form-actions mt-10">
                        <button type="submit" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Update</button>
                    </div>
                    </form>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
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
