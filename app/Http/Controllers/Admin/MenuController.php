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
class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     */

       public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }
    public function index()
    {
        if (is_null($this->user) || !$this->user->can('menuListView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu List View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.menuList.index',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        if (is_null($this->user) || !$this->user->can('menuListAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu List Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.menuList.create',compact('productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('menuListAdd')) {

            return redirect()->route('mainLogin');
        }

        $productId = $request->has('product_id') ? json_encode($request->product_id) : json_encode([]);
        $filePath="menuImage";

        try{

            DB::beginTransaction();
        $menu= new Menu();
        $menu->name = $request->name;
        $menu->product_id = $productId;
        $menu->status = 1;
        if ($request->hasfile('image')) {
            $menu->image = CommonController::compressImage(300,300,$filePath,$request->image);
           }
        $menu->save();



        DB::commit();

        return redirect()->route('menuList.index')->with('success','Added successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }




    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        if (is_null($this->user) || !$this->user->can('menuListUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu List Update');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::find($id);

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.menuList.edit',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if (is_null($this->user) || !$this->user->can('menuListAdd')) {

            return redirect()->route('mainLogin');
        }

        $productId = $request->has('product_id') ? json_encode($request->product_id) : json_encode([]);
        $filePath="menuImage";

        try{

            DB::beginTransaction();
        $menu= Menu::find($id);
        $menu->name = $request->name;
        $menu->product_id = $productId;
        $menu->status = $request->status;
        if ($request->hasfile('image')) {
            $menu->image = CommonController::compressImage(300,300,$filePath,$request->image);
           }
        $menu->save();



        DB::commit();

        return redirect()->route('menuList.index')->with('success','Updated successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        if (is_null($this->user) || !$this->user->can('menuListDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('menu delete ');

            Menu::destroy($id);

            DB::commit();
            return redirect()->route('menuList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
