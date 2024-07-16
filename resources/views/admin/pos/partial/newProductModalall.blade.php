<div id="myModalall{{ $productLists->id }}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="modal-pos-product-img">
                            <div class="img" style="background-image: url({{ asset('/') }}{{ $productLists->product_image }})"></div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="modal-pos-product-info">
                            <h3>{{ $productLists->product_name}}</h3>
                              <h6 class="">{{ $productLists->chinese_name}}</h6>
                            <p>{{ $productLists->product_short_description }}</p>
                            <h4>{{ $productLists->default_price }} Taka</h4>

                            <div class="d-flex mt-10 mb-3">
                                <div class="input-group p">

                                    <span class="input-group-btn">
                                <a href="#" id="btn-minus{{ $productLists->id }}" class="btn btn-secondary btn-minus" data-type="minus" data-field="quant[2]"><i class="fa fa-minus"></i></a>
                                    </span>
                                    <span class="input-group-btn">
                                <input type="text" value="1" min="1" max="100"  name="quant[2]" id="quantityResult{{ $productLists->id }}" class="quantityResult form-control w-50px fw-bold mx-2 text-center"
                                       value="1">
                                    </span>
                                <a href="#" class="btn btn-secondary btn-plus" id="btn-plus{{ $productLists->id }}" data-type="plus" data-field="quant[2]"><i class="fa fa-plus"></i></a>
                            </div>
                            </div>

                            <hr>
                            <div class="mb-2">
                                <div class="text-body">Add On:</div>
                                <div>

                                    @foreach(json_decode($productLists['product_add_on'],true) as $key=>$addOnId)
                                    <div>
                                        <input type="checkbox" data-addon="{{$addOnId}}" class="addonData{{ $productLists->id }}" value="{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('price')  }}" name="addonData[]" id="basic_checkbox_{{ $key+6000 }}{{ $productLists->product_name }}" class="option-input"
                                               >
                                        <label class="option-label" for="basic_checkbox_{{ $key+6000 }}{{ $productLists->product_name }}">
                                            <span class="option-text">{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('name')  }}</span>
                                            <span class="option-price">{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('price')  }} Taka</span>
                                        </label>
                                    </div>
                                    @endforeach


                                </div>
                            </div>
                            <div class="mb-2">
                            @if (isset($productLists->variations))
                            @foreach (json_decode($productLists->variations,true) as $key_choice_options=>$item)
                            @if (isset($item["price"]))
                            @break
                            @else
@if($item['required'] == 'on')
                            <div>{{ $item['name'] }} <span class="text-danger">(Required)</span></div>
                            <p>You need to select minimum {{ $item['min'] }} To maximum {{ $item['max'] }} Options </p>
@else
<div>{{ $item['name'] }}</div>


@endif

                            <ul>
                                @if (isset($item['values']))
                                @foreach ($item['values'] as $key_value => $value)


                                    <div class="d-flex justify-content-between">
                                        <div class="demo-checkbox">
                                            <input type="checkbox" data-vvList="{{ $value['label'] }}" value="{{ $value['optionPrice'] }}" class="variation{{ $productLists->id }}" name="variation[]" id="variation_basic_checkbox_{{ $value['label'] }}"/>
                                            <label for="variation_basic_checkbox_{{ $value['label']}}">{{ $value['label'] }}</label>
                                        </div>
                                        <p>{{ $value['optionPrice'] }} Taka</p>
                                    </div>

                                @endforeach
                                @endif

                            </ul>
                            @endif
@endforeach
@endif
                            </div>
                            <input type="hidden" class="pId{{ $productLists->id }}" name="id" value="{{ $productLists->id }}">
                            <input type="hidden" class="pPrice{{ $productLists->id }}" name="price" value="{{ $productLists->default_price }}">
                            <hr>
                            <div class="mb-2">
                                <div class="form-group">
                                    <label class="form-label">Extra</label>
                                    <textarea rows="5" class="form-control" placeholder="Food"></textarea>
                                </div>
                            </div>
                            <input type="hidden" id="finalAmountForDataBase{{ $productLists->id}}" />
                            <h2>Total Amount: <span class="text-success text-bold"  id="finalTotalAmount{{ $productLists->id}}">{{ $productLists->default_price }} Taka</span></h2>
                            <div class="row mt-20">
                                <div class="col-4">
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-pos-close-custom" type="button"
                                                data-bs-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-pos-custom" id="finalTotalAdd{{ $productLists->id}}" type="button"><i
                                                    class="fa fa-cart-plus"></i> Add
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
