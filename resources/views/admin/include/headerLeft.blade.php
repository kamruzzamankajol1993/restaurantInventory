@php
$usr = Auth::guard('admin')->user();
@endphp

<aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar position-relative">
        <div class="multinav">
            <div class="multinav-scroll" style="height: 100%;">
                <!-- sidebar menu-->
                <ul class="sidebar-menu" data-widget="tree">

                    <li>
                        <a href="{{ route('admin.dashboard') }}">
                            <i class="icon-Home"><span class="path1"></span><span class="path2"></span></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Cart"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                            <span>POS</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>New Order</a></li>
                            <li><a href="order_list.php"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Order List</a></li>

                        </ul>
                    </li>

                    <li class="header">Order Management</li>

                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Clipboard-check"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                            <span>Orders</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>All</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Pending</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Confirmed</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Processing</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Out of Delivery</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Delivered</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Return</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Failed To Deliver</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Cancel</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Scheduled</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Cardboard-vr"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                            <span>Table Orders</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>All</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Confirmed</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Cooking</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Ready For Server</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Complete</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Cancel</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>On Table</a></li>
                        </ul>
                    </li>

                    <li class="header">Product Management</li>

                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Chart-bar"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                            <span>Category Setup</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">

                            @if ($usr->can('categoryAdd') || $usr->can('categoryView') ||  $usr->can('categoryDelete') ||  $usr->can('categoryUpdate'))
                            <li class="{{ Route::is('categoryList.index') || Route::is('categoryList.edit') || Route::is('categoryList.create') ? 'active' : '' }}"><a href="{{ route('categoryList.index') }}" class="{{ Route::is('categoryList.index') || Route::is('categoryList.edit') || Route::is('categoryList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Category List</a></li>
                            @endif
                            @if ($usr->can('subcategoryAdd') || $usr->can('subcategoryView') ||  $usr->can('subcategoryDelete') ||  $usr->can('subcategoryUpdate'))
                            <li class="{{ Route::is('subcategoryList.index') || Route::is('subcategoryList.edit') || Route::is('subcategoryList.create') ? 'active' : '' }}"><a href="{{ route('subcategoryList.index') }}" class="{{ Route::is('subcategoryList.index') || Route::is('subcategoryList.edit') || Route::is('subcategoryList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Sub Category List</a></li>
                            @endif



                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Menu"><span class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                            <span>Product Setup</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">
                            @if ($usr->can('productAttributeAdd') || $usr->can('productAttributeView') ||  $usr->can('productAttributeDelete') ||  $usr->can('productAttributeUpdate'))
                            <li><a href="{{ route('productAttribute.index') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Product Attributes</a></li>
                            @endif
                            @if ($usr->can('productAddOnAdd') || $usr->can('productAddOnView') ||  $usr->can('productAddOnDelete') ||  $usr->can('productAddOnUpdate'))
                            <li><a href="{{ route('productAddOn.index') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Product Addon</a></li>
                            @endif
                            @if ($usr->can('productAdd'))
                            <li><a href="{{ route('productList.create') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Product Add</a></li>
                            @endif
                            @if ($usr->can('productAdd') || $usr->can('productView') ||  $usr->can('productDelete') ||  $usr->can('productUpdate'))
                            <li><a href="{{ route('productList.index') }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Product List</a></li>
                            @endif
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Bulk Import</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Bulk Export</a></li>
                            <li><a href="#"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Product Reviews</a></li>

                        </ul>
                    </li>


                    <li class="header">Qr Code  Management</li>


                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-qrcode"><span class="path1"></span><span class="path2"></span></i>
                            <span>Qr Code & Table</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">


                    @if ($usr->can('tableAdd') || $usr->can('tableView') ||  $usr->can('tableDelete') ||  $usr->can('tableUpdate'))
                    <li class="{{ Route::is('tableList.index') || Route::is('tableList.edit') || Route::is('tableList.create') ? 'active' : '' }}"><a href="{{ route('tableList.index') }}" class="{{ Route::is('tableList.index') || Route::is('tableList.edit') || Route::is('tableList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Table List</a></li>
                    @endif
                    @if ($usr->can('qrAdd') || $usr->can('qrView') ||  $usr->can('qrDelete') ||  $usr->can('qrUpdate'))
                    <li class="{{ Route::is('qrCodeList.index') || Route::is('qrCodeList.edit') || Route::is('qrCodeList.create') ? 'active' : '' }}"><a href="{{ route('qrCodeList.index') }}" class="{{ Route::is('qrCodeList.index') || Route::is('qrCodeList.edit') || Route::is('qrCodeList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>QR CODE List</a></li>
                    @endif

                        </ul>
                    </li>

                    <li class="header">User Management</li>

                    @if ($usr->can('designationAdd') || $usr->can('designationView') ||  $usr->can('designationDelete') ||  $usr->can('designationUpdate'))
                    <li class="{{ Route::is('designationList.index') || Route::is('designationList.edit') || Route::is('designationList.create') ? 'active' : '' }}"><a href="{{ route('designationList.index') }}" class="{{ Route::is('designationList.index') || Route::is('designationList.edit') || Route::is('designationList.create') ? 'active' : '' }}"><i class="fa fa-file"><span class="path1"></span><span class="path2"></span></i>Designation List</a></li>
                    @endif

                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Group"><span class="path1"></span><span class="path2"></span></i>
                            <span>Customer</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">
                            @if ($usr->can('customerAdd'))
                    <li class="{{ Route::is('customer.create') ? 'active' : '' }}">
                        <a href="{{ route('customer.create') }}" class="{{ Route::is('customer.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Customer Add</a>
                    </li>
                    @endif

                    @if ($usr->can('customerView') || $usr->can('customerDelete') || $usr->can('customerUpdate'))
                    <li class="{{ Route::is('customer.index') || Route::is('customer.edit') ? 'active' : '' }}">
                        <a href="{{ route('customer.index') }}" class="{{ Route::is('customer.index') || Route::is('customer.edit') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Customer List</a>
                    </li>
                    @endif
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="icon-Tie"><span class="path1"></span><span class="path2"></span></i>
                            <span>Employees</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">

                            @if ($usr->can('userAdd'))
                    <li class="{{ Route::is('user.create') ? 'active' : '' }}">
                        <a href="{{ route('user.create') }}" class="{{ Route::is('user.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Employees Add</a>
                    </li>
                    @endif

                    @if ($usr->can('userView') || $usr->can('userDelete') || $usr->can('userUpdate'))
                    <li class="{{ Route::is('user.index') || Route::is('user.edit') ? 'active' : '' }}">
                        <a href="{{ route('user.index') }}" class="{{ Route::is('user.index') || Route::is('user.edit') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Employees List</a>
                    </li>
                    @endif


                        </ul>
                    </li>




                    <li class="header">System Management</li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-gear"><span class="path1"></span><span class="path2"></span></i>
                            <span>General Setting</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">




                            @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
                            <li class="{{ Route::is('systemInformation.index') ? 'active' : '' }}">
                                <a href="{{ route('systemInformation.index') }}" class="{{ Route::is('systemInformation.index') ? 'active' : '' }}" ><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>System</a>
                            </li>
                            @endif

                            @if ($usr->can('roleAdd') || $usr->can('roleView') || $usr->can('roleDelete') || $usr->can('roleUpdate'))
                            <li class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}">
                                <a href="{{ route('role.index') }}" class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Role</a>
                            </li>
                            @endif
                            @if ($usr->can('permissionAdd') || $usr->can('permissionView') || $usr->can('permissionDelete') || $usr->can('permissionUpdate'))
                            <li class="{{ Route::is('permission.index') ? 'active' : '' }}">
                                <a href="{{ route('permission.index') }}" class="{{ Route::is('permission.index') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i><span>Permission</span>
                            </a>
                            </li>
                            @endif


                        </ul>
                    </li>

                </ul>

                <div class="sidebar-widgets">
                    <div class="mx-25 mb-30 pb-20 side-bx bg-primary bg-food-dark rounded20">
                        <div class="text-center">
                            <img src="{{ asset('/') }}public/admin/assets/images/res-menu.png" class="sideimg" alt="">
                            <h3 class="title-bx">Add Menu</h3>
                            @if ($usr->can('menuListAdd') || $usr->can('menuListView') ||  $usr->can('menuListDelete') ||  $usr->can('menuListUpdate'))
                            <a href="{{ route('menuList.index') }}" class="text-white py-10 fs-16 mb-0">
                                Manage Your food and beverages menu</i>
                            </a>
                            @endif
                        </div>
                    </div>
                    <div class="copyright text-start m-25">
                        <p><strong class="d-block">{{ $ins_name }}</strong> © 2024 All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</aside>

