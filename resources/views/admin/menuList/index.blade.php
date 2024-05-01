@extends('admin.master.master')

@section('title')
Menu List
@endsection



@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Menu List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title">Menu Tab</h4>

                    <div class="row">


                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div style="text-align: right;">
                                <a href="{{ route('menuList.create') }}" type="button" class="btn btn-primary btn-sm"><span class="btn-icon-end"><i class="fa fa-plus"></i></span> Add New Menu</a>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <!-- Nav tabs -->
                    <div class="vtabs">
                        <ul class="nav nav-tabs tabs-vertical" role="tablist">
                            @foreach($menuList as $key=>$menuListAll)

                            @if($key+1 == 1)
                            <li class="nav-item"> <a class="nav-link active" data-bs-toggle="tab" href="#home{{ $key+1 }}" role="tab"><span class="hidden-sm-up"><i class="ion-home"></i></span> <span class="hidden-xs-down">{{ $menuListAll->name }}</span> </a> </li>
@else
                            <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#profile{{ $key+1 }}" role="tab"><span class="hidden-sm-up"><i class="ion-person"></i></span> <span class="hidden-xs-down">{{ $menuListAll->name }}</span></a> </li>
@endif
                            @endforeach
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            @foreach($menuList as $key=>$menuListAll)
                            @if($key+1 == 1)
                            <div class="tab-pane active" id="home{{ $key+1 }}" role="tabpanel">
                                <div class="row">

                                    @foreach(json_decode($menuListAll['product_id'],true) as $addOnId)

                                    <?php $productInfo = \App\Models\Product::where('id',$addOnId)->first();  ?>
@if(isset($productInfo))
                                    <div class="col-xxxl-3 col-xl-4 col-lg-6 col-12">
                                        <div class="box food-box">
                                            <div class="box-body text-center">
                                                <div class="menu-item"><img src="{{ asset('/') }}{{ $productInfo->product_image }}" class="img-fluid w-p75" alt="" /></div>
                                                <div class="menu-details text-center">
                                                    <h4 class="mt-20 mb-10">{{ $productInfo->product_name }}</h4>
                                                    <p>{{ \App\Models\Category::where('id',$productInfo->category_id)->value('category_name')  }}/{{ \App\Models\SubCategory::where('id',$productInfo->sub_category_id)->value('subcategory_name')  }}</p>
                                                </div>
                                                <div class="act-btn d-flex justify-content-between">
                                                    {{-- <div class="text-center mx-5">
                                                        <a href="#" class="waves-effect waves-circle btn btn-circle btn-success-light btn-xs mb-5"><i class="fa fa-eye-slash"></i></a>
                                                        <small class="d-block">View</small>
                                                    </div> --}}
                                                    <div class="text-center mx-5">
                                                        <a href="{{ route('menuList.edit',$menuListAll->id) }}" class="waves-effect waves-circle btn btn-circle btn-danger-light btn-xs mb-5"><i class="fa fa-edit"></i></a>
                                                        <small class="d-block">Edit</small>
                                                    </div>
                                                    <div class="text-center mx-5">
                                                        <a href="javascript:void(0)" onclick="deleteTag({{ $menuListAll->id }})"  class="waves-effect waves-circle btn btn-circle btn-primary-light btn-xs mb-5"><i class="fa fa-trash"></i></a>
                                                        <small class="d-block">Delete</small>

                                                        <form id="delete-form-{{ $menuListAll->id }}" action="{{ route('menuList.destroy',$menuListAll->id) }}" method="POST" style="display: none;">
                                                            @method('DELETE')
                                                                                                              @csrf

                                                                                                          </form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach

                                </div>
                            </div>
                            @else
                            <div class="tab-pane" id="profile{{ $key+1 }}" role="tabpanel">
                                <div class="row">

                                    @foreach(json_decode($menuListAll['product_id'],true) as $addOnId)

                                    <?php $productInfo = \App\Models\Product::where('id',$addOnId)->first();  ?>
@if(isset($productInfo))
                                    <div class="col-xxxl-3 col-xl-4 col-lg-6 col-12">
                                        <div class="box food-box">
                                            <div class="box-body text-center">
                                                <div class="menu-item"><img src="{{ asset('/') }}{{ $productInfo->product_image }}" class="img-fluid w-p75" alt="" /></div>
                                                <div class="menu-details text-center">
                                                    <h4 class="mt-20 mb-10">{{ $productInfo->product_name }}</h4>
                                                    <p>{{ \App\Models\Category::where('id',$productInfo->category_id)->value('category_name')  }}/{{ \App\Models\SubCategory::where('id',$productInfo->sub_category_id)->value('subcategory_name')  }}</p>
                                                </div>
                                                <div class="act-btn d-flex justify-content-between">
                                                    {{-- <div class="text-center mx-5">
                                                        <a href="#" class="waves-effect waves-circle btn btn-circle btn-success-light btn-xs mb-5"><i class="fa fa-eye-slash"></i></a>
                                                        <small class="d-block">View</small>
                                                    </div> --}}
                                                    <div class="text-center mx-5">
                                                        <a href="{{ route('menuList.edit',$menuListAll->id) }}" class="waves-effect waves-circle btn btn-circle btn-danger-light btn-xs mb-5"><i class="fa fa-edit"></i></a>
                                                        <small class="d-block">Edit</small>
                                                    </div>
                                                    <div class="text-center mx-5">
                                                        <a href="javascript:void(0)" onclick="deleteTag({{ $menuListAll->id }})"  class="waves-effect waves-circle btn btn-circle btn-primary-light btn-xs mb-5"><i class="fa fa-trash"></i></a>
                                                        <small class="d-block">Delete</small>

                                                        <form id="delete-form-{{ $menuListAll->id }}" action="{{ route('menuList.destroy',$menuListAll->id) }}" method="POST" style="display: none;">
                                                            @method('DELETE')
                                                                                                              @csrf

                                                                                                          </form>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach

                                </div>
                            </div>
                            @endif
                            @endforeach
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>
@endsection
