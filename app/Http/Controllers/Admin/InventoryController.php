<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Unit;
use App\Models\InventoryName;
use App\Models\Inventory;
use App\Models\InventoryQuantity;
use App\Models\Vendor;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use DB;
class InventoryController extends Controller
{public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }
    public function index(){


        if (is_null($this->user) || !$this->user->can('inventoryView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('inventory list ');


            $inventoryList = Inventory::orderBy('id','desc')->get();
            $inventoryNameList = InventoryName::orderBy('id','desc')->get();
            $vendorList = Vendor::orderBy('id','desc')->get();
            $unitList = Unit::orderBy('id','desc')->get();
            return view('admin.inventory.index',compact('unitList','vendorList','inventoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('inventoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('inventory Add ');


            $inventoryList = Inventory::orderBy('id','desc')->get();
            $inventoryNameList = InventoryName::orderBy('id','desc')->get();
            $vendorList = Vendor::orderBy('id','desc')->get();
            $unitList = Unit::orderBy('id','desc')->get();

            return view('admin.inventory.create',compact('unitList','vendorList','inventoryList','inventoryNameList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function edit($id){


        if (is_null($this->user) || !$this->user->can('inventoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('inventory Update');


            $inventoryList = Inventory::find($id);
            $inventoryNameList = InventoryName::orderBy('id','desc')->get();
            $vendorList = Vendor::orderBy('id','desc')->get();
            $unitList = Unit::orderBy('id','desc')->get();

            return view('admin.inventory.edit',compact('unitList','vendorList','inventoryList','inventoryNameList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        //dd($request->all());

        $request->validate([
            'name_id' => 'required|unique:inventories',
            'quantity' => 'required',
            'unit_id' => 'required',
            'vendor_id' => 'required',
            'buying_price' => 'required',
            'expire_date' => 'required',
          ]);

          try{
            DB::beginTransaction();
            // Create New User

            $inventory = new Inventory();
            $inventory->name_id = $request->name_id;
            $inventory->vendor_id = $request->vendor_id;
            $inventory->buying_price = $request->buying_price;
            $inventory->expire_date = $request->expire_date;
            $inventory->save();

            $inventoryId = $inventory->id;

            $updateQuantity = new InventoryQuantity();
            $updateQuantity->inventory_id	= $inventoryId;
            $updateQuantity->quantity	= $request->quantity;
            $updateQuantity->unit_id	= $request->unit_id;
            $updateQuantity->save();

            DB::commit();
            return redirect()->route('inventory.index')->with('success','Created successfully!');

           } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
           }


    }

    public function update(Request $request,$id){



          try{
            DB::beginTransaction();

            $inventory = Inventory::find($id);
            $inventory->name_id = $request->name_id;
            $inventory->vendor_id = $request->vendor_id;
            $inventory->buying_price = $request->buying_price;
            $inventory->expire_date = $request->expire_date;
            $inventory->save();

            DB::commit();
            return redirect()->route('inventory.index')->with('success','Updated successfully!');

           } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
           }


    }


    public function quantityUpdate(Request $request){

        $InventoryQuantity = InventoryQuantity::where('inventory_id',$request->inventoryid)
        ->value('quantity');

        if($request->type == 'Addition'){

            $finalResult =$InventoryQuantity+$request->quantity;

            InventoryQuantity::where('inventory_id',$request->inventoryid)
       ->update([
           'quantity' => $finalResult,
           'unit_id' => $request->unit_id,
        ]);

        }else{

            $finalResult =$InventoryQuantity-$request->quantity;

            InventoryQuantity::where('inventory_id',$request->inventoryid)
       ->update([
           'quantity' => $finalResult,
           'unit_id' => $request->unit_id,
        ]);

        }

        return redirect()->route('inventory.index')->with('success','Updated successfully!');
    }
}
