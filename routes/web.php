<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Auth\LoginController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\DashBoardController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\ProfileController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SystemInformationController;
use App\Http\Controllers\Admin\RegisterController;
use App\Http\Controllers\Admin\BranchController;
use App\Http\Controllers\Admin\DesignationController;
use App\Http\Controllers\Admin\DesignationStepController;
use App\Http\Controllers\Admin\TableController;
use App\Http\Controllers\Admin\QrCodeController;
use App\Http\Controllers\Admin\FoodController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\UnitController;
use App\Http\Controllers\Admin\ExpenseCategoryController;
use App\Http\Controllers\Admin\LeaveTypeController;
use App\Http\Controllers\Admin\SupplierController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\ProductAddOnController;
use App\Http\Controllers\Admin\ProductAttributeController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\MenuController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('admin.auth.login');
// });


Route::get('/', [App\Http\Controllers\HomeController::class, 'mainLogin'])->name('mainLogin');

Route::get('/clear', function() {
    \Illuminate\Support\Facades\Artisan::call('cache:clear');
    \Illuminate\Support\Facades\Artisan::call('config:clear');
    \Illuminate\Support\Facades\Artisan::call('config:cache');
    \Illuminate\Support\Facades\Artisan::call('view:clear');
    \Illuminate\Support\Facades\Artisan::call('route:clear');
    return 'Cleared!';
});


