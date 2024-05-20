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






            $.ajax({
        url: "{{ route('itemAddToCart') }}",
        method: 'get',
        data: {addOnLabelList:addOnLabelList,varationLabelList:varationLabelList,total_final_variation_price:total_final_variation_price,result:result,quantity:quantity,cartTotalAmount:cartTotalAmount,final_addOn_price:final_addOn_price,final_variation_price:final_variation_price},
        beforeSend: function(){
        $('#loader').show()
        },
        complete: function(){
        $('#loader').hide()
        },
        success: function(data) {

            $('.modal').modal('hide');

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


    var main_id = $(this).attr('id');
    var result = main_id.slice(18);

    var quantity = $('#updateCartQuantity'+result).val();

    $.ajax({
        url: "{{ route('itemUpdateToCart') }}",
        method: 'get',
        data: {result:result,quantity:quantity},
        beforeSend: function(){
        $('#loader').show()
        },
        complete: function(){
        $('#loader').hide()
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
        $('#loader').show()
        },
        complete: function(){
        $('#loader').hide()
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


    if (confirm('Are you sure you want to Remove From The cart?')) {
    $.ajax({
        url: "{{ route('deleteSingleData') }}",
        method: 'get',
        data: {result:result},
        beforeSend: function(){
        $('#loader').show()
        },
        complete: function(){
        $('#loader').hide()
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

<!-- new code 20 may start ---->
<script>

$(function() {

$('#extraDiscount').on('keyup', function() {

    var extraDisPrice = $(this).val();

});
});
</script>

<!-- end new code 20 may end --->
