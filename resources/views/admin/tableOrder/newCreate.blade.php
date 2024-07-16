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

                    @foreach($tableList as $key=>$tableLists)
                    <div class="col-xl-3 col-md-4 col-xl-2">
                        <a class="box box-link-pop text-center" href="{{ route('addOrderToTable',$tableLists->id) }}">
                            <div class="box-body">
                                <p class="fs-40 text-danger">

                                    <?php

                                    $totalOrder = DB::table('orders')->where('table_id',$tableLists->id)->count();


                                        ?>
                                    <strong>{{ $totalOrder }}</strong>
                                </p>
                            </div>
                            <div class="box-body py-25 bg-danger-light btsr-0 bter-0">
                                <p class="fw-600">
                        <span class="icon-Money me-5 text-danger"><span class="path1"></span><span
                                    class="path2"></span></span> {{ $tableLists->name }}
                                </p>
                            </div>
                        </a>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>


    </div>
</section>

@endsection
