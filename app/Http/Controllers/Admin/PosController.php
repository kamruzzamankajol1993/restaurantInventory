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

        $productList = Product::where('product_name','LIKE','%'.$request->posProductSearch.'%')
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
}
