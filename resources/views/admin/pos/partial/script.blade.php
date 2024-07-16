<script>
    $(function() {
  $('.btn-plus,.btn-minus').on('click', function() {
    var $qty = $(this).closest('.p').find('.quantityResult'),
      currentVal = parseInt($qty.val()),
      isAdd = $(this).hasClass('btn-plus');
    !isNaN(currentVal) && $qty.val(
      isAdd ? ++currentVal : (currentVal > 1 ? --currentVal : currentVal)
    );
  });
});
</script>


<!--product add script-->
<script>

$(function() {
  $('[id^=btn-plus]').on('click', function() {

            var main_id = $(this).attr('id');
            var result = main_id.slice(8);
            var quantity = $('#quantityResult'+result).val();
            var price = $('.pPrice'+result).val();


    var final_variation_price = 0;
    var total_final_variation_price= $('.variation'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_variation_price.length; i++) {
    final_variation_price += total_final_variation_price[i] << 0;
}




var final_addOn_price = 0;
    var total_final_addOn_price= $('.addonData'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_addOn_price.length; i++) {
    final_addOn_price += total_final_addOn_price[i] << 0;
}



   var totalValueBeforeDiscount = (parseInt(price)+parseInt(final_addOn_price)+parseInt(final_variation_price))*parseInt(quantity);


   $('#finalTotalAmount'+result).html('');
   $('#finalTotalAmount'+result).html(totalValueBeforeDiscount+' TAKA');

   $('#finalAmountForDataBase'+result).val(totalValueBeforeDiscount);



  });
});


$(function() {
  $('[id^=btn-minus]').on('click', function() {

            var main_id = $(this).attr('id');
            var result = main_id.slice(9);
            var quantity = $('#quantityResult'+result).val();

            var price = $('.pPrice'+result).val();


var final_variation_price = 0;
var total_final_variation_price= $('.variation'+result+':checked').map(function (idx, ele) {
return $(ele).val();
}).get();

for (var i = 0; i < total_final_variation_price.length; i++) {
final_variation_price += total_final_variation_price[i] << 0;
}




var final_addOn_price = 0;
var total_final_addOn_price= $('.addonData'+result+':checked').map(function (idx, ele) {
return $(ele).val();
}).get();

for (var i = 0; i < total_final_addOn_price.length; i++) {
final_addOn_price += total_final_addOn_price[i] << 0;
}



var totalValueBeforeDiscount = (parseInt(price)+parseInt(final_addOn_price)+parseInt(final_variation_price))*parseInt(quantity);


$('#finalTotalAmount'+result).html('');
$('#finalTotalAmount'+result).html(totalValueBeforeDiscount+' TAKA');
$('#finalAmountForDataBase'+result).val(totalValueBeforeDiscount);

    //alert(quantity);

  });
});


//new code start


$(function() {
  $('[id^=variation_basic_checkbox_]').on('click', function() {




            var main_id = $(this).attr('class');
            var result = main_id.slice(9);
            //alert(result);


            var quantity = $('#quantityResult'+result).val();
            var price = $('.pPrice'+result).val();

            var final_variation_price = 0;
    var total_final_variation_price= $('.variation'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_variation_price.length; i++) {
    final_variation_price += total_final_variation_price[i] << 0;
}




var final_addOn_price = 0;
    var total_final_addOn_price= $('.addonData'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_addOn_price.length; i++) {
    final_addOn_price += total_final_addOn_price[i] << 0;
}



   var totalValueBeforeDiscount = (parseInt(price)+parseInt(final_addOn_price)+parseInt(final_variation_price))*parseInt(quantity);


   $('#finalTotalAmount'+result).html('');
   $('#finalTotalAmount'+result).html(totalValueBeforeDiscount+' TAKA');
   $('#finalAmountForDataBase'+result).val(totalValueBeforeDiscount);

  });
});



