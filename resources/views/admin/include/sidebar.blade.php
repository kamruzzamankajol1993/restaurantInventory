 @php
     $usr = Auth::guard('admin')->user();
 @endphp

<div class="dlabnav border-right">
    <div class="dlabnav-scroll">
        <p class="menu-title style-1"> Main Menu</p>
        <ul class="metismenu" id="menu">
            <li><a href="index.php" class="" aria-expanded="false">
                    <i class="bi bi-gear-wide"></i>
                    <span class="nav-text">Dashboard</span>
                </a>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-shop-window"></i>
                    <span class="nav-text">Manage Order</span>
                </a>
                <ul aria-expanded="false">

                    @if ($usr->can('posAdd') || $usr->can('posView') ||  $usr->can('posDelete') ||  $usr->can('posUpdate'))
                    <li><a href="#">POS</a></li>
                    @endif

                    @if ($usr->can('orderAdd') || $usr->can('orderView') ||  $usr->can('orderDelete') ||  $usr->can('orderUpdate'))
                    <li><a href="create_food_order.php">Order Process</a></li>
                    <li><a href="new_order.php">New Order List</a></li>
                    <li><a href="pending_order.php">Pending Order</a></li>
                    <li><a href="complete_order.php">Complete Order</a></li>
                    <li><a href="cancel_order.php">Cancel Order</a></li>
                    <li><a href="order_history.php">Order History</a></li>
                    @endif
                    <li><a href="kitchen_dashboard.php">Kitchen Dashboard</a></li>
                    <li><a href="counter_dashboard.php">Counter Dashboard</a></li>
                </ul>

            </li>
            <p class="menu-title style-1"> Food & Table Management</p>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-kanban"></i>
                    <span class="nav-text">Food Manage</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('menuAdd'))
                    <li class="{{ Route::is('menuList.create') ? 'mm-active' : '' }}"><a href="{{ route('menuList.create') }}" class="{{ Route::is('menuList.create') ? 'mm-active' : '' }}">Add Menu </a></li>
                    @endif


                    @if ($usr->can('menuAdd') || $usr->can('menuView') ||  $usr->can('menuDelete') ||  $usr->can('menuUpdate'))
                    <li class="{{ Route::is('menuList.index') || Route::is('menuList.edit') || Route::is('menuList.create') ? 'mm-active' : '' }}"><a href="{{ route('menuList.index') }}" class="{{ Route::is('menuList.index') || Route::is('menuList.edit') || Route::is('menuList.create') ? 'mm-active' : '' }}">Menu List</a></li>
                    @endif


                    @if ($usr->can('foodAdd'))
                    <li class="{{ Route::is('foodList.create') ? 'mm-active' : '' }}"><a href="{{ route('foodList.create') }}" class="{{ Route::is('foodList.create') ? 'mm-active' : '' }}">Add Food </a></li>
                    @endif


                    @if ($usr->can('foodAdd') || $usr->can('foodView') ||  $usr->can('foodDelete') ||  $usr->can('foodUpdate'))
                    <li class="{{ Route::is('foodList.index') || Route::is('foodList.edit') || Route::is('foodList.create') ? 'mm-active' : '' }}"><a href="{{ route('foodList.index') }}" class="{{ Route::is('foodList.index') || Route::is('foodList.edit') || Route::is('foodList.create') ? 'mm-active' : '' }}">Food List</a></li>
                    @endif
                </ul>

            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="fas fa-qrcode"></i>
                    <span class="nav-text">Table & QR CODE</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('tableAdd') || $usr->can('tableView') ||  $usr->can('tableDelete') ||  $usr->can('tableUpdate'))
                    <li class="{{ Route::is('tableList.index') || Route::is('tableList.edit') || Route::is('tableList.create') ? 'mm-active' : '' }}"><a href="{{ route('tableList.index') }}" class="{{ Route::is('tableList.index') || Route::is('tableList.edit') || Route::is('tableList.create') ? 'mm-active' : '' }}">Table List</a></li>
                    @endif
                    @if ($usr->can('qrAdd') || $usr->can('qrView') ||  $usr->can('qrDelete') ||  $usr->can('qrUpdate'))
                    <li class="{{ Route::is('qrCodeList.index') || Route::is('qrCodeList.edit') || Route::is('qrCodeList.create') ? 'mm-active' : '' }}"><a href="{{ route('qrCodeList.index') }}" class="{{ Route::is('qrCodeList.index') || Route::is('qrCodeList.edit') || Route::is('qrCodeList.create') ? 'mm-active' : '' }}">QR CODE List</a></li>
                    @endif
                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-tags"></i>
                    <span class="nav-text">Reservation</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="reservation.php">Reservation List</a></li>
                    <li><a href="unavailable_day.php">Unavailable Day</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-cart-fill"></i>
                    <span class="nav-text">Purchase Manage</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="product_purchase_list.php">Purchase List</a></li>
                    <li><a href="add_product_purchase.php">Add Purchase</a></li>

                    @if ($usr->can('supplierAdd') || $usr->can('supplierView') ||  $usr->can('supplierDelete') ||  $usr->can('supplierUpdate'))
                    <li class="{{ Route::is('supplierList.index') || Route::is('supplierList.edit') || Route::is('supplierList.create') ? 'mm-active' : '' }}"><a href="{{ route('supplierList.index') }}" class="{{ Route::is('supplierList.index') || Route::is('supplierList.edit') || Route::is('supplierList.create') ? 'mm-active' : '' }}">Supplier List</a></li>
                    @endif
                    <li><a href="add_product_name.php">Add Product Name</a></li>
                    <li><a href="stock_out_product.php">Stock out Ingredient</a></li>
                </ul>
            </li>
            <p class="menu-title style-1"> Human Resource Management</p>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-person"></i>
                    <span class="nav-text">HRM</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('designationAdd') || $usr->can('designationView') ||  $usr->can('designationDelete') ||  $usr->can('designationUpdate'))
    <li class="{{ Route::is('designationList.index')  ? 'mm-active' : '' }}">
    <a href="{{ route('designationList.index') }}" class="{{ Route::is('designationList.index')  ? 'mm-active' : '' }}"><span>Designation</span> </a>
    </li>
    @endif




                    @if ($usr->can('userAdd'))
                    <li class="{{ Route::is('user.create') ? 'mm-active' : '' }}">
                        <a href="{{ route('user.create') }}" class="{{ Route::is('user.create') ? 'mm-active' : '' }}" data-key="t-one-page">Add Employee</a>
                    </li>
                    @endif



                    @if ($usr->can('userView') || $usr->can('userDelete') || $usr->can('userUpdate'))
                    <li class="{{ Route::is('user.index') || Route::is('user.edit') ? 'mm-active' : '' }}">
                        <a href="{{ route('user.index') }}" class="{{ Route::is('user.index') || Route::is('user.edit') ? 'mm-active' : '' }}" data-key="t-one-page">Employee List</a>
                    </li>
                    @endif


                    <li><a href="employee_salary.php">Manage Employee Salary</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-list-check"></i>
                    <span class="nav-text">Attendance</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="attendance_list.php">Attendance List</a></li>
                    <li><a href="attendance_report.php">Attendance Report</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-list-stars"></i>
                    <span class="nav-text">leave</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="leave_list.php">Leave List</a></li>
                    <li><a href="add_new_leave.php">Add New Leave</a></li>
                    <li><a href="holiday.php">Yearly Holiday</a></li>


                    @if ($usr->can('leaveTypeAdd') || $usr->can('leaveTypeView') ||  $usr->can('leaveTypeDelete') ||  $usr->can('leaveTypeUpdate'))
                    <li class="{{ Route::is('leaveTypeList.index') || Route::is('leaveTypeList.edit') || Route::is('leaveTypeList.create') ? 'mm-active' : '' }}"><a href="{{ route('leaveTypeList.index') }}" class="{{ Route::is('leaveTypeList.index') || Route::is('leaveTypeList.edit') || Route::is('leaveTypeList.create') ? 'mm-active' : '' }}">Leave Type</a></li>
                    @endif



                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-calendar-month"></i>
                    <span class="nav-text">Expense</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('expenseCategoryAdd') || $usr->can('expenseCategoryView') ||  $usr->can('expenseCategoryDelete') ||  $usr->can('expenseCategoryUpdate'))
                    <li class="{{ Route::is('expenseCategoryList.index') || Route::is('expenseCategoryList.edit') || Route::is('expenseCategoryList.create') ? 'mm-active' : '' }}"><a href="{{ route('expenseCategoryList.index') }}" class="{{ Route::is('expenseCategoryList.index') || Route::is('expenseCategoryList.edit') || Route::is('expenseCategoryList.create') ? 'mm-active' : '' }}">Expense Category</a></li>
                    @endif
                    <li><a href="expense_manage.php">Expense Manage</a></li>
                </ul>
            </li>
            <p class="menu-title style-1">Setting</p>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-person"></i>
                    <span class="nav-text">General Setting</span>
                </a>
                <ul aria-expanded="false">






               @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
               <li class="{{ Route::is('systemInformation.index') ? 'mm-active' : '' }}">
                   <a href="{{ route('systemInformation.index') }}" class="{{ Route::is('systemInformation.index') ? 'mm-active' : '' }}" data-key="t-calendar">System</a>
               </li>
               @endif

               @if ($usr->can('roleAdd') || $usr->can('roleView') || $usr->can('roleDelete') || $usr->can('roleUpdate'))
               <li class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'mm-active' : '' }}">
                   <a href="{{ route('role.index') }}" class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'mm-active' : '' }}" data-key="t-nft-landing">Role</a>
               </li>
               @endif
               @if ($usr->can('permissionAdd') || $usr->can('permissionView') || $usr->can('permissionDelete') || $usr->can('permissionUpdate'))
               <li class="{{ Route::is('permission.index') ? 'mm-active' : '' }}">
                   <a href="{{ route('permission.index') }}" class="{{ Route::is('permission.index') ? 'mm-active' : '' }}"><span data-key="t-job">Permission</span>
               </a>
               </li>
               @endif
                </ul>
            </li>
        </ul>
    </div>
</div>
