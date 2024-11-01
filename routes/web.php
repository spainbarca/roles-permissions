<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\RoleController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [AuthController::class, 'login']);
Route::post('/', [AuthController::class, 'auth_login']);

Route::get('logout', [AuthController::class, 'logout']);

Route::group(['middleware' => 'useradmin'], function () {

    Route::get('panel/dashboard', [DashboardController::class, 'dashboard']);
    Route::prefix('panel')->name('panel.')->group(function () {
        Route::resource('role', RoleController::class);
    });
});

