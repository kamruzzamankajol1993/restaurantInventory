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

        if (is_null($this->user) || !$this->user->can('tableAdd')) {

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
            'image'=>CommonController::compressImage($request,$file,$filePath),
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
}
