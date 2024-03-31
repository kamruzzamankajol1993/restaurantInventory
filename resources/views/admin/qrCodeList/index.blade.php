@extends('admin.master.master')

@section('title')
Qr Code List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">

                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Food & Table Management</li>
                    <li class="breadcrumb-item">Qr Code Information </li>
                </ol>

        </div>
    </div>

    <div class="row">
        <!-- Individual column searching (text inputs) Starts-->
        <div class="col-sm-12">
            <div class="card">

                <div class="card-body">

                    @include('flash_message')
                    <div class="table-responsive">

                            <table id="example3" class="display">
                            <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Table Name</th>
                                <th>Qr Code</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($tableList as $key=>$tableLists)
                            <tr>
                                <td>{{ $key+1 }}</td>

                                <td>{{ $tableLists->name }}</td>

                                <td>
                                    <?php
                                    $enc_data = base64_encode($tableLists->name);

                                    $url = url('menu/'.$enc_data)

                                     ?>

{{-- {{ dd($url); }} --}}

                                     <img style="height:120px;width:120px" src="data:image/png;base64,{{DNS2D::getBarcodePNG($url, 'QRCODE')}}" alt="barcode" />
                                </td>


                                <td>
                                    @if (Auth::guard('admin')->user()->can('qrUpdate'))
                                    <a type="button" href="{{ route('qrCodeList.show',$tableLists->id) }}"
                                    class="btn btn-primary shadow btn-xs sharp" >
                                    <i class="fa fa-eye"></i></a>
                                    @endif
                                </td>


                            </tr>
    @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Individual column searching (text inputs) Ends-->
    </div>
</div>
<!-- Container-fluid Ends-->
</div>


@endsection

@section('script')

@endsection

