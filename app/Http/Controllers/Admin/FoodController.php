<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Food;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
use Illuminate\Support\Facades\DB;
class FoodController extends Controller
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


        if (is_null($this->user) || !$this->user->can('foodView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Food list ');


            $foodList = Food::orderBy('id','desc')->get();
            $menuList = Category::orderBy('id','desc')->get();

            return view('admin.foodList.index',compact('menuList','foodList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('foodAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Food Add ');
            $menuList = Category::orderBy('id','desc')->get();
            return view('admin.foodList.create',compact('menuList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }
}
