<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Table;
use App\Models\QrCode;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Mpdf\Mpdf;
class QrCodeController extends Controller
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


        if (is_null($this->user) || !$this->user->can('qrAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Qr Code list');

            $qrCodeList = QrCode::orderBy('id','desc')->get();
            $tableList = Table::orderBy('id','desc')->get();

            return view('admin.qrCodeList.index',compact('qrCodeList','tableList'));

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }
    }


    public function show($id){

        if (is_null($this->user) || !$this->user->can('qrView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Qr Code list');

            $tableList = Table::where('id',$id)->orderBy('id','desc')->first();

            $enc_data = base64_encode($tableList->name);

            $url = url('menu/'.$enc_data);


            $data =view('admin.qrCodeList.show',['url'=>$url])->render();

            $file_Name_Custome = $tableList->name;

            $pdfFilePath =$file_Name_Custome.'.pdf';

            $mpdf = new Mpdf();
            $mpdf->WriteHTML($data);
            $mpdf->Output($pdfFilePath, "I");
            die();

        } catch (\Exception $e) {
            return redirect()->back()->with('error','some thing went wrong ');
        }

    }

}
