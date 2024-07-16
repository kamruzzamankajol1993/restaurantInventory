<div class="text-end">


    @if(count($cartContent) == 0)

    @else
    <a id="clearAllCartDataa" class="btn btn-danger me-10"
                   data-bs-toggle="tooltip" data-bs-original-title="Clear Cart">
                    Clear All Data

</a>
@endif

</div>

                                 <?php

                                 $totalAddOnPrice = 0;
                                 $totalVariationPrice = 0;
                                 $totalProductDiscount = 0;
                                 $totalProductTax = 0;
                                 $totalFinalCostOne=0;

                                 ?>
<div class="col-lg-12">
    @foreach($cartContent as $productInfoCArt)
    <div class="d-flex bd-highlight">
        <div class="p-2 flex-fill">
            <div class="d-flex justify-content-between">
                <img height="100" width="100" src="{{ asset('/') }}{{ $productInfoCArt->attributes->image }}" alt="">
                <div class="pos-product-text">
                    <p>{{ $productInfoCArt->name }}</p>
                    <p>{{ $productInfoCArt->price }} Taka</p>
                    {{-- <input class="form-control" id="updateCartQuantity{{ $productInfoCArt->id  }}" type="number" value="{{ $productInfoCArt->quantity }}"> --}}
                    {{-- <div class="d-flex">
                        <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a>
                        <input type="text" class="custom-form" name="qty"
                               value="1">
                        <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a>
                    </div> --}}

                    <div class="d-flex p">


                        <a href="#" id="btn-minusone{{ $productInfoCArt->id }}" class="btn btn-primary btn-sm me-5 btn-minusone" data-type="minus" data-field="quant[2]"><i class="fa fa-minus"></i></a>


                        <input type="text" value="{{ $productInfoCArt->quantity }}" min="1" max="100"  name="quant[2]" id="updateCartQuantity{{ $productInfoCArt->id }}" class="quantityResultone custom-form"
                              >

                        <a href="#" class="btn btn-primary btn-sm ms-5 btn-plusone" id="btn-plusone{{ $productInfoCArt->id }}" data-type="plus" data-field="quant[2]"><i class="fa fa-plus"></i></a>

                    </div>
                </div>
            </div>
        </div>
        <div class="p-2 flex-fill text-end">
            <a id="singleItemDelete{{ $productInfoCArt->id  }}" class="btn btn-danger"><i class="fa fa-trash"></i></a>
        </div>
    </div>
    <hr>
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
    <input type="hidden" class="pPriceAjax{{ $productInfoCArt->id }}" name="price" value="{{ $productInfoCArt->price }}">
    @endforeach

</div>
</div>
</div>
</div>
<div class="pos-sidebar-button">
<table class="custom-table">
<tbody>
<tr>
    <td>Subtotal</td>
    <td class="text-end"><span id="t2as">{{ $totalFinalCostOne}}</span>
        <input type="hidden" name="vatTAx" value="{{ $totalProductTax  }}" id="vatTax"/>
        <input type="hidden" name="addOn" value="{{ $totalAddOnPrice  }}" id="addOn"/>
        <input type="hidden" name="discount" value="{{ $totalProductDiscount  }}" id="discount"/>
        <input type="hidden" name="subTotal" value="{{ $totalFinalCostOne}}" id="subTotalAjax"/></td>
</tr>
{{-- <tr>
    <td>Discount</td>
    <td class="text-end"><input name="extra_Discount" id="extraDiscountAjax"  class="form-control" type="text"/></td>
</tr> --}}
</tbody>
<tfoot style="border-top: 1px solid black">
    <tr>
        <td>Total</td>
        <td class="text-end"> <span id="t2a">
            {{ ($totalFinalCostOne  )   }}
            </span>
            <input name="extra_Discount" id="extraDiscount" value="0" class="form-control" type="hidden"/>
            <input type="hidden" name="total" value="{{$totalFinalCostOne}}" id="totala"/></td>
    </tr>
</tfoot>
</table>
<div class="col-lg-6 mt-4" style="display: none;">
    <button type="submit"
            class="btn-block waves-effect waves-green btn mb-5 bg-gradient-primary">
        Send To Kitchen
    </button>
</div>
<script>
    $(function() {
  $('.btn-plusone,.btn-minusone').on('click', function() {
    var $qty = $('.quantityResultone').val(),
      currentVal = parseInt($qty),
      isAdd = $(this).hasClass('btn-plusone');
    !isNaN(currentVal) && $('.quantityResultone').val(
      isAdd ? ++currentVal : (currentVal > 1 ? --currentVal : currentVal)
    );
  });
});
</script>
<script>
$(function() {
    $('[id^=btn-plusone]').on('click', function() {

              var main_id = $(this).attr('id');
              var result = main_id.slice(11);
              var quantity = $('#updateCartQuantity'+result).val();

              var extraDiscountAjax = $('#extraDiscountAjax').val();
              var price = $('.pPriceAjax'+result).val();
              var result= (parseInt(price)*parseInt(quantity)) - parseInt(extraDiscountAjax);

              $('#t2as').html(parseInt(price)*parseInt(quantity));

              $('#subTotalAjax').val(parseInt(price)*parseInt(quantity));
              $('#totala').val(result);
              $('#t2a').html(result);


    });
  });


  $(function() {
    $('[id^=btn-minusone]').on('click', function() {

              var main_id = $(this).attr('id');
              var result = main_id.slice(12);
              var quantity = $('#updateCartQuantity'+result).val();

              var extraDiscountAjax = $('#extraDiscountAjax').val();
              var price = $('.pPriceAjax'+result).val();
              var result= (parseInt(price)*parseInt(quantity)) - parseInt(extraDiscountAjax);

              $('#t2as').html(parseInt(price)*parseInt(quantity));

              $('#subTotalAjax').val(parseInt(price)*parseInt(quantity));
              $('#totala').val(result);
              $('#t2a').html(result);

    });
  });
</script>

<script>



    $('#extraDiscountAjax').on('keyup', function() {

        var extraDisPrice = $(this).val();
        var total = $('#totala').val();

        var result = total - extraDisPrice;

//alert(result)
        $('#totala').val(result);
        $('#t2a').html(result);

    });

    </script>
@include('admin.pos.partial.ajaxscript')
