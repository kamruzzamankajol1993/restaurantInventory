@if(count($productList) == 0)
<div class="col-lg-3 col-md-4 col-sm-6">
    <div class="card">

            <img class="card-img-top"
                 src="{{ asset('/') }}public/admin/product-not-found.jpg;"
                 alt="Card image cap">


    </div>
</div>

@else
@foreach($productList as $key=>$productLists)
                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                            <div class="card">
                                                <a href="" data-bs-toggle="modal" data-bs-target="#myModal{{ $key+1 }}">
                                                    <img class="card-img-top"
                                                         src="{{ asset('/') }}{{ $productLists->product_image }}"
                                                         alt="Card image cap">
                                                    <div class="card-body text-center">
                                                        <p class="card-title">{{ $productLists->product_name}}</p>
                                                        <h5 class="card-text">{{ $productLists->default_price }} Taka</h5>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>

                                        <!-- modal related to product start --->

                                       @include('admin.pos.partial.modalRelatedProduct')

                                        <!-- modal related to product end --->
                                        @endforeach

@endif
