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


        if (is_null($this->user) || !$this->user->can('categoryView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category list ');


            $menuList = Category::orderBy('id','asc')->get();

            return view('admin.categoryList.index',compact('menuList'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('categoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category Add ');

            return view('admin.categoryList.create');

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('categoryAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'category_name' => 'required',
            'image' => 'required',
            // 'status' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Category store ');



           $categoryListLast = Category::orderBy('id','desc')->value('priority');

           if(empty($categoryListLast)){

                 $mainIdList = 1;

           }else{
            $mainIdList =$categoryListLast +1;

           }



           $filePath = 'categoryImage';


           Category::create([

            'web_image'=>CommonController::compressImage(800,100,$filePath,$request->image),
            'image'=>CommonController::compressImage(100,100,$filePath,$request->web_image),
            'category_name'=>$request->category_name,
            'category_slug'=>Str::slug($request->category_name),
            'status'=>1,
            'priority'=>$mainIdList
           ]);

           DB::commit();

           return redirect()->route('categoryList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }


    }

    public function edit($id){


        if (is_null($this->user) || !$this->user->can('categoryUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category Edit ');

            $menuLists = Category::find($id);

            return view('admin.categoryList.edit',compact('menuLists'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('categoryUpdate')) {

            return redirect()->route('mainLogin');
        }


        try{

            DB::beginTransaction();

           \LogActivity::addToLog('category update');



        if ($request->hasfile('image')) {

            $filePath = 'categoryImage';

            $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }

            Category::where('id',$id)->update([
                'com_image'=>CommonController::storeBase64(600,600,$filePath,$request->image_base64),
                'web_image'=>CommonController::storeBase64(400,400,$filePath,$request->image_base64),
                'image'=>CommonController::storeBase64(200,200,$filePath,$request->image_base64),
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

        return redirect()->route('categoryList.index')->with('info','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->back()->with('error','some thing went wrong'.$e);

        }
    }

    public function destroy($id){

            if (is_null($this->user) || !$this->user->can('categoryDelete')) {

                return redirect()->route('mainLogin');
            }

            try{
                DB::beginTransaction();
                \LogActivity::addToLog('category delete ');


                $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }


                Category::destroy($id);

                DB::commit();
                return redirect()->route('categoryList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }
}
