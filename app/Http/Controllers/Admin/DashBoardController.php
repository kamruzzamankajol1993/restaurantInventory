<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Admin;
use DB;
use Carbon\Carbon;
use App\Models\SystemInformation;
use Hash;
use Illuminate\Support\Str;
use Mail;
use PDF;
use Response;
use App\Models\Branch;
use App\Models\DesignationList;
use App\Models\DesignationStep;
use App\Models\AdminDesignationHistory;
use Mpdf\Mpdf;
class DashBoardController extends Controller
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

        if (is_null($this->user) || !$this->user->can('dashboard.view')) {
           
            return redirect()->route('mainLogin');
        }

        \LogActivity::addToLog('view dashboard');
        $users = Admin::where('id','!=',1)->orderBy('id','asc')->get();

        $count_admin = Admin::where('id','!=',1)->count();



        if(Auth::guard('admin')->user()->designation_list_id == 2 || Auth::guard('admin')->user()->designation_list_id == 1){



            return view('admin.dashboard.dashboard',compact(
                'users',
                'count_admin'));

        }else{




            return view('admin.dashboard.dashboardOne',compact(
                'users',
            'count_admin'));


        }

    }
}