Route::controller(SettingController::class)->group(function () {
    Route::get('/error_500', 'error_500')->name('error_500');
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');



Route::group(['prefix' => 'admin'], function () {
    Route::resource('menuList', MenuController::class);
    Route::resource('productList', ProductController::class);

    Route::resource('customer', CustomerController::class);

    Route::resource('productAddOn', ProductAddOnController::class);
    Route::resource('productAttribute', ProductAttributeController::class);

    Route::resource('tableList', TableController::class);
    Route::resource('qrCodeList', QrCodeController::class);
    Route::resource('foodList', FoodController::class);
    Route::resource('categoryList', CategoryController::class);
    Route::resource('subcategoryList', SubCategoryController::class);
    Route::resource('unitList', UnitController::class);
    Route::resource('expenseCategoryList',ExpenseCategoryController::class);
    Route::resource('leaveTypeList',LeaveTypeController::class);
    Route::resource('supplierList',SupplierController::class);

    Route::controller(ProductController::class)->group(function () {

        Route::get('/getSubCategoryId', 'getSubCategoryId')->name('getSubCategoryId');

    });


    Route::controller(ProductAddOnController::class)->group(function () {

        Route::get('/searchProductAddOn', 'searchProductAddOn')->name('searchProductAddOn');

    });


    Route::controller(ProductAttributeController::class)->group(function () {

        Route::get('/searchProductAttribute', 'searchProductAttribute')->name('searchProductAttribute');

    });

    Route::controller(SubCategoryController::class)->group(function () {

        Route::get('/subcategoryStatusUpdate', 'subcategoryStatusUpdate')->name('subcategoryStatusUpdate');

    });




    Route::get('/', [DashBoardController::class, 'index'])->name('admin.dashboard');


    Route::resource('branchList', BranchController::class);

    Route::controller(CategoryController::class)->group(function () {

        Route::get('/categoryStatusUpdate', 'categoryStatusUpdate')->name('categoryStatusUpdate');
        Route::get('/prioritytatusUpdate', 'prioritytatusUpdate')->name('prioritytatusUpdate');

    });


    Route::controller(BranchController::class)->group(function () {
        Route::get('/checkBranch', 'checkBranch')->name('checkBranch');
        Route::get('/showBranchStep', 'showBranchStep')->name('showBranchStep');

    });


    Route::resource('designationList', DesignationController::class);

    Route::controller(DesignationController::class)->group(function () {
        Route::get('/checkDesignation', 'checkDesignation')->name('checkDesignation');
        Route::get('/getDesignationFromBranch', 'getDesignationFromBranch')->name('getDesignationFromBranch');
    });

    Route::resource('fd9OneForm', Fd9OneController::class);

    Route::controller(Fd9OneController::class)->group(function () {
        Route::get('/forwardingLetterForNothi/{id}', 'forwardingLetterForNothi')->name('forwardingLetterForNothi');
        Route::get('/verified_fd_nine_one_download/{id}','verified_fd_nine_one_download')->name('verified_fd_nine_one_download');
        Route::post('/statusUpdateForFd9One', 'statusUpdateForFd9One')->name('statusUpdateForFd9One');
        Route::get('/fd9OneDownload/{cat}/{id}', 'fd9OneDownload')->name('fd9OneDownload');
    });



    //register_list_view

    Route::controller(RegisterController::class)->group(function () {

        Route::post('/updateStatusRegForm', 'updateStatusRegForm')->name('updateStatusRegForm');
        Route::get('/printCertificateView','printCertificateView')->name('printCertificateView');
        Route::get('/printCertificateViewDemo','printCertificateViewDemo')->name('printCertificateViewDemo');



        Route::get('/printCertificateViewRenew','printCertificateViewRenew')->name('printCertificateViewRenew');
        Route::get('/printCertificateViewDemoRenew','printCertificateViewDemoRenew')->name('printCertificateViewDemoRenew');



        Route::get('/formOnePdfMain/{id}', 'formOnePdfMain')->name('formOnePdfMain');
        Route::get('/formOnePdfMainForeign/{id}','formOnePdfMainForeign')->name('formOnePdfMainForeign');
        Route::get('/formOnePdf/{main_id}/{id}','formOnePdf')->name('formOnePdf');
        Route::get('/formEightPdf/{main_id}','formEightPdf')->name('formEightPdf');
        Route::get('/sourceOfFund/{id}','sourceOfFund')->name('sourceOfFund');
        Route::get('/otherPdfView/{id}','otherPdfView')->name('otherPdfView');
        Route::get('/ngoMemberDocPdfView/{id}','ngoMemberDocPdfView')->name('ngoMemberDocPdfView');
        Route::get('/ngoDocPdfView/{id}','ngoDocPdfView')->name('ngoDocPdfView');
        Route::get('/renewPdfList/{main_id}/{id}','renewPdfList')->name('renewPdfList');
        Route::get('/newRegistrationList','newRegistrationList')->name('newRegistrationList');
        Route::get('/revisionRegistrationList','revisionRegistrationList')->name('revisionRegistrationList');
        Route::get('/alreadyRegistrationList','alreadyRegistrationList')->name('alreadyRegistrationList');
        Route::get('/registrationView/{id}','registrationView')->name('registrationView');


    });

    Route::controller(NameCangeController::class)->group(function () {

        Route::get('/printCertificateViewName','printCertificateViewName')->name('printCertificateViewName');
        Route::get('/printCertificateViewDemoName','printCertificateViewDemoName')->name('printCertificateViewDemoName');

        Route::get('/nameChangeDoc/{id}','nameChangeDoc')->name('nameChangeDoc');
        Route::get('/newNameChangeList','newNameChangeList')->name('newNameChangeList');
        Route::get('/revisionNameChangeList','revisionNameChangeList')->name('revisionNameChangeList');
        Route::get('/alreadNameChangeList','alreadNameChangeList')->name('alreadNameChangeList');
        Route::get('/nameChangeView/{id}','nameChangeView')->name('nameChangeView');
        Route::post('/updateStatusNameChangeForm','updateStatusNameChangeForm')->name('updateStatusNameChangeForm');
    });


    Route::controller(RenewController::class)->group(function () {

    Route::get('/newRenewList','newRenewList')->name('newRenewList');
    Route::get('/revisionRenewList','revisionRenewList')->name('revisionRenewList');
    Route::get('/alreadyRenewList','alreadyRenewList')->name('alreadyRenewList');
    Route::get('/renewView/{id}','renewView')->name('renewView');
    Route::post('/updateStatusRenewForm','updateStatusRenewForm')->name('updateStatusRenewForm');
    Route::get('viewFormEightPdf/{id}', 'viewFormEightPdf')->name('viewFormEightPdf');
    Route::get('changeAcNumberDownload/{id}', 'changeAcNumberDownload')->name('changeAcNumberDownload');
    Route::get('dueVatPdfDownload/{id}', 'dueVatPdfDownload')->name('dueVatPdfDownload');
    Route::get('copyOfChalanPdfDownload/{id}', 'copyOfChalanPdfDownload')->name('copyOfChalanPdfDownload');
    Route::get('yearlyBudgetPdfDownload/{id}', 'yearlyBudgetPdfDownload')->name('yearlyBudgetPdfDownload');
    Route::get('foreginPdfDownload/{id}', 'foreginPdfDownload')->name('foreginPdfDownload');
    Route::get('verifiedFdEightDownload/{id}', 'verifiedFdEightDownload')->name('verifiedFdEightDownload');
    Route::get('renewalFileDownload/{title}/{id}', 'renewalFileDownload')->name('renewalFileDownload');
    Route::get('changeAcNumberDownloadOld/{id}', 'changeAcNumberDownloadOld')->name('changeAcNumberDownloadOld');
    Route::get('dueVatPdfDownloadOld/{id}', 'dueVatPdfDownloadOld')->name('dueVatPdfDownloadOld');
    Route::get('copyOfChalanPdfDownloadOld/{id}', 'copyOfChalanPdfDownloadOld')->name('copyOfChalanPdfDownloadOld');
    Route::get('yearlyBudgetPdfDownloadOld/{id}', 'yearlyBudgetPdfDownloadOld')->name('yearlyBudgetPdfDownloadOld');
    Route::get('foreginPdfDownloadOld/{id}', 'foreginPdfDownloadOld')->name('foreginPdfDownloadOld');
    Route::get('verifiedFdEightDownloadOld/{id}', 'verifiedFdEightDownloadOld')->name('verifiedFdEightDownloadOld');

});



    //end register_list_view


    Route::resource('login', LoginController::class);
    Route::post('/logout/submit',[LoginController::class,'logout'])->name('admin.logout.submit');
    Route::resource('role', RoleController::class);
    Route::resource('profile', ProfileController::class);
    Route::resource('permission', PermissionController::class);
    Route::resource('user', AdminController::class);

  Route::controller(AdminController::class)->group(function () {

        Route::get('/checkWorkingDay', 'checkWorkingDay')->name('checkWorkingDay');

        Route::get('/getAdminDetail', 'getAdminDetail')->name('getAdminDetail');
        Route::post('/employeeEndDatePost', 'employeeEndDatePost')->name('employeeEndDatePost');
        Route::get('/employeeEndDate', 'employeeEndDate')->name('employeeEndDate');
        Route::post('/postPasswordChange', 'postPasswordChange')->name('postPasswordChange');
        Route::get('/accountPasswordChange/{id}', 'accountPasswordChange')->name('accountPasswordChange');
        Route::post('/checkMailPost', 'checkMailPost')->name('checkMailPost');
        Route::get('/forgetPassword', 'forgetPassword')->name('forgetPassword');
        Route::get('/checkMailForPassword', 'checkMailForPassword')->name('checkMailForPassword');
        Route::get('/newEmailNotify', 'newEmailNotify')->name('newEmailNotify');
        Route::post('/postPasswordChange', 'postPasswordChange')->name('postPasswordChange');
        Route::get('/accountPasswordChange/{id}', 'accountPasswordChange')->name('accountPasswordChange');

    });

    Route::resource('setting', SettingController::class);

    Route::controller(SettingController::class)->group(function () {


        Route::get('/passwordEdit', 'passwordEdit')->name('passwordEdit');


        Route::get('/basicInformationEdit', 'basicInformationEdit')->name('basicInformationEdit');
        Route::get('/digitalSignatureEdit', 'digitalSignatureEdit')->name('digitalSignatureEdit');
        Route::post('/digitalSignatureUpdate', 'digitalSignatureUpdate')->name('digitalSignatureUpdate');


        Route::get('/passwordEdit', 'passwordEdit')->name('passwordEdit');
        Route::post('/passwordUpdate', 'passwordUpdate')->name('passwordUpdate');

        Route::get('/profilePictureEdit', 'profilePictureEdit')->name('profilePictureEdit');
        Route::post('/profilePictureUpdate', 'profilePictureUpdate')->name('profilePictureUpdate');

    });

    Route::resource('systemInformation', SystemInformationController::class);




});
