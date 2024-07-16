@if(count($productList) == 0)
<div class="col-lg-4">
    <div class="card">

            <img class="card-img-top"
                 src="{{ asset('/') }}public/admin/product-not-found.jpg"
                 alt="Card image cap">


    </div>
</div>

@else
@foreach($productList as $productLists)
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModal{{ $productLists->id }}">
                                                                <img class="card-img-top"
                                                                     src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h6 class="card-title">{{ $productLists->product_name}}</h6>
                                                                    <?php

                                                                    $inventoryIdList =  DB::table('assaign_quantiys')
                                                                    ->where('product_id',$productLists->id)->get();


                                                                    ?>
                                                                    <p class="card-text">
@foreach($inventoryIdList as $key=>$inventoryIdLists)
<?php
$inventoryName = DB::table('inventories')
->where('id',$inventoryIdLists->inventory_id)->value('name_id');

$inventoryNameMain = DB::table('inventory_names')
->where('id',$inventoryName)->value('name');

?>
@if(count($inventoryIdList) == 1)
{{ $inventoryNameMain }}
@else

@if(count($inventoryIdList) == ($key+1))
                {{ $inventoryNameMain }}
                @else
                {{ $inventoryNameMain }},
                @endif
                @endif
                @endforeach

                                                                    </p>
                                                                    <h4 class="pos_price">{{ $productLists->default_price }} Taka</h4>
                                                                </div>
                                                            </a>


                                                        </div>
                                                         <!-- modal related to product start --->

                                       @include('admin.pos.partial.newProductModal')

                                       <!-- modal related to product end --->
                                                    </div>
                                                    @endforeach

@endif
@include('admin.pos.partial.script')
<script>

    $(document).on('change', '#posCategory', function () {

        var category_id = $(this).find(':selected').val();


            $.ajax({
        url: "{{ route('getProductForPOS') }}",
        method: 'get',
        data: {category_id:category_id},
        beforeSend: function(){
            $('.ajax-loader').show()
        },
        complete: function(){
            $('.ajax-loader').hide()
        },
        success: function(data) {



            alertify.set('notifier','position','top-center');
            alertify.success('product Shown successfully');
            //location.reload(true);
            $('#getProductForPos').html('');
            $('#getProductForPos').html(data);

        }
        });

});


/////search product

$(document).on('keyup', '.posProductSearch', function () {

var productSearch = $(this).val();
var productSearchId = $(this).attr('id');


    $.ajax({
url: "{{ route('posProductSearch') }}",
method: 'get',
data: {productSearch:productSearch,productSearchId:productSearchId},
beforeSend: function(){
    $('.ajax-loader').show()
},
complete: function(){
    $('.ajax-loader').hide()
},
success: function(data) {



    // alertify.set('notifier','position','top-center');
    // alertify.success('product Shown successfully');
    //location.reload(true);
    $('#searchResultPos'+productSearchId).html('');
    $('#searchResultPos'+productSearchId).html(data);

}
});

});



</script>