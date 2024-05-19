<div class="text-end">


    @if(count($cartContent) == 0)

    @else
    <button id="clearAllCartDataa" class="btn btn-danger me-10"
                   data-bs-toggle="tooltip" data-bs-original-title="Clear Cart">
                    <i class="fa fa-trash"></i>

</button>
@endif

</div>
<div class="col-lg-12 mt-4">
    <table class="table table-bordered">
        <tr>
            <th>Item</th>
            <th>QTY</th>
            <th>Price</th>
            <th>Action</th>
        </tr>

        <?php

        $totalAddOnPrice = 0;
        $totalVariationPrice = 0;
        $totalProductDiscount = 0;
        $totalProductTax = 0;
        $totalFinalCostOne=0;

        ?>

        @foreach($cartContent as $productInfoCArt)
        <tr>
            <td>
                <img src="{{ asset('/') }}{{ $productInfoCArt->attributes->image }}" height="30" width="30" alt="">
                {{ $productInfoCArt->name }}

                {{-- {{ implode(',',$productInfoCArt->attributes->addOnLabelList) }}
                {{ implode(',',$productInfoCArt->attributes->varationLabelList) }}
                {{ implode(',',$productInfoCArt->attributes->variationPriceList) }} --}}



            </td>
            <td>
                <input class="form-control" id="updateCartQuantityy{{ $productInfoCArt->id  }}" type="number" value="{{ $productInfoCArt->quantity }}">
            </td>
            <td>
                {{ ($productInfoCArt->price + $productInfoCArt->attributes->variationPrice)*$productInfoCArt->quantity }} Taka
            </td>
            <td>
                <a id="singleItemDeletee{{ $productInfoCArt->id  }}" href="javascript:void(0)" class="text-info me-10"
                   data-bs-toggle="tooltip" data-bs-original-title="Edit">
                    <i class="fa fa-trash"></i>
                </a>
            </td>
        </tr>

        <?php
        $totalFinalCostOne = $totalFinalCostOne + (($productInfoCArt->price + $productInfoCArt->attributes->variationPrice + $productInfoCArt->attributes->addOnPrice)*$productInfoCArt->quantity);
        $totalFinalCost = ($productInfoCArt->price + $productInfoCArt->attributes->variationPrice + $productInfoCArt->attributes->addOnPrice)*$productInfoCArt->quantity;

         $getDiscountInfo = DB::table('products')
                      ->where('id',$productInfoCArt->id)->first();

         if($getDiscountInfo->discount_type == 'Amount'){



            $getFinalCal = intval($getDiscountInfo->discount_price);



         }else{

            $getFinalCal = intval(($totalFinalCost/100)*$getDiscountInfo->discount_price);


         }

         $totalProductDiscount = $totalProductDiscount+$getFinalCal;



         if($getDiscountInfo->tax_type == 'Amount'){

            $getFinalCalTax = intval($getDiscountInfo->tax_rate);



        }else{

        $getFinalCalTax = intval(($totalFinalCost/100)*$getDiscountInfo->tax_rate);


        }

        $totalProductTax = $totalProductTax+$getFinalCalTax;



         $totalVariationPrice = $totalVariationPrice + $productInfoCArt->attributes->variationPrice;
         $totalAddOnPrice = $totalAddOnPrice + $productInfoCArt->attributes->addOnPrice;

        ?>
        @endforeach
    </table>
</div>
<div class="col-lg-12 mt-2">
    <table class="table table-borderless">

        <tr>
            <td>Subtotal</td>
            <td style="text-align:right">: {{ $totalFinalCostOne - $totalAddOnPrice  }}</td>
        </tr>

        <tr>
            <td>Addon </td>
            <td style="text-align:right">: {{ $totalAddOnPrice }}</td>
        </tr>

        <tr>
            <td>Product Discount</td>
            <td style="text-align:right">: {{ $totalProductDiscount }}</td>
        </tr>
        <tr>
            <td>Extra Discount :</td>
            <td style="text-align:right">  <input id="extraDiscountt" value="0" class="form-control" type="number"/></td>
        </tr>
        <tr>
            <td>VAT/TAX:</td>
            <td style="text-align:right">: {{ $totalProductTax }}</td>
        </tr>
        <tr>
            <td>Delivery Charge :</td>
            <td style="text-align:right">: 0 </td>
        </tr>
        <tr style="border-top: 1px solid black">
            <td>Total</td>
            <td style="text-align:right">: {{ ($totalFinalCostOne + $totalProductTax ) - $totalProductDiscount  }}</td>
        </tr>
    </table>
</div>
{{-- <div class="col-lg-6 mt-4">
    <button type="button"
            class="waves-effect waves-light btn mb-5 bg-gradient-primary">Cancel
        Order
    </button>
</div> --}}
<div class="col-lg-6 mt-4">
    <button type="button"
            class="btn-block waves-effect waves-green btn mb-5 bg-gradient-primary">
        Send To Kitchen
    </button>
</div>
@include('admin.pos.partial.ajaxscript')
