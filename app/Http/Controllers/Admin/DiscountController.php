<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Hash;
use Illuminate\Support\Str;
use Mail;
use DB;
use PDF;
use Carbon\Carbon;
use Response;
use App\Models\Branch;
use App\Models\systemInformation;
use App\Models\Discount;
use App\Models\DesignationList;
use App\Models\DesignationStep;
class DiscountController extends Controller
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


        if (is_null($this->user) || !$this->user->can('discountView')) {
            //abort(403, 'Sorry !! You are Unauthorized to View !');
            return redirect()->route('mainLogin');
               }

               try{

               \LogActivity::addToLog('discount  list ');


          $discountLists = Discount::latest()->get();

          $systemInformation = SystemInformation::all();
               return view('admin.discountList.index',compact('systemInformation','discountLists'));


            } catch (\Exception $e) {
                return redirect()->route('error_500');
            }
           }



           public function store(Request $request){

            if (is_null($this->user) || !$this->user->can('discountAdd')) {
                //abort(403, 'Sorry !! You are Unauthorized to Add !');
                return redirect()->route('mainLogin');
            }

            $request->validate([

                'type' => 'required',
                'amount' => 'required',
              ]);

              try{
                DB::beginTransaction();
              \LogActivity::addToLog('designation store ');


             $input = $request->all();


             $dataInsert = new Discount();
             $dataInsert->type = $request->type;
             $dataInsert->amount = $request->amount;
             $dataInsert->save();


             DB::commit();
    return redirect()->route('discount.index')->with('success','Added successfully!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }


        }





        public function update(Request $request,$id){

            if (is_null($this->user) || !$this->user->can('discountUpdate')) {
               // abort(403, 'Sorry !! You are Unauthorized to Update !');
               return redirect()->route('mainLogin');
            }
            try{
                DB::beginTransaction();
            \LogActivity::addToLog('discount update ');
           // dd($request->all());

            $medicine = Discount::findOrFail($id);

            $input = $request->all();

            $medicine->fill($input)->save();
            DB::commit();
    return redirect()->route('discount.index')->with('success','Updated successfully!');
} catch (\Exception $e) {
    DB::rollBack();
    return redirect()->route('error_500');
}


        }


        public function destroy($id)
    {

            if (is_null($this->user) || !$this->user->can('discountDelete')) {
                //abort(403, 'Sorry !! You are Unauthorized to Delete !');
                return redirect()->route('mainLogin');
            }
            try{
                DB::beginTransaction();
            \LogActivity::addToLog('discount delete ');
            Discount::destroy($id);
            DB::commit();
            return redirect()->route('discount.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
