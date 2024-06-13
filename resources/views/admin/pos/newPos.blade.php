<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pos</title>

    <!-- Vendors Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/vendors_css.css">

    <!-- Style-->
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/style.css">
    <link rel="stylesheet" href="{{ asset('/') }}public/admin/assets/css/skin_color.css">
</head>
<body class="hold-transition light-skin sidebar-mini theme-primary fixed">

<div class="wrapper">
    <div id="loader"></div>


    <!--*******************
    Top Header start
    ********************-->
    @include('admin.include.header')
    <!--*******************
    Top Header end
    ********************-->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="margin-left:30px !important;">
        <div class="container-full">
            <section class="content">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5>POS</h5>
                                    <div class="d-flex justify-content-center">
                                        <button class="btn btn-primary btn-sm me-5">Point Of Sales</button>
                                        <button class="btn btn-primary btn-sm me-5">Table</button>
                                        <button class="btn btn-primary btn-sm me-5">Order</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="box">
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!-- Nav tabs -->
                                <div class="vtabs customvtab">
                                    <ul class="nav nav-tabs tabs-vertical" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-bs-toggle="tab"
                                               href="#home3" role="tab" aria-expanded="true">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    All Dishes
                                                </div>

                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab" href="#profile3"
                                               role="tab" aria-expanded="false">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    All Dishes
                                                </div>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-bs-toggle="tab" href="#messages3"
                                               role="tab" aria-expanded="false">
                                                <div class="text-center">
                                                    <i class="fa fa-sitemap"></i> <br>
                                                    All Dishes
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="home3" role="tabpanel" aria-expanded="true">
                                            <div class="ps-20">
                                                <div class="row">
                                                    <div class="col-12 mb-5">

                                                        <h3>Search The Product</h3>
                                                        <div class="search-bx">
                                                            <form>
                                                                <div class="input-group">
                                                                    <input type="search" class="form-control"
                                                                           placeholder="Search" aria-label="Search"
                                                                           aria-describedby="button-addon2">
                                                                    <div class="input-group-append">
                                                                        <button class="btn" type="submit"
                                                                                id="button-addon3"><i
                                                                                    class="ti-search"></i></button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mt-20">
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModal">
                                                                <img class="card-img-top"
                                                                     src="../images/food/burgers.jpg"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h3 class="card-title">Grill Chicken Chop®</h3>
                                                                    <p class="card-text">chicken, egg, mushroom,
                                                                        salad</p>
                                                                    <h4 class="pos_price">110 Taka</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-lg-3 col-sm-6">
                                                        <div class="card pos">
                                                            <a href="#" data-bs-toggle="modal"
                                                               data-bs-target="#myModal">
                                                                <img class="card-img-top"
                                                                     src="../images/food/burgers.jpg"
                                                                     alt="Card image cap">
                                                                <div class="card-body">
                                                                    <h3 class="card-title">Grill Chicken Chop®</h3>
                                                                    <p class="card-text">chicken, egg, mushroom,
                                                                        salad</p>
                                                                    <h4 class="pos_price">110 Taka</h4>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="profile3" role="tabpanel" aria-expanded="false">

                                        </div>
                                        <div class="tab-pane" id="messages3" role="tabpanel" aria-expanded="false">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <div class="col-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="pos-sidebar">
                                    <div class="pos-sidebar-product">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <select class="form-control select2"
                                                            data-placeholder="Select a State"
                                                            style="width: 100%;">
                                                        <option>Select Customer</option>
                                                        <option>Alaska</option>
                                                        <option>California</option>
                                                        <option>Delaware</option>
                                                        <option>Tennessee</option>
                                                        <option>Texas</option>
                                                        <option>Washington</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <button class="btn btn-primary-light"><i class="fa fa-plus"></i> Add
                                                    Customer
                                                </button>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <select class="form-control" name="" id="">
                                                        <option value="">Select Table</option>
                                                        <option value="">T1</option>
                                                        <option value="">T2</option>
                                                        <option value="">T3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <select class="form-control" name="" id="">
                                                        <option value="">Select Order Type</option>
                                                        <option value="">Take Away</option>
                                                        <option value="">Dine In</option>
                                                        <option value="">Home Delivery</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="../images/food/burgers.jpg" alt="">
                                                            <div class="pos-product-text">
                                                                <p>Grill Pork Chop</p>
                                                                <p>128 TaKa</p>
                                                                <div class="d-flex">
                                                                    <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a>
                                                                    <input type="text" class="custom-form" name="qty"
                                                                           value="1">
                                                                    <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="p-2 flex-fill text-end">
                                                        <a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="../images/food/burgers.jpg" alt="">
                                                            <div class="pos-product-text">
                                                                <p>Grill Pork Chop</p>
                                                                <p>128 TaKa</p>
                                                                <div class="d-flex">
                                                                    <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a>
                                                                    <input type="text" class="custom-form" name="qty"
                                                                           value="1">
                                                                    <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="p-2 flex-fill text-end">
                                                        <a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="../images/food/burgers.jpg" alt="">
                                                            <div class="pos-product-text">
                                                                <p>Grill Pork Chop</p>
                                                                <p>128 TaKa</p>
                                                                <div class="d-flex">
                                                                    <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a>
                                                                    <input type="text" class="custom-form" name="qty"
                                                                           value="1">
                                                                    <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="p-2 flex-fill text-end">
                                                        <a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="d-flex bd-highlight">
                                                    <div class="p-2 flex-fill">
                                                        <div class="d-flex justify-content-between">
                                                            <img height="100" width="100" src="../images/food/burgers.jpg" alt="">
                                                            <div class="pos-product-text">
                                                                <p>Grill Pork Chop</p>
                                                                <p>128 TaKa</p>
                                                                <div class="d-flex">
                                                                    <a href="#" class="btn btn-primary btn-sm me-5"><i class="fa fa-minus"></i></a>
                                                                    <input type="text" class="custom-form" name="qty"
                                                                           value="1">
                                                                    <a href="#" class="btn btn-primary btn-sm ms-5"><i class="fa fa-plus"></i></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="p-2 flex-fill text-end">
                                                        <a href="#" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                    </div>
                                                </div>
                                                <hr>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pos-sidebar-button">
                                        <table class="custom-table">
                                            <tbody>
                                            <tr>
                                                <td>Subtotal</td>
                                                <td class="text-end">100</td>
                                            </tr>
                                            <tr>
                                                <td>taxes</td>
                                                <td class="text-end">100</td>
                                            </tr>
                                            </tbody>
                                            <tfoot style="border-top: 1px solid black">
                                                <tr>
                                                    <td>Total</td>
                                                    <td class="text-end">100</td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <button class="btn btn-primary" type="button"><i
                                                            class="fa fa-cart-plus"></i> Submit Order
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </div>
    </div>
    <!-- /.content-wrapper -->


    <!--*******************
    Footer Section  start
    ********************-->
    @include('admin.include.footer')
    <!--*******************
    Footer Section  end
    ********************-->


    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6 col-sm-12 col-md-6">
                            <div class="modal-pos-product-img">
                                <div class="img" style="background-image: url(../images/food/burgers.jpg)"></div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12 col-md-6">
                            <div class="modal-pos-product-info">
                                <h3>Name</h3>
                                <p>Description</p>
                                <h4>Price</h4>
                                <div class="d-flex mt-10 mb-3">
                                    <a href="#" class="btn btn-secondary"><i class="fa fa-minus"></i></a>
                                    <input type="text" class="form-control w-50px fw-bold mx-2 text-center" name="qty"
                                           value="1">
                                    <a href="#" class="btn btn-secondary"><i class="fa fa-plus"></i></a>
                                </div>
                                <hr>
                                <div class="mb-2">
                                    <div class="text-body">Add On:</div>
                                    <div>
                                        <div>
                                            <input type="checkbox" name="addon[sos]" value="true" class="option-input"
                                                   id="addon1">
                                            <label class="option-label" for="addon1">
                                                <span class="option-text">More BBQ sos</span>
                                                <span class="option-price">+0.00</span>
                                            </label>
                                        </div>
                                        <div>
                                            <input type="checkbox" name="addon[ff]" value="true" class="option-input"
                                                   id="addon2">
                                            <label class="option-label" for="addon2">
                                                <span class="option-text">Extra french fries</span>
                                                <span class="option-price">+1.00</span>
                                            </label>
                                        </div>
                                        <div>
                                            <input type="checkbox" name="addon[ms]" value="true" class="option-input"
                                                   id="addon3">
                                            <label class="option-label" for="addon3">
                                                <span class="option-text">Mushroom soup</span>
                                                <span class="option-price">+3.50</span>
                                            </label>
                                        </div>
                                        <div>
                                            <input type="checkbox" name="addon[ms]" value="true" class="option-input"
                                                   id="addon4">
                                            <label class="option-label" for="addon4">
                                                <span class="option-text">Lemon Juice (set)</span>
                                                <span class="option-price">+2.50</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="mb-2">
                                    <div class="form-group">
                                        <label class="form-label">Extra</label>
                                        <textarea rows="5" class="form-control" placeholder="Food"></textarea>
                                    </div>
                                </div>
                                <div class="row mt-20">
                                    <div class="col-4">
                                        <div class="d-grid gap-2">
                                            <button class="btn btn-pos-close-custom" type="button"
                                                    data-bs-dismiss="modal">Close
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="d-grid gap-2">
                                            <button class="btn btn-pos-custom" type="button"><i
                                                        class="fa fa-cart-plus"></i> Add
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


</div>

<!--*******************
Chat Section  start
********************-->
@include('admin.include.chat_box')
<!--*******************
Chat Section  end
********************-->


<!-- Vendor JS -->
<script src="{{ asset('/') }}public/admin/assets/js/vendors.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/chat-popup.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/apexcharts-bundle/dist/apexcharts.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-select/dist/js/bootstrap-select.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.js"></script>
<script src="{{ asset('/') }}public/admin/assets//vendor_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/select2/dist/js/select2.full.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/moment/min/moment.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/timepicker/bootstrap-timepicker.min.js"></script>
<script src="{{ asset('/') }}public/admin/assets/vendor_plugins/iCheck/icheck.min.js"></script>


<script src="{{ asset('/') }}public/admin/assets/vendor_components/datatable/datatables.min.js"></script>


<!-- Riday Admin App -->
<script src="{{ asset('/') }}public/admin/assets/js/template.js"></script>

<script src="{{ asset('/') }}public/admin/assets/js/pages/advanced-form-element.js"></script>
<script src="{{ asset('/') }}public/admin/assets/js/pages/data-table.js"></script>


</body>

</html>
