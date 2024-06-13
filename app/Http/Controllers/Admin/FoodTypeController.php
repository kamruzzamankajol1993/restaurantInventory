<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Category;
use App\Models\FoodType;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class FoodTypeController extends Controller
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


        if (is_null($this->user) || !$this->user->can('foodTypeView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('foodType list ');


            $menuList = FoodType::orderBy('id','asc')->get();

            return view('admin.foodTypeList.index',compact('menuList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('foodTypeAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('foodType Add ');

            return view('admin.foodTypeList.create');

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('foodTypeAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'category_name' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('foodType store ');



           $foodTypeListLast = FoodType::orderBy('id','desc')->value('priority');

           if(empty($foodTypeListLast)){

                 $mainIdList = 1;

           }else{
            $mainIdList =$foodTypeListLast +1;

           }



           $filePath = 'foodTypeImage';


           $addNewfoodType = new FoodType();
           $addNewfoodType->category_name = $request->category_name;
           $addNewfoodType->category_slug = Str::slug($request->category_name);
           $addNewfoodType->status = 1;
           $addNewfoodType->priority = $mainIdList;

           $addNewfoodType->save();

           DB::commit();

           return redirect()->route('foodTypeList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }

    public function edit($id){


        if (is_null($this->user) || !$this->user->can('foodTypeUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('foodType Edit ');

            $menuLists = FoodType::find($id);
            $menuList = FoodType::orderBy('id','asc')->get();
            return view('admin.foodTypeList.edit',compact('menuLists','menuList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('foodTypeUpdate')) {

            return redirect()->route('mainLogin');
        }


        try{

            DB::beginTransaction();

           \LogActivity::addToLog('foodType update');

           $filePath = 'foodTypeImage';
           $addNewfoodType = FoodType::find($id);
           $addNewfoodType->category_name = $request->category_name;
           $addNewfoodType->category_slug = Str::slug($request->category_name);
           $addNewfoodType->status = $request->status;
           $addNewfoodType->save();

        DB::commit();

        return redirect()->route('foodTypeList.index')->with('info','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }
    }

    public function destroy($id){

            if (is_null($this->user) || !$this->user->can('foodTypeDelete')) {

                return redirect()->route('mainLogin');
            }

            try{
                DB::beginTransaction();
                \LogActivity::addToLog('foodType delete ');

                FoodType::destroy($id);

                DB::commit();
                return redirect()->route('foodTypeList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }



    public function foodTypeStatusUpdate(Request $request){


           $addNewfoodType = FoodType::find($request->id);
           $addNewfoodType->status = $request->status;
           $addNewfoodType->save();

           return 1;


    }


    public function foodTypepriorityStatusUpdate(Request $request){


        $addNewfoodType = foodType::find($request->id);
        $addNewfoodType->priority = $request->priority;
        $addNewfoodType->save();

        return 1;


    }
}
