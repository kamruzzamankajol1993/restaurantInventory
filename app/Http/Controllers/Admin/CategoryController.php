<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class CategoryController extends Controller
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


        if (is_null($this->user) || !$this->user->can('menuView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu list ');


            $menuList = Category::orderBy('id','desc')->get();

            return view('admin.menuList.index',compact('menuList'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('menuAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu Add ');

            return view('admin.menuList.create');

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('menuAdd')) {

            return redirect()->route('mainLogin');
        }

        $request->validate([
            'category_name' => 'required',
            'image' => 'required',
            'status' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Menu store ');



           $filePath = 'categoryImage';

           if ($request->hasfile('image')) {
               $file = $request->file('image');
           }

           Category::create([
            'image'=>CommonController::storeBase64($filePath,$request->image_base64),
            'category_name'=>$request->category_name,
            'category_slug'=>Str::slug($request->category_name),
            'status'=>$request->status
           ]);

           DB::commit();

           return redirect()->route('menuList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }

    public function edit($id){


        if (is_null($this->user) || !$this->user->can('menuUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Menu Edit ');

            $menuLists = Category::find($id);

            return view('admin.menuList.edit',compact('menuLists'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('menuUpdate')) {

            return redirect()->route('mainLogin');
        }


        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Menu update');



        if ($request->hasfile('image')) {

            $filePath = 'categoryImage';

            $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }

            Category::where('id',$id)->update([
                'image'=>CommonController::storeBase64($filePath,$request->image_base64),
                'category_name'=>$request->category_name,
                'category_slug'=>Str::slug($request->category_name),
                'status'=>$request->status
               ]);

        }else{

            Category::where('id',$id)->update([
                'category_name'=>$request->category_name,
                'category_slug'=>Str::slug($request->category_name),
                'status'=>$request->status
               ]);

        }


        DB::commit();

        return redirect()->route('menuList.index')->with('info','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }
    }

    public function destroy($id){

            if (is_null($this->user) || !$this->user->can('menuDelete')) {

                return redirect()->route('mainLogin');
            }

            try{
                DB::beginTransaction();
                \LogActivity::addToLog('Menu delete ');


                $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }


                Category::destroy($id);

                DB::commit();
                return redirect()->route('menuList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }
}
