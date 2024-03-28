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
                    <li><a href="#">POS</a></li>
                    <li><a href="create_food_order.php">Order Process</a></li>
                    <li><a href="new_order.php">New Order List</a></li>
                    <li><a href="pending_order.php">Pending Order</a></li>
                    <li><a href="complete_order.php">Complete Order</a></li>
                    <li><a href="cancel_order.php">Cancel Order</a></li>
                    <li><a href="order_history.php">Order History</a></li>
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
                    <li><a href="add_new_food_category.php">Add Category</a></li>
                    <li><a href="manage_food_category.php">Category List</a></li>
                    <li><a href="add_food_item.php">Add Food</a></li>
                    <li><a href="food_item_list.php">Food List</a></li>
                </ul>

            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-shop-window"></i>
                    <span class="nav-text">Table & Waiter</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="table_list.php">Table List</a></li>
                    <li><a href="waiter_list.php">Waiter List</a></li>
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
                    <li><a href="add_supplier.php">Add Supplier</a></li>
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
                    <li><a href="add_designation.php">Designation</a></li>
                    <li><a href="add_employee.php">Add Employee</a></li>
                    <li><a href="employee_list.php">Employee List</a></li>
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
                    <li><a href="leave_type.php">Leave Type</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow " href="javascript:void(0);" aria-expanded="false">

                    <i class="bi bi-calendar-month"></i>
                    <span class="nav-text">Expense</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="expense_category.php">Expense Category</a></li>
                    <li><a href="expense_manage.php">Expense Manage</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
