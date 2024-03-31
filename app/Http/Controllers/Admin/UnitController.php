<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Unit;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;

class UnitController extends Controller
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


        if (is_null($this->user) || !$this->user->can('unitAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Unit list ');


            $unitList = Unit::orderBy('id','desc')->get();

            return view('admin.unitList.index',compact('unitList'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('unitAdd')) {

            return redirect()->route('mainLogin');
        }

        $request->validate([
            'unit_name' => 'required',
          ]);

          try{

            DB::beginTransaction();

           \LogActivity::addToLog('Unit store ');


           $input = $request->all();
           Unit::create($input);

           DB::commit();

           return redirect()->route('unitList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('unitUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Unit update ');

            $unit = Unit::findOrFail($id);

            $input = $request->all();
            $unit->fill($input)->save();

            DB::commit();
            return redirect()->route('unitList.index')->with('success','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong ');

        }

    }

    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('branchDelete')) {

           return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();

           \LogActivity::addToLog('Unit delete ');

            Unit::destroy($id);
            DB::commit();

            return redirect()->route('unitList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }
}