$(function() {
  $('[id^=basic_checkbox_]').on('click', function() {

            var main_id = $(this).attr('class');
            var result = main_id.slice(9);



            var quantity = $('#quantityResult'+result).val();
            var price = $('.pPrice'+result).val();


            var final_variation_price = 0;
    var total_final_variation_price= $('.variation'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_variation_price.length; i++) {
    final_variation_price += total_final_variation_price[i] << 0;
}




var final_addOn_price = 0;
    var total_final_addOn_price= $('.addonData'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_addOn_price.length; i++) {
    final_addOn_price += total_final_addOn_price[i] << 0;
}



   var totalValueBeforeDiscount = (parseInt(price)+parseInt(final_addOn_price)+parseInt(final_variation_price))*parseInt(quantity);


   $('#finalTotalAmount'+result).html('');
   $('#finalTotalAmount'+result).html(totalValueBeforeDiscount+' TAKA');
   $('#finalAmountForDataBase'+result).val(totalValueBeforeDiscount);

  });
});


// new code end


</script>


<script>

    $(function() {

  $('[id^=finalTotalAdd]').on('click', function() {

            var main_id = $(this).attr('id');
            var result = main_id.slice(13);

            var quantity = $('#quantityResult'+result).val();
            var cartTotalAmount = $('#finalAmountForDataBase'+result).val();


            var final_addOn_price = 0;
    var total_final_addOn_price= $('.addonData'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_addOn_price.length; i++) {
    final_addOn_price += total_final_addOn_price[i] << 0;
}


var final_variation_price = 0;
    var total_final_variation_price= $('.variation'+result+':checked').map(function (idx, ele) {
   return $(ele).val();
}).get();

for (var i = 0; i < total_final_variation_price.length; i++) {
    final_variation_price += total_final_variation_price[i] << 0;
}



var varationLabelList = $('.variation'+result+':checked').map(function (idx, ele) {
                 return $(ele).attr('id');
               }).get();

var addOnLabelList= $('.addonData'+result+':checked').map(function (idx, ele) {
   return $(ele).data('addon');
}).get();


//alert(addOnLabelList);

var extraDiscount = $('#extraDiscount').val();



            $.ajax({
        url: "{{ route('itemAddToCart') }}",
        method: 'get',
        data: {extraDiscount:extraDiscount,addOnLabelList:addOnLabelList,varationLabelList:varationLabelList,total_final_variation_price:total_final_variation_price,result:result,quantity:quantity,cartTotalAmount:cartTotalAmount,final_addOn_price:final_addOn_price,final_variation_price:final_variation_price},
        beforeSend: function(){
        $('.ajax-loader').show()
        },
        complete: function(){
        $('.ajax-loader').hide()
        },
        success: function(data) {

            $('.modal').modal('hide');

            $('#hidem').hide();

        alertify.set('notifier','position','top-center');
        alertify.success('Item Added To Cart SuccessFully');
        //location.reload(true);

        $('#ajaxDataForCart').html('');
        $('#ajaxDataForCart').html(data);


        }
        });



  });
});


$(function() {

$('[id^=updateCartQuantity]').on('keyup', function() {

    var extraDiscount = $('#extraDiscount').val();
    var main_id = $(this).attr('id');
    var result = main_id.slice(18);

    var quantity = $('#updateCartQuantity'+result).val();

    $.ajax({
        url: "{{ route('itemUpdateToCart') }}",
        method: 'get',
        data: {extraDiscount:extraDiscount,result:result,quantity:quantity},
        beforeSend: function(){
        $('.ajax-loader').show()
        },
        complete: function(){
        $('.ajax-loader').hide()
        },
        success: function(data) {

            //$('.modal').modal('hide');

        alertify.set('notifier','position','top-center');
        alertify.success('Cart Updated SuccessFully');
        //location.reload(true);

        $('#ajaxDataForCart').html('');
        $('#ajaxDataForCart').html(data);


        }
        });

    //alert(result);


});
});


