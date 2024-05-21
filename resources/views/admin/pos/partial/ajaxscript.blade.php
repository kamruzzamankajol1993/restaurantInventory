
<script>




$(function() {

$('[id^=updateCartQuantityy]').on('keyup', function() {


    var main_id = $(this).attr('id');
    var result = main_id.slice(19);

    var quantity = $('#updateCartQuantityy'+result).val();

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

$('#clearAllCartDataa').on('click', function() {

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

$('[id^=singleItemDeletee]').on('click', function() {


    var main_id = $(this).attr('id');
    var result = main_id.slice(17);


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

    $('#extraDiscountAjax').on('keyup', function() {

        var extraDisPrice = $(this).val();
        var total = $('#totala').val();

        var result = total - extraDisPrice;


        $('#totala').val(result);
        $('#t2a').html(result);

    });
    });
    </script>

    <!-- end new code 20 may end --->
