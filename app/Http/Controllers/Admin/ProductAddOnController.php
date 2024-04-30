<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\ProductAddOn;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class ProductAddOnController extends Controller
{

    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }


    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (is_null($this->user) || !$this->user->can('productAddOnView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('product Add Onlist ');


            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();

            return view('admin.productAddOnList.index',compact('productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if (is_null($this->user) || !$this->user->can('productAddOnAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'name' => 'required',
            'price' => 'required',
            'tax' => 'required'
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Product Add On store');

           $addproductAddOn = new ProductAddOn();
           $addproductAddOn->name = $request->name;
           $addproductAddOn->slug = Str::slug($request->name);
           $addproductAddOn->price = $request->price;
           $addproductAddOn->tax = $request->tax;
           $addproductAddOn->save();

           DB::commit();

           return redirect()->route('productAddOn.index')->with('success','Added successfully!');

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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if (is_null($this->user) || !$this->user->can('productAddOnUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Product Add On Update');

           $addproductAddOn = ProductAddOn::find($id);
           $addproductAddOn->name = $request->name;
           $addproductAddOn->slug = Str::slug($request->name);
           $addproductAddOn->price = $request->price;
           $addproductAddOn->tax = $request->tax;
           $addproductAddOn->save();

           DB::commit();

           return redirect()->route('productAddOn.index')->with('success','Update successfully!');

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
        if (is_null($this->user) || !$this->user->can('productAddOnDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('product Add On delete ');

            ProductAddOn::destroy($id);

            DB::commit();
            return redirect()->route('productAddOn.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }


    public function searchProductAddOn(Request $request){


        try{

            \LogActivity::addToLog('Product Add On Search');

            $productAddOnList = ProductAddOn::where('name','LIKE','%'.$request->search.'%')
            ->orWhere('price','LIKE','%'.$request->search.'%')
            ->orWhere('tax','LIKE','%'.$request->search.'%')
            ->orderBy('id','desc')->get();


            $searchData = $request->search;

            return view('admin.productAddOnList.searchProductAddOn',compact('productAddOnList','searchData'));

        } catch (\Exception $e) {

            return redirect()->route('error_500');
        }

    }
}
