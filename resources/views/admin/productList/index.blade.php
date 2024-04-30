@extends('admin.master.master')

@section('title')
Product List
@endsection



@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Product List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">All Product List</h3>
                    @include('flash_message')
                </div>
                <!-- /.box-header -->
                <div class="box-body">

                    <div class="table-responsive">
                        <table id="example5" class="table table-bordered" style="width:100%">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Product Name</th>
                                <th>Selling Price</th>
                                <th>Total Sale</th>
                                <th>Stock</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                @foreach($productList as $key=>$productLists)
                            <tr>
                                <td>01</td>
                                <td>
                                    <div class="d-flex justify-content-center align-items-center">
                                        <img class="table_image_box" src="{{ asset('/') }}{{ $productLists->product_image }}" alt="">
                                        <span>{{ $productLists->product_name }}</span>
                                    </div>
                                </td>
                                <td>
                                    {{ $productLists->default_price }} Taka
                                </td>
                                <td>
                                    0
                                </td>
                                <td>
                                    Stock Type: <span class="badge badge-primary-light">{{ $productLists->product_stock_type }}</span>
                                    <br>
                                    Stock: <span class="badge badge-primary">{{ $productLists->product_stock_quantity }}</span>
                                </td>
                                <td>
                                    <select class="form-control available_status" name="" id="">
                                        <option value="Yes" {{ 'Yes' == $productLists->available_status ? 'selected':'' }}>Yes</option>
                                        <option value="No" {{ 'No' == $productLists->available_status ? 'selected':'' }}>No</option>
                                    </select>
                                </td>
                                <td>
                                    <a href="{{ route('productList.show',$productLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="View">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="{{ route('productList.edit',$productLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>

                                    <a href="javascript:void(0)" onclick="deleteTag({{ $productLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <form id="delete-form-{{ $productLists->id }}" action="{{ route('productList.destroy',$productLists->id) }}" method="POST" style="display: none;">
                                        @method('DELETE')
                                                                                          @csrf

                                                                                      </form>
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>
</section>

@endsection



@section('script')


@endsection
