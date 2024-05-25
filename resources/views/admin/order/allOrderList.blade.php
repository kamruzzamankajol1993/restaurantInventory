@extends('admin.master.master')

@section('title')
All Order List
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
                                    <strong>{{ $pendingOrderListCount }}</strong>
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
                                    <strong>{{ $confirmOrderListCount }}</strong>
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
                                    <strong>{{ $processingOrderListCount }}</strong>
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
                                    <strong>0</strong>
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
                                    <strong>0</strong>
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
                                    <strong>0</strong>
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
                                    <strong>0</strong>
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
                                    <strong>0</strong>
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
                                <th>Order Date</th>
                                <th>Customer Info</th>
                                <th>Branch</th>
                                <th>Total Amount</th>
                                <th>Order Status</th>
                                <th>Order Type</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                @foreach($kitchenOrderList as $key=>$kitchenOrderLists)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $kitchenOrderLists->invoice_id }}</td>
                                <td>
                                    <span>{{ date('d-F-y', strtotime($kitchenOrderLists->created_at)) }}</span>
                                    <br>
                                    <span>{{ date('H:i:s A', strtotime($kitchenOrderLists->created_at)) }}</span>
                                </td>
                                <td>

                                    @if($kitchenOrderLists->customer_id == 'Walk In Customer')

                                    <?php
                                $sPhone = DB::table('ship_addresses')
                                 ->where('order_id',$kitchenOrderLists->id)->value('phone');

                                    ?>
                                    <span>{{ $kitchenOrderLists->customer_id }}</span>
                                    <span>{{ $sPhone }}</span>
                                    @else


                                    <?php

                                     $sPhone = DB::table('ship_addresses')
                                     ->where('order_id',$kitchenOrderLists->id)->value('phone');


                                     $customerName = DB::table('customers')
                                     ->where('id',$kitchenOrderLists->customer_id)->value('name');

                                     ?>


                                        <span>{{ $customerName}}</span>
                                        <span>{{ $sPhone }}</span>

                                    @endif
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">{{ $kitchenOrderLists->branch }}</span>
                                </td>
                                <td>
                                    <span>{{ $kitchenOrderLists->grand_total }} Taka</span> <br>
                                    <span class="text-danger">Unpaid</span>
                                </td>
                                <td>
                                    <span class="badge badge-primary-light">{{ $kitchenOrderLists->status }}</span>
                                </td>
                                <td>
                                    <span class="badge badge-info-light">{{ $kitchenOrderLists->order_type }}</span>
                                </td>
                                <td>
                                    <!--<a href="javascript:void(0)" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="View">-->
                                    <!--    <i class="fa fa-eye"></i>-->
                                    <!--</a>-->
                                    <!--<a href="{{ route('printInvoice',$kitchenOrderLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Print">-->
                                    <!--    <i class="fa fa-print"></i>-->
                                    <!--</a>-->
                                    
                                    <a href="{{ route('pos.show',$kitchenOrderLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="View">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="{{ route('printPdf',$kitchenOrderLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Print">
                                        <i class="fa fa-print"></i>
                                    </a>
                                    
                                    
                                </td>
                            </tr>

                            @endforeach


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
