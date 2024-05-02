@extends('admin.master.master')

@section('title')
Attribute
@endsection


@section('css')

@endsection

@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Attribute List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
@include('flash_message')
                    <div class="card-top px-card pt-4">
                        <div class="d-flex flex-column flex-md-row flex-wrap gap-3 justify-content-md-between align-items-md-center">
                            <h5 class="d-flex align-items-center gap-2 mb-0">
                                Attribute Table
                                <span class="badge badge-soft-dark rounded-50 fz-12">{{ count($productAttributeList) }}</span>
                            </h5>
                            <div class="d-flex flex-wrap justify-content-md-end gap-3">
                                <form action="{{ route('searchProductAttribute') }}" method="GET">
                                    <div class="input-group">
                                        <input id="#" type="text" name="search"  class="form-control me-3" placeholder="Search by name" aria-label="Search" value="" required="" autocomplete="off">
                                        <div class="input-group-append">
                                            <button type="submit" class="btn btn-primary">Search</button>
                                        </div>
                                    </div>
                                </form>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg">
                                    <i class="fa fa-plus"></i>
                                    Add Attribute
                                </button>
                            </div>
                        </div>
                    </div>



                    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myLargeModalLabel">Add Product Attributes</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form method="post" id="form" action="{{ route('productAttribute.store') }}">
                                    @csrf
                                <div class="modal-body">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="fw-700 fs-16 form-label">Attribute Name</label>
                                                <input type="text" name="name" required class="form-control" placeholder="Attribute Name">
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
                                <th> Attributes Name</th>
                                <th>Action</th>
                            </tr>
                            @foreach($productAttributeList as $key=>$productAttributeLists)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $productAttributeLists->name }}</td>
                                <td>



                                    <a class="text-info me-10" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $productAttributeLists->id }}">
                                        <i class="fa fa-pencil"></i>
                                        </a>


                                        <!-- edit modal start --->


                                        <div class="modal fade bs-example-modal-lg{{ $productAttributeLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myLargeModalLabel">Update Product Attributes</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <form method="post" id="form" action="{{ route('productAttribute.update',$productAttributeLists->id) }}">
                                                        @csrf
                                                        @method('PUT')
                                                    <div class="modal-body">

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="fw-700 fs-16 form-label">Attribute Name</label>
                                                                    <input type="text" name="name" value="{{ $productAttributeLists->name }}" required class="form-control" placeholder="Attribute Name">
                                                                </div>
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






                                        <a href="javascript:void(0)" onclick="deleteTag({{ $productAttributeLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                        <form id="delete-form-{{ $productAttributeLists->id }}" action="{{ route('productAttribute.destroy',$productAttributeLists->id) }}" method="POST" style="display: none;">
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
