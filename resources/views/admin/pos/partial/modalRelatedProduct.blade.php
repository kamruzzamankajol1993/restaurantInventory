<div id="myModal{{ $key+1 }}" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-5">
                        <img height="200" src="{{ asset('/') }}{{ $productLists->product_image }}" alt="">
                    </div>
                    <div class="col-lg-7">
                        <h1>{{ $productLists->product_name }}</h1>
                        <h5>{{ $productLists->default_price }} Taka</h5>
                    </div>
                    <div class="col-lg-12">
                        <h3>Description</h3>
                        <p>{{ $productLists->product_short_description }}</p>


                        <div class="mt-5">
                            @if (isset($productLists->variations))
                            @foreach (json_decode($productLists->variations,true) as $key_choice_options=>$item)
                            @if (isset($item["price"]))
                            @break
                            @else
@if($item['required'] == 'on')
                            <h3>{{ $item['name'] }} <span class="text-danger">(Required)</span></h3>
                            <p>You need to select minimum {{ $item['min'] }} To maximum {{ $item['max'] }} Options </p>
@else
<h3>{{ $item['name'] }}</h3>


@endif

                            <ul>
                                @if (isset($item['values']))
                                @foreach ($item['values'] as $key_value => $value)

                                <li>
                                    <div class="d-flex justify-content-between">
                                        <div class="demo-checkbox">
                                            <input type="checkbox" id="basic_checkbox_{{ $value['label'] }}"/>
                                            <label for="basic_checkbox_{{ $value['label']}}">{{ $value['label'] }}</label>
                                        </div>
                                        <p>{{ $value['optionPrice'] }} Taka</p>
                                    </div>
                                </li>
                                @endforeach
                                @endif

                            </ul>
                            @endif
@endforeach
@endif
                            <table class="table table-borderless">
                                <tr>
                                    <td>
                                        <h3>Quantity:</h3>
                                    </td>
                                    <td class="text-end" style="width:25%">
                                        <div class="input-group">
      <span class="input-group-btn">
          <button type="button" class="btn btn-danger btn-number" data-type="minus" data-field="quant[2]">
            <span class="glyphicon glyphicon-minus"></span>
          </button>
      </span>
                                            <input type="text" name="quant[2]" class="form-control input-number"
                                                   value="10" min="1" max="100">
                                            <span class="input-group-btn">
          <button type="button" class="btn btn-success btn-number" data-type="plus" data-field="quant[2]">
              <span class="glyphicon glyphicon-plus"></span>
          </button>
      </span>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>


                        <h3>Addon</h3>
                        <ul>

                            @foreach(json_decode($productLists['product_add_on'],true) as $key=>$addOnId)
                            <li>
                                <div class="d-flex justify-content-between">
                                    <div class="demo-checkbox">
                                        <input type="checkbox" id="basic_checkbox_{{ $key+6000 }}"/>
                                        <label for="basic_checkbox_{{ $key+6000 }}">{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('name')  }}</label>
                                    </div>
                                    <p>{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('price')  }} Taka</p>
                                </div>
                            </li>
                            @endforeach

                        </ul>
                        <h2>Total Amount: <span class="text-success text-bold">0 Taka</span></h2>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary"><i class="fa fa-cart-plus"></i> Add</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
