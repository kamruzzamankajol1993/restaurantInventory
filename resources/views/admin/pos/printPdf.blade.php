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
            text-align: right;
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
<p style="font-size:12px;">Invoice Number : {{$orderDetail->invoice_id}}</p>
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
        <th class="heading name">Item</th>
        <th class="heading qty" style="width:30px;">Qty</th>
        <th class="heading rate">Rate</th>
        <th class="heading amount">Amount</th>
    </tr>
    </thead>

    <tbody>

        <?php

                                                $totalPrice = 0;

                                                ?>

        @foreach($productDetail as $key=>$productDetails)
    <tr>
        <td>{{$productDetails->product_name}}</td>
        <td>{{$productDetails->product_quantity}}</td>
        <td class="price">{{$productDetails->prodcut_price}}</td>
        <td class="price">{{$productDetails->prodcut_price*$productDetails->product_quantity}}</td>
    </tr>

     <?php

                                                $totalPrice = $totalPrice + ($productDetails->prodcut_price*$productDetails->product_quantity);


                                                ?>
    @endforeach

    <tr>
        <td colspan="3" class="sum-up line">Subtotal</td>
        <td class="line price">{{$totalPrice}}</td>
    </tr>

    <tr>
        <td colspan="3" class="sum-up">Service Charge</td>
        <td class="price">{{ $orderDetail->delivery_charge }}</td>
    </tr>

    <tr>
        <td colspan="3" class="sum-up">Tax</td>
        <td class="price">{{ $orderDetail->vat }}</td>
    </tr>
    @if(empty($orderDetail->extra_discount ))

    @else
    <tr>
        <td colspan="3" class="sum-up">Discount</td>
        <td class="price">{{ $orderDetail->extra_discount }}</td>
    </tr>
    @endif
    <tr>
        <th colspan="3" class="total text">Total</th>
        <th class="total price">{{$orderDetail->grand_total }}</th>
    </tr>
    </tbody>
</table>
<section>
    <p>
        Paid by : <span>{{ $orderDetail->payment_type }}</span>
    </p>
    <p style="text-align:center">
        Thank you for your visit!
    </p>
</section>
<footer style="text-align:center">
    <p>Technology Partner Upgrade U Initiative</p>
</footer>
</body>

</html>
