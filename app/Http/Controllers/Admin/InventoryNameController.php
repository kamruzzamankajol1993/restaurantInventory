<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Unit;
use App\Models\InventoryName;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
class InventoryNameController extends Controller
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


        if (is_null($this->user) || !$this->user->can('inventoryNameAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('InventoryName list ');


            $inventoryNameList = InventoryName::orderBy('id','desc')->get();

            return view('admin.inventoryName.index',compact('inventoryNameList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('inventoryNameAdd')) {

            return redirect()->route('mainLogin');
        }

        $request->validate([
            'name' => 'required',
          ]);

          try{

            DB::beginTransaction();

           \LogActivity::addToLog('InventoryName store ');


           $input = $request->all();
           InventoryName::create($input);

           DB::commit();

           return redirect()->route('inventoryName.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('inventoryNameUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('InventoryName update ');

            $InventoryName = InventoryName::findOrFail($id);

            $input = $request->all();
            $InventoryName->fill($input)->save();

            DB::commit();
            return redirect()->route('inventoryName.index')->with('success','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }

    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('InventoryNameDelete')) {

           return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();

           \LogActivity::addToLog('InventoryName delete ');

            InventoryName::destroy($id);
            DB::commit();

            return redirect()->route('inventoryName.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
