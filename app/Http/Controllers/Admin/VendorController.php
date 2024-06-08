<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Unit;
use App\Models\InventoryName;
use App\Models\Vendor;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use DB;
class VendorController extends Controller
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


        if (is_null($this->user) || !$this->user->can('vendorAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('vendor list ');


            $vendorList = Vendor::orderBy('id','desc')->get();

            return view('admin.vendor.index',compact('vendorList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('vendorAdd')) {

            return redirect()->route('mainLogin');
        }

        $request->validate([
            'name' => 'required',
            'phone' => 'required',
          ]);

          try{

            DB::beginTransaction();

           \LogActivity::addToLog('vendor store ');


           $input = $request->all();
           Vendor::create($input);

           DB::commit();

           return redirect()->route('vendor.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('vendorUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('vendor update ');

            $vendor = Vendor::findOrFail($id);

            $input = $request->all();
            $vendor->fill($input)->save();

            DB::commit();
            return redirect()->route('vendor.index')->with('success','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }

    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('vendorDelete')) {

           return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();

           \LogActivity::addToLog('vendor delete ');

            Vendor::destroy($id);
            DB::commit();

            return redirect()->route('vendor.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
