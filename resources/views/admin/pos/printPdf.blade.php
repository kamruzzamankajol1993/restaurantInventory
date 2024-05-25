<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Invoice</title>
   <style>
        body {
            color: #333639;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* .body_size
        {
            width: 75mm;
            height: 100mm;
            padding: 3px;
        } */

        @page  {
      size: 56mm 100mm;
      margin: 3px;
    }

        table {
            width: 100%;
        }

        .first_table tr td {
            width: 50%;
        }

        .first_table tr td:nth-child(1) img {
            height:70px;
            width:450px;
        }

        .first_table tr td:nth-child(2)
        {
            text-align: right;
        }

        .first_table tr td:nth-child(2) img {
           
        }

        .first_table tr td:nth-child(2) p {
            font-size:8px;
            padding:0;
            margin:0;
        }
        .first_table tr td:nth-child(2) h4 {
            font-size:12px;
            padding:0;
            margin:0;
        }

        hr{
            margin-bottom: 0;
            margin-top:0;
        }

        .second_table tr td {
            font-size: 13px;
            vertical-align: top;
        }

        .second_table tr td:nth-child(1) {
            width: 40%;
        }
        .second_table tr td p{
            margin: 0;
            padding: 2px;
        }

        .second_table tr td:nth-child(2)
        {
            font-weight: bold;
            width: 60%;
        }

        .third_table {
            border-collapse: collapse;
            margin-top: 5px;
            font-size: 10px;
        }
        .third_table th {
            padding: 2px;
            text-align: left;
            background-color: #F8F9FA;
            border: 1px solid #e9ecef;
        }

        .third_table tr th:nth-child(2)
        {
            width: 40px;
        }

        .third_table td {
            border: 1px solid #e9ecef;
            padding: 4px;
        }

        .forth_table
        {
            font-size: 12px;
            vertical-align: top;
        }
        .forth_table tr td:nth-child(1)
        {
            width: 40%;
        }
        .forth_table tr td:nth-child(2)
        {
            width: 60%;
        }

        .inner-table tr td:nth-child(1)
        {
            width: 65%;
        }
    </style>
</head>
<body>



            <table class="first_table">
        <tr>
            <td>
                <!--<img src="{{ asset('public/new_admin/assets/images/rqr.jpg') }}" height="50" alt="">-->
            </td>
            <td>
                <img src="{{asset('/')}}{{$icon}}"  alt="">
                <p style="font-weight: bold;">{{$ins_phone}}</p>
                <h4>{{$ins_name}}</h4>
            </td>
        </tr>
    </table>

    <hr>
 @if($orderDetail->order_type == 'Order From Waiter')
  
 <table class="second_table">
        <tr>
            <td>Customer Name</td>
            <td>:Walk in Customer</td>
        </tr>
        <tr>

            <td>Mobile Number</td>
            <td>:N/A</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>:N/A</td>
        </tr>
    </table>

 @else
 
 <?php



        $invoice_detail_new = DB::table('ship_addresses')
        ->where('order_id', $orderDetail->id )->first();


                                ?>
                                
                                @if(!$invoice_detail_new)
                                
                                <table class="second_table">
        <tr>
            <td>Customer Name</td>
            <td>:N/A</td>
        </tr>
        <tr>

            <td>Mobile Number</td>
            <td>:N/A</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>:N/A</td>
        </tr>
    </table>
                                
                                @else
    <table class="second_table">
        <tr>
            <td>Customer Name</td>
            <td>:{{ $invoice_detail_new->name }}</td>
        </tr>
        <tr>

            <td>Mobile Number</td>
            <td>:{{ $invoice_detail_new->phone }}</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>:{{ $invoice_detail_new->address }}</td>
        </tr>
    </table>
    @endif
    @endif



<table class="third_table">

    <thead>
    <tr>
       <th style="width:5%">#</th>
                <th style="width:55%">Item</th>
                <th style="width:15%">Rate</th>
                <th style="width:5%">Q.T</th>
                <th style="width:20%">Amount</th>
    </tr>
    </thead>
    <tbody>
        @foreach ($productDetail as $key => $productDetails)
       
                              
        <tr>
                            <td>{{ $key+1 }}</td>
                            <td>{{ $productDetails->product_name }}</td>
                            <td>{{ $productDetails->prodcut_price }}</td>
                            <td>{{ $productDetails->product_quantity }}</td>

                            <td>{{ $productDetails->prodcut_price*$productDetails->product_quantity }}</td>
                        </tr>


        @endforeach

    </tbody>
</table>

<table class="forth_table">


    <tr>
    <td>
                <h4><span style="font-size:8px;">Powered By ResNova Tech Limited</span>
                </h4>
            </td>
    <td>
      <table class="inner-table">
        <tr>
          <td>Sub Total</td>
          <td>{{ $orderDetail->subtotal }}</td>
        </tr>
        <tr>
          <td>Addon Price</td>
          <td>{{ $orderDetail->addon }}</td>
        </tr>
        <tr>
            <td>Discount</td>
            <td>{{ $orderDetail->discount }}</td>
          </tr>
          
          <tr>
            <td>E.Discount</td>
            <td>{{ $orderDetail->extra_discount }}</td>
          </tr>
          
          <tr>
          <td>Tax</td>
          <td>{{ $orderDetail->vat }}</td>
        </tr>
        
        <tr>
          <td>S.Charge</td>
          <td>0</td>
        </tr>
          
        <tr style="font-weight:bold">
          <td>Total</td>
          <td>{{ $orderDetail->grand_total }}</td>
        </tr>



      </table>
    </td>
  </tr>
</table>

</body>
</html>
