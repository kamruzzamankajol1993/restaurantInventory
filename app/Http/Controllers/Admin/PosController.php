<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Order;
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
class PosController extends Controller
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


        $kitchenOrderList = Order::where('order_type','!=','Order From Waiter')->latest()->get();

        $pendingOrderListCount = Order::where('order_type','!=','Order From Waiter')->where('status','Pending')->count();
        $confirmOrderListCount = Order::where('order_type','!=','Order From Waiter')->where('status','Confirmed')->count();
        $processingOrderListCount = Order::where('order_type','!=','Order From Waiter')->where('status','Processing')->count();


        return view('admin.pos.index',compact('processingOrderListCount','confirmOrderListCount','kitchenOrderList','pendingOrderListCount'));
    }




    public function KitchenDashBoard(){

        $kitchenOrderList = Order::latest()->get();
        return view('admin.pos.KitchenDashBoard',compact('kitchenOrderList'));


    }

    public function allOrderList(){

        $kitchenOrderList = Order::latest()->get();

        $pendingOrderListCount = Order::where('status','Pending')->count();
        $confirmOrderListCount = Order::where('status','Confirmed')->count();
        $processingOrderListCount = Order::where('status','Processing')->count();


        return view('admin.order.allOrderList',compact('processingOrderListCount','confirmOrderListCount','kitchenOrderList','pendingOrderListCount'));


    }


    public function getProductForPOS(Request $request){

            $productList = Product::where('category_id',$request->category_id)->orderBy('id','desc')->get();

            return $data = view('admin.pos.partial.getProductForPOS',compact('productList'))->render();
    }



    public function posProductSearch(Request $request){

        $productList = Product::where('product_name','LIKE','%'.$request->productSearch.'%')
        ->orderBy('id','desc')->get();

            return $data = view('admin.pos.partial.getProductForPOS',compact('productList'))->render();
    }


    public function waiterDashBoard(){

if (is_null($this->user) || !$this->user->can('waiterDashboardAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Pos Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.pos.waiterDashBoard',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public function create ()
    {
        if (is_null($this->user) || !$this->user->can('posAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Pos Add');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $menuList = Menu::orderBy('id','desc')->get();

            $productList = Product::orderBy('id','desc')->get();

            return view('admin.pos.create',compact('menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function itemAddToCart(Request $request){

        $productInfo = Product::where('id',$request->result)->first();



        \Cart::add(array(
            'id' => $request->result,
            'name' => $productInfo->product_name,
            'price' => $productInfo->default_price,
            'quantity' => $request->quantity,

            'attributes' => array(
                'image' => $productInfo->product_image,
                'totalAmount' => $request->cartTotalAmount,
                'addOnPrice'=>$request->final_addOn_price,
                'variationPrice'=>$request->final_variation_price,
                'product_slug' => $productInfo->product_slug,
                'addOnLabelList'=>$request->addOnLabelList,
                'varationLabelList'=>$request->varationLabelList,
                'variationPriceList'=>$request->total_final_variation_price
            )
        ));

        $extraDiscount = $request->extraDiscount;
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('extraDiscount','cartContent'))->render();


    }

    public function itemUpdateToCart(Request $request){

        $productInfo = Product::where('id',$request->result)->first();

        \Cart::update($request->result,
			array(
				'quantity' => array(
					'relative' => false,
					'value' => $request->quantity
				),
			));

            $extraDiscount = $request->extraDiscount;
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('extraDiscount','cartContent'))->render();


    }


    public function clearAllCartData(Request $request){

        \Cart::clear();
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('cartContent'))->render();

    }


    public function deleteSingleData(Request $request){
        $extraDiscount = $request->extraDiscount;
        \Cart::remove($request->result);
        $cartContent = \Cart::getContent();
        return $data = view('admin.pos.partial.itemAddToCart',compact('extraDiscount','cartContent'))->render();
    }




    public function store(Request $request){

        $r_number = mt_rand(1000000000000000, 9999999999999999);

        //dd($request->all());

        $order=new Order();
        $order->invoice_id = $r_number;
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


    public function orderStatusUpdate(Request $request){


        $orderDetail=OrderDetail::find($request->id);
        $orderDetail->status = $request->status;
        $orderDetail->save();


        Order::where('id',$orderDetail->order_id)

        ->update([
            'status' => $request->status
         ]);



        return 1;


    }


    public function printInvoice($id){

        $orderDetail = Order::where('id',$id)->first();
        $productDetail = OrderDetail::where('order_id',$id)->get();
        return view('admin.order.printInvoice',compact('orderDetail','productDetail'));
    }


    public function show($id){



        $orderDetail = Order::where('id',$id)->first();
        $productDetail = OrderDetail::where('order_id',$id)->get();
        return view('admin.pos.show',compact('orderDetail','productDetail'));


    }
}
