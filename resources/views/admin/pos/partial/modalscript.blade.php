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
            var quantity = $('#quantityResultOneAjax'+result).val();
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

alert(totalValueBeforeDiscount);

   $('#finalTotalAmountOneAjax'+result).html('');
   $('#finalTotalAmountOneAjax'+result).html(totalValueBeforeDiscount+' TAKA');

   $('#finalAmountForDataBaseOneAjax'+result).val(totalValueBeforeDiscount);



  });
});


$(function() {
  $('[id^=btn-minus]').on('click', function() {

            var main_id = $(this).attr('id');
            var result = main_id.slice(9);
            var quantity = $('#quantityResultOneAjax'+result).val();

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


$('#finalTotalAmountOneAjax'+result).html('');
$('#finalTotalAmountOneAjax'+result).html(totalValueBeforeDiscount+' TAKA');
$('#finalAmountForDataBaseOneAjax'+result).val(totalValueBeforeDiscount);

    //alert(quantity);

  });
});


//new code start


$(function() {
  $('[id^=variation_basic_checkbox_]').on('click', function() {




            var main_id = $(this).attr('class');
            var result = main_id.slice(9);
            //alert(result);


            var quantity = $('#quantityResultOneAjax'+result).val();
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


   $('#finalTotalAmountOneAjax'+result).html('');
   $('#finalTotalAmountOneAjax'+result).html(totalValueBeforeDiscount+' TAKA');
   $('#finalAmountForDataBaseOneAjax'+result).val(totalValueBeforeDiscount);

  });
});



$(function() {
  $('[id^=basic_checkbox_]').on('click', function() {

            var main_id = $(this).attr('class');
            var result = main_id.slice(9);



            var quantity = $('#quantityResultOneAjax'+result).val();
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


   $('#finalTotalAmountOneAjax'+result).html('');
   $('#finalTotalAmountOneAjax'+result).html(totalValueBeforeDiscount+' TAKA');
   $('#finalAmountForDataBaseOneAjax'+result).val(totalValueBeforeDiscount);

  });
});


// new code end


</script>


<script>

    $(function() {

  $('[id^=finalTotalAdd]').on('click', function() {

            var main_id = $(this).attr('id');
            var result = main_id.slice(13);

            var quantity = $('#quantityResultOneAjax'+result).val();
            var cartTotalAmount = $('#finalAmountForDataBaseOneAjax'+result).val();


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


</script>
<!-- end product add  script --->





