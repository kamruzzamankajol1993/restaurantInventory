<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\ProductAttribute;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class ProductAttributeController extends Controller
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


        if (is_null($this->user) || !$this->user->can('productAttributeView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product Attribute list ');


            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();

            return view('admin.productAttributeList.index',compact('productAttributeList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('productAttributeAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'name' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Product Attribute store');

           $addProductAttribute = new ProductAttribute();
           $addProductAttribute->name = $request->name;
           $addProductAttribute->slug = Str::slug($request->name);
           $addProductAttribute->save();

           DB::commit();

           return redirect()->route('productAttribute.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('productAttributeUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Product Attribute Update');

           $addProductAttribute = ProductAttribute::find($id);
           $addProductAttribute->name = $request->name;
           $addProductAttribute->slug = Str::slug($request->name);
           $addProductAttribute->save();

           DB::commit();

           return redirect()->route('productAttribute.index')->with('success','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }


    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('productAttributeDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('productAttribute delete ');

            ProductAttribute::destroy($id);

            DB::commit();
            return redirect()->route('productAttribute.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }


    public function searchProductAttribute(Request $request){


        try{

            \LogActivity::addToLog('productAttribute Search');

            $productAttributeList = ProductAttribute::where('name','LIKE','%'.$request->search.'%')
            ->orderBy('id','desc')->get();


            $searchData = $request->search;

            return view('admin.productAttributeList.searchProductAttribute',compact('productAttributeList','searchData'));

        } catch (\Exception $e) {

            return redirect()->route('error_500');
        }

    }
}
