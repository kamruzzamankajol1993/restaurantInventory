<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Table;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;

class TableController extends Controller
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


        if (is_null($this->user) || !$this->user->can('tableAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Table list ');

            $waiterList = Admin::where('designation_list_id','=',4)->orderBy('id','desc')->get();
            $tableList = Table::orderBy('id','desc')->get();

            return view('admin.tableList.index',compact('waiterList','tableList'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('tableAdd')) {

            return redirect()->route('mainLogin');
        }

        $request->validate([
            'name' => 'required',
            'admin_id' => 'required',
          ]);

          try{

            DB::beginTransaction();

           \LogActivity::addToLog('Table store ');

           $request['table_slug'] = Str::slug($request->name);
           $input = $request->all();
           Table::create($input);

           DB::commit();

           return redirect()->route('tableList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('tableUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('table update ');

            $table = Table::findOrFail($id);

            $request['table_slug'] = Str::slug($request->name);
            $input = $request->all();
            $table->fill($input)->save();

            DB::commit();
            return redirect()->route('tableList.index')->with('success','Updated successfully!');

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

           \LogActivity::addToLog('table delete ');

            Table::destroy($id);
            DB::commit();

            return redirect()->route('tableList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }
}
