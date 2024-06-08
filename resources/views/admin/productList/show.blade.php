@extends('admin.master.master')

@section('title')
{{ $productList->product_name }}
@endsection



@section('body')
 <!-- Content Header (Page header) -->
 <div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Product Information</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="box">
        <div class="box-body">
            <div class="row">
                <div class="col-lg-4 col-sm-12">
                    <div class="box box-body b-1 text-center no-shadow">
                        <img src="{{ asset('/') }}{{ $productList->product_image }}" class="img-fluid" alt=""/>
                    </div>
                </div>
                <div class="col-md-8 col-sm-12">
                    <h2 class="box-title mt-0">{{ $productList->product_name }}({{ $productList->chinese_name }})</h2>
                    <div class="list-inline">
                        <a class="text-warning"><i class="mdi mdi-star"></i></a>
                        <a class="text-warning"><i class="mdi mdi-star"></i></a>
                        <a class="text-warning"><i class="mdi mdi-star"></i></a>
                        <a class="text-warning"><i class="mdi mdi-star"></i></a>
                        <a class="text-warning"><i class="mdi mdi-star"></i></a>
                    </div>
                    <h1 class="pro-price mb-0 mt-20">{{ $productList->default_price }} Taka
                    </h1>
                    <hr>
                    <p>{{ $productList->product_short_description }}</p>
                    <h4 class="box-title mt-20">Key Highlights</h4>
                    <ul class="list-icons list-unstyled">
                        <li><i class="fa fa-check text-danger me-3"></i> Available Time: <span class="text-success"> {{ $productList->available_time }} - {{ $productList->available_till }}</span></li>
                        <li><i class="fa fa-check text-danger me-3"></i> Approximate TIme: <span class="text-success"> {{ $productList->approximate_time }}</span></li>
                        <li><i class="fa fa-check text-danger me-3"></i> Visible: <span class="text-success"> {{ $productList->available_status }}</span></li>
                        <li><i class="fa fa-check text-danger me-3"></i> Category: <span class="text-success"> {{ \App\Models\Category::where('id',$productList->category_id)->value('category_name')  }}</span></li>
                        <li><i class="fa fa-check text-danger me-3"></i> Sub-Category: <span class="text-success">{{ \App\Models\SubCategory::where('id',$productList->sub_category_id)->value('subcategory_name')  }}</span></li>
                        <li><i class="fa fa-check text-danger me-3"></i> Product Type: <span class="text-success"> {{ $productList->product_type}}</span></li>
                    </ul>
                </div>
                <div class="col-md-12 col-sm-12">
                    <table class="table table-bordered">
                        <tr>
                            <td>Item Type</td>
                            <td>{{ $productList->item_type }}</td>
                        </tr>
                        <tr>
                            <td>Discount</td>
                            <td>
                                <span>{{ $productList->discount_type }}</span> <br>
                                <span>{{ $productList->discount_price }}</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Tax</td>
                            <td>
                                <span>{{ $productList->tax_type }}</span> <br>
                                <span>{{ $productList->tax_rate }}</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Addons</td>
                            <td>






                                <ul>
                                    @foreach(json_decode($productList['product_add_on'],true) as $addOnId)
                                    <li>{{ \App\Models\ProductAddOn::where('id',$addOnId)->value('name')  }}</li>
                                    @endforeach
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Stock</td>
                            <td>{{ $productList->product_stock_quantity }}</td>
                        </tr>
                    </table>






                    <h4>Product Variations</h4>
                    <table class="table table-bordered">
                        <tr>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Min</th>
                            <th>Max</th>
                            <th>Required</th>
                            <th>Other</th>
                        </tr>
                        @if (isset($productList->variations))
                        @foreach (json_decode($productList->variations,true) as $key_choice_options=>$item)
                            @if (isset($item["price"]))
                                @break
                            @else
                        <tr>
                            <td>{{ $item['name'] }}</td>
                            <td>{{ $item['type'] }}</td>
                            <td>{{ $item['min'] }}</td>
                            <td>{{ $item['max'] }}</td>
                            <td>{{ $item['required'] }}</td>
                            <td>
                                <table class="table table-bordered">
                                    <tr>
                                        <th>Option Name</th>
                                        <th>Additional Price</th>
                                    </tr>
                                    @if (isset($item['values']))
                                    @foreach ($item['values'] as $key_value => $value)
                                    <tr>
                                        <td>{{ $value['label'] }}</td>
                                        <td>{{ $value['optionPrice'] }}</td>
                                    </tr>
                                    @endforeach
                                    @endif
                                </table>
                            </td>
                        </tr>
                        @endif
                        @endforeach
                    @endif
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection


@section('script')
@endsection

