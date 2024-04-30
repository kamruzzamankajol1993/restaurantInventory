@extends('admin.master.master')

@section('title')
Product Addon
@endsection


@section('css')

@endsection

@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Product Addon  List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">

                    <div class="card-top px-card pt-4">
                        <div class="d-flex flex-column flex-md-row flex-wrap gap-3 justify-content-md-between align-items-md-center">
                            <h5 class="d-flex align-items-center gap-2 mb-0">
                                Product Addon  Table
                                <span class="badge badge-soft-dark rounded-50 fz-12">{{ count($productAddOnList) }}</span>
                            </h5>
                            <div class="d-flex flex-wrap justify-content-md-end gap-3">
                                <form action="{{ route('searchProductAddOn') }}" method="GET">
                                    <div class="input-group">
                                        <input id="#" type="text" value="{{ $searchData }}" name="search"  class="form-control me-3" placeholder="Search by name" aria-label="Search" value="" required="" autocomplete="off">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-primary">Search</button>
                                        </div>
                                    </div>
                                </form>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg">
                                    <i class="fa fa-plus"></i>
                                    Add Product Addon
                                </button>
                            </div>
                        </div>
                    </div>



                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myLargeModalLabel">Add Product Addon </h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="post" id="form" action="{{ route('productAddOn.store') }}">
                                    @csrf
                                <div class="modal-body">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="fw-700 fs-16 form-label">Product Addon  Name</label>
                                                <input type="text" name="name" required class="form-control" placeholder="Product Addon  Name">
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="fw-700 fs-16 form-label">Price</label>
                                                <input type="number" name="price" required class="form-control" placeholder="Product Price">
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="fw-700 fs-16 form-label">Tax(%)</label>
                                                <input type="number" name="tax" value="0" required class="form-control" placeholder="Product Tax">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <div class="form-actions mt-10">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save /
                                            Add
                                        </button>
                                        <button type="button" class="btn btn-danger text-start" data-bs-dismiss="modal">Close</button>
                                    </div>

                                </div>
                                </form>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->

                    <div class="table-responsive">
                        <table id="productorder" class="table table-hover no-wrap product-order" data-page-size="10">
                            <tr>
                                <th>SL</th>
                                <th>Product Addon Name</th>
                                <th>Product Price</th>
                                <th>Tax(%)</th>
                                <th>Action</th>
                            </tr>
                            @foreach($productAddOnList as $key=>$productAddOnLists)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $productAddOnLists->name }}</td>
                                <td>{{ $productAddOnLists->price }}</td>
                                <td>{{ $productAddOnLists->tax }}</td>
                                <td>



                                    <a class="text-info me-10" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $productAddOnLists->id }}">
                                        <i class="fa fa-pencil"></i>
                                        </a>


                                        <!-- edit modal start --->


                                        <div class="modal fade bs-example-modal-lg{{ $productAddOnLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myLargeModalLabel">Update Product Addon</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form method="post" id="form" action="{{ route('productAddOn.update',$productAddOnLists->id) }}">
                                                        @csrf
                                                        @method('PUT')
                                                    <div class="modal-body">

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="fw-700 fs-16 form-label">Product Addon  Name</label>
                                                                    <input type="text" name="name" value="{{ $productAddOnLists->name }}" required class="form-control" placeholder="Attribute Name">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="fw-700 fs-16 form-label">Price</label>
                                                                <input type="number" value="{{ $productAddOnLists->price }}" name="price" required class="form-control" placeholder="Product Price">
                                                            </div>
                                                        </div>

                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="fw-700 fs-16 form-label">Tax(%)</label>
                                                                <input type="number" name="tax" value="{{ $productAddOnLists->text }}" required class="form-control" placeholder="Product Tax">
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <div class="form-actions mt-10">
                                                            <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save /
                                                                Update
                                                            </button>
                                                            <button type="button" class="btn btn-danger text-start" data-bs-dismiss="modal">Close</button>
                                                        </div>

                                                    </div>
                                                    </form>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->


                                        <!-- edit modal end -->






                                        <a href="javascript:void(0)" onclick="deleteTag({{ $productAddOnLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                        <form id="delete-form-{{ $productAddOnLists->id }}" action="{{ route('productAddOn.destroy',$productAddOnLists->id) }}" method="POST" style="display: none;">
                                            @method('DELETE')
                                                                                              @csrf

                                                                                          </form>



                                    {{-- <a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="ti-marker-alt"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                        <i class="ti-trash"></i>
                                    </a> --}}




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
