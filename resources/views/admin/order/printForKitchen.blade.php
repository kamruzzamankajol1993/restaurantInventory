<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'PT Sans', sans-serif;
            height: 100%;
            width: 2.8in;
        }

        @page {
            size: 2.8in 11in;
            margin-top: 0cm;
            margin-left: 0cm;
            margin-right: 0cm;
        }

        table {
            width: 100%;
        }

        tr {
            width: 100%;

        }

        h1 {
            text-align: center;
            vertical-align: middle;
        }

        #logo {
            width: 60%;
            text-align: center;
            -webkit-align-content: center;
            align-content: center;
            padding: 5px;
            margin: 2px;
            display: block;
            margin: 0 auto;
        }

        #logo img
        {
            height: 60px;
            width: 60px;
        }

        header {
            width: 100%;
            text-align: center;
            -webkit-align-content: center;
            align-content: center;
            vertical-align: middle;
        }

        .items thead {
            text-align: center;
        }

        .center-align {
            text-align: center;
        }

        .bill-details td {
            font-size: 12px;
        }

        .receipt {
            font-size: medium;
        }

        .items .heading {
            font-size: 12.5px;
            text-transform: uppercase;
            border-top:1px solid black;
            margin-bottom: 4px;
            border-bottom: 1px solid black;
            vertical-align: middle;
        }

        .items thead tr th:first-child,
        .items tbody tr td:first-child {
            width: 47%;
            min-width: 47%;
            max-width: 47%;
            word-break: break-all;
            text-align: left;
        }

        .items td {
            font-size: 12px;
            text-align: left;
            vertical-align: bottom;
        }

        .price::before {
            content: "\20B9";
            font-family: Arial;
            text-align: right;
        }

        .sum-up {
            text-align: right !important;
        }
        .total {
            font-size: 13px;
            border-top:1px dashed black !important;
            border-bottom:1px dashed black !important;
        }
        .total.text, .total.price {
            text-align: right;
        }
        .total.price::before {
            content: "\20B9";
        }
        .line {
            border-top:1px solid black !important;
        }
        .heading.rate {
            width: 20%;
        }
        .heading.amount {
            width: 25%;
        }
        .heading.qty {
            width: 5%
        }
        p {
            padding: 1px;
            margin: 0;
        }
        section, footer {
            font-size: 12px;
        }
    </style>
</head>

<body>
<header>
    <div id="logo" class="media">
        <img src="{{ asset('/') }}public/logo.jfif" alt="">
    </div>
</header>
<p style="font-size:12px;">Invoice No : {{$orderDetail->invoice_id}}</p>
<table class="bill-details">
    <tbody>
    <tr>
        <td>Date : <span>{{ date('d-m-y', strtotime($orderDetail->created_at)) }}</span></td>
        <td>Time : <span>{{ date('h:i:s', strtotime($orderDetail->created_at)) }}</span></td>
    </tr>
    <tr>
        <td>Table #: <span>   <?php

                                    $table = DB::table('tables')->where('id',$orderDetail->table_id)->value('name');


                                        ?>

                                        {{ $table  }} 
                                        
                                        </span></td>
        <td></td>
    </tr>
    <tr>
        <th class="center-align" colspan="2"><span class="receipt">Original Receipt</span></th>
    </tr>
    </tbody>
</table>

<table class="items">
    <thead>
    <tr>
        <th class="heading name" style="width:40;">Item</th>
        <th class="heading qty">Qty</th>
    </tr>
    </thead>

    <tbody>
        @foreach($productDetail as $key=>$productDetails)
        
         <?php

                                    $chinese_name = DB::table('products')->where('id',$productDetails->product_id)
                                    ->value('chinese_name');


                                        ?>
                                        
    <tr>
        <td >{{ $productDetails->product_name }}<br><span style="font-size: 18px">{{ $chinese_name }}</span></td>
        <td>{{ $productDetails->product_quantity }}</td>
        
    </tr>
    @endforeach
   
   
    </tbody>
</table>

<footer style="text-align:center; margin-top:20px;">
    <p>Technology Partner Upgrade U Initiative</p>
</footer>
</body>

</html>