$(function() {

$('#clearAllCartData').on('click', function() {

     var result = 1;
     if (confirm('Are you sure you want to clear the cart?')) {
    $.ajax({
        url: "{{ route('clearAllCartData') }}",
        method: 'get',
        data: {result:result},
        beforeSend: function(){
        $('.ajax-loader').show()
        },
        complete: function(){
        $('.ajax-loader').hide()
        },
        success: function(data) {

            //$('.modal').modal('hide');

        alertify.set('notifier','position','top-center');
        alertify.error('Cart Clear SuccessFully');
        //location.reload(true);

        $('#ajaxDataForCart').html('');
        $('#ajaxDataForCart').html(data);


        }
        });

    }

});
});





$(function() {

$('[id^=singleItemDelete]').on('click', function() {


    var main_id = $(this).attr('id');
    var result = main_id.slice(16);

    var extraDiscount = $('#extraDiscount').val();
    if (confirm('Are you sure you want to Remove From The cart?')) {
    $.ajax({
        url: "{{ route('deleteSingleData') }}",
        method: 'get',
        data: {extraDiscount:extraDiscount,result:result},
        beforeSend: function(){
        $('.ajax-loader').show()
        },
        complete: function(){
        $('.ajax-loader').hide()
        },
        success: function(data) {

            //$('.modal').modal('hide');

        alertify.set('notifier','position','top-center');
        alertify.error('Item Deleted From Cart SuccessFully');
        //location.reload(true);

        $('#ajaxDataForCart').html('');
        $('#ajaxDataForCart').html(data);


        }
        });

    }


});
});




</script>
<!-- end product add  script --->
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




              var price = $('.pPriceAjaxm'+result).val();
              var result= (parseInt(price)*parseInt(quantity));
              $('#updateCartQuantity'+result).val(quantity);
              $('#t2s').html(parseInt(price)*parseInt(quantity));

              $('#subTotal').val(parseInt(price)*parseInt(quantity));
              $('#total').val(result);
              $('#t2').html(result);


    });
  });


  $(function() {
    $('[id^=btn-minusone]').on('click', function() {

              var main_id = $(this).attr('id');
              var result = main_id.slice(12);
              var quantity = $('#updateCartQuantity'+result).val();


              var price = $('.pPriceAjaxm'+result).val();
              var result= (parseInt(price)*parseInt(quantity));

              $('#t2s').html(parseInt(price)*parseInt(quantity));
              $('#updateCartQuantity'+result).val(quantity);
              $('#subTotal').val(parseInt(price)*parseInt(quantity));
              $('#total').val(result);
              $('#t2').html(result);

    });
  });
</script>


<script>

$(function() {

$('#extraDiscount').on('keyup', function() {

    var extraDisPrice = $(this).val();
    var total = $('#total').val();

    var result = total - extraDisPrice;


    $('#total').val(result);
    $('#t2').html(result);

});
});
</script>

<!-- end new code 20 may end --->

<script>
$(function() {

    $('#order_type').on('change', function() {

        var mainValue = $(this).val();

        if(mainValue == 'Home Delivery'){
            $('#shipAddress').show();
        }else{
            $('#shipAddress').hide();
        }

    });
    });
    </script>

<script>
$(document).on('click', '[id^=searchProduct]', function () {

    //alert(12);
    var main_id = $(this).attr('id');
    var get_id_from_main = main_id.slice(13);

    $.ajax({
url: "{{ route('showDataOnModal') }}",
method: 'get',
data: {get_id_from_main:get_id_from_main},
beforeSend: function(){
    $('.ajax-loader').show()
},
complete: function(){
    $('.ajax-loader').hide()
},
success: function(data) {

    $("#productSearchModal").modal('show');

    $('#newSearchResult').html('');
    $('#newSearchResult').html(data);
}
});

});
</script>
