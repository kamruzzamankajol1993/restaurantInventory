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
use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class PosController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }


    public function index(){


        return view('admin.pos.index');
    }




    public function KitchenDashBoard(){


        return view('admin.pos.index');


    }


    public function getProductForPOS(Request $request){

            $productList = Product::where('category_id',$request->category_id)->orderBy('id','desc')->get();

            return $data = view('admin.pos.partial.getProductForPOS',compact('productList'))->render();
    }



    public function posProductSearch(Request $request){

        $productList = Product::where('product_name','LIKE','%'.$request->productSearch.'%')
        ->orderBy('id','desc')->get();

            return $data = view('admin.pos.partial.getProductForPOS',compact('productList'))->render();
    }


    public function waiterDashBoard(){

if (is_null($this->user) || !$this->user->can('posAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Pos Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.pos.waiterDashBoard',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public function create ()
    {
        if (is_null($this->user) || !$this->user->can('posAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Pos Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.pos.create',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function itemAddToCart(Request $request){

        $productInfo = Product::where('id',$request->result)->first();

        

        \Cart::add(array(
            'id' => $request->result,
            'name' => $productInfo->product_name,
            'price' => $productInfo->default_price,
            'quantity' => $request->quantity,

            'attributes' => array(
                'image' => $productInfo->product_image,
                'totalAmount' => $request->cartTotalAmount,
                'addOnPrice'=>$request->final_addOn_price,
                'variationPrice'=>$request->final_variation_price,
                'product_slug' => $productInfo->product_slug,
                'addOnLabelList'=>$request->addOnLabelList,
                'varationLabelList'=>$request->varationLabelList,
                'variationPriceList'=>$request->total_final_variation_price
            )
        ));


        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('cartContent'))->render();


    }

    public function itemUpdateToCart(Request $request){

        $productInfo = Product::where('id',$request->result)->first();

        \Cart::update($request->result,
			array(
				'quantity' => array(
					'relative' => false,
					'value' => $request->quantity
				),
			));


        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('cartContent'))->render();


    }


    public function clearAllCartData(Request $request){

        \Cart::clear();
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('cartContent'))->render();

    }


    public function deleteSingleData(Request $request){

        \Cart::remove($request->result);
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('cartContent'))->render();
    }
}
