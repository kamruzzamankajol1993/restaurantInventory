@extends('admin.master.master')

@section('title')
Order List
@endsection
@section('css')

@endsection


@section('body')
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Order List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>10</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Pending
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>35</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Confirmed
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-warning">
                                    <strong>15</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-warning-light btsr-0 bter-0">
                                <p class="fw-600">
                                    <span class="icon-Ticket me-5 text-warning"></span> Processing
                                </p>
                            </div>
                        </a>
                    </div>

                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>987</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Out For Delivery
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>35</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Delivered
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-warning">
                                    <strong>15</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-warning-light btsr-0 bter-0">
                                <p class="fw-600">
                                    <span class="icon-Ticket me-5 text-warning"></span> Canceled
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-danger">
                                    <strong>98</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> Return
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="javascript:void(0)">
                            <div class="box-body">
                                <p class="fs-40 text-info">
                                    <strong>35</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-info-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Airplay-video me-5 text-info"><span class="path1"></span><span
                                    class="path2"></span></span> Failed to Delivery
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">All Order List</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="table-responsive">
                        <table id="example5" class="table table-bordered" style="width:100%">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Order ID</th>
                                <th>Delivery Date</th>
                                <th>Customer Info</th>
                                <th>Branch</th>
                                <th>Total Amount</th>
                                <th>Order Status</th>
                                <th>Order Type</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>01</td>
                                <td>01011</td>
                                <td>
                                    <span>29 April 2024</span> <br>
                                    <span>05:46 AM</span>
                                </td>
                                <td>
                                    <span>Midani Ahmed</span>
                                    <span>018*******</span>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">Dhaka</span>
                                </td>
                                <td>
                                    <span>308.48 Taka</span> <br>
                                    <span class="text-danger">Unpaid</span>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">Dhaka</span>
                                </td>
                                <td>
                                    <span class="badge badge-info-light">Dhaka</span>
                                </td>
                                <td>
                                    <a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>01</td>
                                <td>01011</td>
                                <td>
                                    <span>29 April 2024</span> <br>
                                    <span>05:46 AM</span>
                                </td>
                                <td>
                                    <p>Midani Ahmed</p>
                                    <p>018*******</p>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">Dhaka</span>
                                </td>
                                <td>
                                    <span>308.48 Taka</span> <br>
                                    <span class="text-danger">Unpaid</span>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">Dhaka</span>
                                </td>
                                <td>
                                    <span class="badge badge-info-light">Dhaka</span>
                                </td>
                                <td>
                                    <a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </td>
                            </tr>

                            </tbody>
                            <tfoot>
                            <tr>
                                <th>SL</th>
                                <th>Order ID</th>
                                <th>Delivery Date</th>
                                <th>Customer Info</th>
                                <th>Branch</th>
                                <th>Total Amount</th>
                                <th>Order Status</th>
                                <th>Order Type</th>
                            </tr>
                            </tfoot>
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
