<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\ProductAddOn;
use App\Models\ProductAttribute;
use App\Models\ProductVariation;
use App\Models\ProductVariationList;
use App\Models\SubCategory;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class ProductController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }


    public  function index(){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();


            $productList = Product::orderBy('id','desc')->get();

            return view('admin.productList.index',compact('productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public  function show($id){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();


            $productList = Product::find($id);

            return view('admin.productList.show',compact('productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }

    public  function edit($id){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();


            $product = Product::find($id);

            return view('admin.productList.edit',compact('product','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public function create()
    {
        if (is_null($this->user) || !$this->user->can('productAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();

            return view('admin.productList.create',compact('categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function getSubCategoryId(Request $request){

        $subcategoryList = SubCategory::where('category_id',$request->value)
        ->orderBy('id','asc')->get();

        return $data = view('admin.productList.getSubCategoryId',compact('subcategoryList'));

    }



    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('productAdd')) {

            return redirect()->route('mainLogin');
        }



        if ($request['discount_type'] == 'Percentage') {
            $dis = ($request['default_price'] / 100) * $request['discount_price'];
        } else {
            $dis = $request['discount_price'];
        }



$filePath='ProductImage';
        $addOn = $request->has('product_add_on') ? json_encode($request->product_add_on) : json_encode([]);

        //dd($request->all());


        $variations = [];
        if (isset($request->options)) {

            foreach (array_values($request->options) as $key => $option) {

                $temp_variation['name'] = $option['name'];
                $temp_variation['type'] = $option['type'];
                $temp_variation['min'] = $option['min'] ?? 0;
                $temp_variation['max'] = $option['max'] ?? 0;
                $temp_variation['required'] = $option['required'] ?? 'off';

                $temp_value = [];

                foreach (array_values($option['values']) as $value) {
                    if (isset($value['label'])) {
                        $temp_option['label'] = $value['label'];
                    }
                    $temp_option['optionPrice'] = $value['optionPrice'];
                    $temp_value[] = $temp_option;
                }
                $temp_variation['values'] = $temp_value;
                $variations[] = $temp_variation;
            }
        }


        //dd(json_encode($variations));

        try{

            DB::beginTransaction();

        $product= new Product();
        $product->product_name = $request->product_name;
        $product->product_slug = Str::slug($request->product_name);
        $product->product_short_description	 = $request->product_short_description	;
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->subcategory_id;
        $product->item_type = $request->item_type;
        $product->product_type = $request->product_type;
        $product->main_type = $request->main_type;
        $product->available_status = $request->available_status;
        $product->available_time = $request->available_time;
        $product->available_till = $request->available_till;
        $product->default_price = $request->default_price;
        $product->discount_type = $request->discount_type;
        $product->discount_price = $dis;
        $product->tax_type = $request->tax_type;
        $product->tax_rate = $request->tax_rate;
        $product->product_add_on = $addOn;
        $product->variations = json_encode($variations);
        $product->product_stock_type = $request->product_stock_type;
        $product->product_stock_quantity = $request->product_stock_quantity;
        $product->approximate_time = $request->approximate_time;
        if ($request->hasfile('product_image')) {
            $product->product_image = CommonController::compressImage(300,300,$filePath,$request->product_image);
           }

        $product->save();

        DB::commit();

        return redirect()->route('productList.index')->with('success','Added successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('productUpdate')) {

            return redirect()->route('mainLogin');
        }



        if ($request['discount_type'] == 'Percentage') {
            $dis = ($request['default_price'] / 100) * $request['discount_price'];
        } else {
            $dis = $request['discount_price'];
        }



$filePath='ProductImage';
        $addOn = $request->has('product_add_on') ? json_encode($request->product_add_on) : json_encode([]);

        //dd($request->all());


        $variations = [];
        if (isset($request->options)) {

            foreach (array_values($request->options) as $key => $option) {

                $temp_variation['name'] = $option['name'];
                $temp_variation['type'] = $option['type'];
                $temp_variation['min'] = $option['min'] ?? 0;
                $temp_variation['max'] = $option['max'] ?? 0;
                $temp_variation['required'] = $option['required'] ?? 'off';

                $temp_value = [];

                foreach (array_values($option['values']) as $value) {
                    if (isset($value['label'])) {
                        $temp_option['label'] = $value['label'];
                    }
                    $temp_option['optionPrice'] = $value['optionPrice'];
                    $temp_value[] = $temp_option;
                }
                $temp_variation['values'] = $temp_value;
                $variations[] = $temp_variation;
            }
        }


        //dd(json_encode($variations));

        try{

            DB::beginTransaction();

        $product=Product::find($id);
        $product->product_name = $request->product_name;
        $product->product_slug = Str::slug($request->product_name);
        $product->product_short_description	 = $request->product_short_description	;
        $product->category_id = $request->category_id;
        $product->sub_category_id = $request->subcategory_id;
        $product->item_type = $request->item_type;
        $product->product_type = $request->product_type;
        $product->main_type = $request->main_type;
        $product->available_status = $request->available_status;
        $product->available_time = $request->available_time;
        $product->available_till = $request->available_till;
        $product->default_price = $request->default_price;
        $product->discount_type = $request->discount_type;
        $product->discount_price = $dis;
        $product->tax_type = $request->tax_type;
        $product->tax_rate = $request->tax_rate;
        $product->product_add_on = $addOn;
        $product->variations = json_encode($variations);
        $product->product_stock_type = $request->product_stock_type;
        $product->product_stock_quantity = $request->product_stock_quantity;
        $product->approximate_time = $request->approximate_time;
        if ($request->hasfile('product_image')) {
            $product->product_image = CommonController::compressImage(300,300,$filePath,$request->product_image);
           }

        $product->save();

        DB::commit();

        return redirect()->route('productList.index')->with('success','Updated successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }
}
