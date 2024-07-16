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
use App\Models\FoodType;
use App\Models\ShipAddress;
use App\Models\Menu;
use App\Models\Table;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
use Mpdf\Mpdf;
use DateTime;
use DateTimezone;
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


        //new code start


        $data="";
        if($request->productSearchId == 0){

            $productList = Product::where('product_name','LIKE','%'.$request->productSearch.'%')

       ->orderBy('id','desc')->get();


       }else{

       $productList = Product::where('product_name','LIKE','%'.$request->productSearch.'%')
       ->where('main_type',$request->productSearchId)
       ->orderBy('id','desc')->get();
      }


      if(count($productList) == 0){

        $notFoundUrl = url('public/admin/product-not-found.jpg');

        $data.='<div class="col-lg-4">
    <div class="card">

            <img class="card-img-top"
                 src="'.$notFoundUrl.'"
                 alt="Card image cap">


    </div>
</div>';


      }else{


    foreach ($productList as $key => $productLists) {
        $imageUrl = url($productLists->product_image);

 $data.='<div class="col-md-4 col-lg-3 col-sm-6">
            <div class="card pos">
            <a href="#"  id="searchProduct'.$productLists->id.'">
                <img class="card-img-top" src="'.$imageUrl.'" alt="Card image cap">
                    <div class="card-body">
                        <h6 class="card-title">'.$productLists->product_name.'</h6>
                        <h6 class="card-title">'.$productLists->chinese_name.'</h6>
                        <p class="card-text"></p>
                        <h4 class="pos_price">'.$productLists->default_price.' Taka</h4>
                                </div>
                                </a>
</div>
</div>';



//                 $image_location = 'https://adminpanel.spotlightattires.com/'.$product->front_image;

//                 $product_url_single = url('productDetail/'.$product->slug);

//             $data.='<tr>'.
//             '<td>'.' <img src="'.$image_location.'"  class="searchImage" style="height:40px;"> '. '</td>'.
//             '<td>'.'<a href="'.$product_url_single.'">'.$product->product_name.'</a>'.'</td>'.
//  '<td>'.'<a href="">&#2547; '.$product->selling_price.'</a>'.'</td>'.


//             '</tr>';
            }
        }
        return Response($data);


        // new code end


            //return $data = view('admin.pos.partial.getProductForPOS',compact('productList'))->render();
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
            $foodTypeList = FoodType::orderBy('id','asc')->get();
            $productList = Product::orderBy('id','desc')->get();
            $unPaidOrderList = Order::where('pay_status','Unpaid')->select('table_id');

            $convert_name_title = $unPaidOrderList->implode("table_id", " ");
            $separated_data_title = explode(" ", $convert_name_title);


            $tableList = Table::whereNotIn('id',$separated_data_title)->orderBy('id','desc')->get();




            return view('admin.pos.newPos',compact('tableList','foodTypeList','menuList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

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


    public function newPosDataInsert(Request $request){

        //dd($request->all());

         $r_number = mt_rand(1000000000000000, 9999999999999999);



        $dt = new DateTime();
        $dt->setTimezone(new DateTimezone('Asia/Dhaka'));
        $created_at = $dt->format('Y-m-d h:i:s');

        $cartContentOne = \Cart::getContent();
        $totalPriceNew = 0;
        foreach($cartContentOne as $productInfoCArt){



            $totalPriceNew = $totalPriceNew + ($productInfoCArt->price*$productInfoCArt->quantity);



        }

       // dd($totalPriceNew);

        $order=new Order();
        $order->created_at = $created_at;
        $order->invoice_id = $r_number;
        $order->addon= $request->addOn;
        $order->discount = $request->discount;
        $order->subtotal = $totalPriceNew;
        $order->table_id = $request->table_id;
        $order->extra_discount = $request->extra_Discount;
        $order->vat = $request->vatTAx;
        $order->grand_total = $totalPriceNew - $request->extra_Discount;
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
        $orderDetail->addOnLabelList =json_encode($productInfoCArt->attributes->addOnLabelList);



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
        return redirect()->route('printForKitchen',$orderId)->with('success','Send To Kitchen successfully!');
    }




    public function store(Request $request){

        $r_number = mt_rand(1000000000000000, 9999999999999999);



        $dt = new DateTime();
        $dt->setTimezone(new DateTimezone('Asia/Dhaka'));
        $created_at = $dt->format('Y-m-d h:i:s');

        $order=new Order();
        $order->created_at = $created_at;
        $order->invoice_id = $r_number;
        $order->addon= $request->addOn;
        $order->discount = $request->discount;
        $order->subtotal = $request->subTotal;
        $order->table_id = $request->table_id;
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
        $orderDetail->addOnLabelList =json_encode($productInfoCArt->attributes->addOnLabelList);



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

    public function printForKitchen($id){


         $orderDetail = Order::where('id',$id)->first();
        $productDetail = OrderDetail::where('order_id',$id)->get();
        // return view('admin.order.printForKitchen',compact('orderDetail','productDetail'));

         $data = view('admin.order.printForKitchen',compact('orderDetail','productDetail'));

        $mpdf = new Mpdf([
             'mode' => '-aCJK',
    'setAutoTopMargin' => 'stretch',
    'setAutoBottomMargin' => 'stretch',
    'default_font' => 'yahei',
    "autoScriptToLang" => true,
    "autoLangToFont" => true,
            'format' => [80,140]
            ]);

        $mpdf->WriteHTML($data);
        $mpdf->Output();
        die();


    }


    public function posTablePayment(Request $request){

        // dd($request->all());
          $orderDetail=Order::find($request->orderPosId);
          $orderDetail->status = 'complete';
          $orderDetail->pay_status = 'paid';
          $orderDetail->payment_type =$request->ptype;
          $orderDetail->extra_discount =$request->discountAmount;
          $orderDetail->vat =$request->taxAmount;
          $orderDetail->delivery_charge =$request->serviceAmount;
          $orderDetail->grand_total =$request->formFinalTotal;
          $orderDetail->save();

          return redirect()->route('printPdf',$request->orderPosId)->with('success','Send To Kitchen successfully!');


    }


    public function printPdf($id){

        $orderDetail = Order::where('id',$id)->first();
        $productDetail = OrderDetail::where('order_id',$id)->get();


//         $pdf=PDF::loadView('admin.pos.printPdf',['orderDetail'=>$orderDetail,'productDetail'=>$productDetail],[], [
//   'size' => '75mm 100mm'
// ]);
//       return $pdf->stream('Order_Receipt.pdf');



       $data = view('admin.pos.printPdf',compact('orderDetail','productDetail'));

        $mpdf = new Mpdf(['mode' => 'utf-8','format' => [80,160]]);

        $mpdf->WriteHTML($data);
        $mpdf->Output();
        die();








    }


    public function show($id){

        $orderDetail = Order::where('id',$id)->first();
        $productDetail = OrderDetail::where('order_id',$id)->get();
        return view('admin.pos.show',compact('orderDetail','productDetail'));

    }

    public function showDataOnModal(Request $request){

        $productLists = Product::where('id',$request->get_id_from_main)->first();
        return $data = view('admin.pos.partial.showDataOnModal',compact('productLists'))->render();

        // $response = [
        //     'studentpayments' => $StudentPayments,
        //     'paymentstotal' => $PaymentsTotal,
        //     'tuitiontotal' => $TuitionTotal,
        //     'dueamount' => $DueAmount
        // ];


        // return response()->json($response);


    }
}
