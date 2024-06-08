<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Order;
use App\Models\Table;
use App\Models\OrderDetail;
use App\Models\ProductAddOn;
use App\Models\ProductAttribute;
use App\Models\ProductVariation;
use App\Models\ProductVariationList;
use App\Models\SubCategory;
use App\Models\Category;
use App\Models\ShipAddress;
use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class TableOrderController extends Controller
{


    public function index(){


        $kitchenOrderList = Order::whereNotNull('table_id')->where('order_type','!=','Order From Waiter')->latest()->get();

        $pendingOrderListCount = Order::whereNotNull('table_id')->where('order_type','!=','Order From Waiter')->where('status','Pending')->count();
        $confirmOrderListCount = Order::whereNotNull('table_id')->where('order_type','!=','Order From Waiter')->where('status','Confirmed')->count();
        $processingOrderListCount = Order::whereNotNull('table_id')->where('order_type','!=','Order From Waiter')->where('status','Processing')->count();


        return view('admin.tableOrder.index',compact('processingOrderListCount','confirmOrderListCount','kitchenOrderList','pendingOrderListCount'));
    }

    public function create(){
        try{

            \LogActivity::addToLog('Table list ');

            $waiterList = Admin::where('designation_list_id','=',4)->orderBy('id','desc')->get();
            $tableList = Table::orderBy('id','desc')->get();

            return view('admin.tableOrder.create',compact('waiterList','tableList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function addOrderToTable($id){


        try{

            \LogActivity::addToLog('Table list ');

            $tableId=$id;

            $waiterList = Admin::where('designation_list_id','=',4)->orderBy('id','desc')->get();
            $tableList = Table::orderBy('id','desc')->get();

            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.tableOrder.addOrderToTable',compact('tableId','waiterList','tableList','menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));


        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }


    }

    public function store(Request $request){

        $r_number = mt_rand(1000000000000000, 9999999999999999);

        //dd($request->all());

        $order=new Order();
        $order->invoice_id = $r_number;
        $order->table_id= $request->tableId;
        $order->addon= $request->addOn;
        $order->discount = $request->discount;
        $order->subtotal = $request->subTotal;
        $order->extra_discount = $request->extraDiscount;
        $order->vat = $request->vatTAx;
        $order->grand_total = $request->total;
        $order->order_type = $request->order_type;
        $order->customer_id = $request->customer_id;
        $order->branch = $request->branch;
        $order->waiter_id = $request->waiter_id;
        $order->status = 'pending';
        $order->admin_id = Auth::guard('admin')->user()->id;
        $order->save();


        $orderId = $order->id;

        if(empty($request->shipAddress)){


        }else{

            $address = new ShipAddress();
            $address->name = $request->customer_id;
            $address->order_id = $orderId;
            $address->phone = $request->phone;
            $address->address = $request->shipAddress;
            $address->save();

        }
        $cartContent = \Cart::getContent();

        foreach($cartContent as $productInfoCArt){

        $orderDetail=new OrderDetail();
        $orderDetail->status = 'Pending';
        $orderDetail->order_id = $orderId;
        $orderDetail->product_id= $productInfoCArt->id;
        $orderDetail->product_name= $productInfoCArt->name;
        $orderDetail->product_image = $productInfoCArt->attributes->image;
        $orderDetail->product_quantity = $productInfoCArt->quantity;
        $orderDetail->prodcut_price = $productInfoCArt->price;
        $orderDetail->addOnPrice = $productInfoCArt->attributes->addOnPrice;
        $orderDetail->variationPrice = $productInfoCArt->attributes->variationPrice;

        if(empty($productInfoCArt->attributes->addOnLabelList)){



        }else{

            $orderDetail->addOnLabelList = implode(',',$productInfoCArt->attributes->addOnLabelList);

        }

        if(empty($productInfoCArt->attributes->varationLabelList)){

        }else{

            $orderDetail->varationLabelList =implode(',',$productInfoCArt->attributes->varationLabelList);
        }

        if(empty($productInfoCArt->attributes->varationLabelList)){

        }else{

            $orderDetail->variationPriceList =implode(',',$productInfoCArt->attributes->variationPriceList);
        }




        $orderDetail->save();


        }

        DB::commit();
        \Cart::clear();
        return redirect()->back()->with('success','Send To Kitchen successfully!');



    }
}
