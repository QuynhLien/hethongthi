<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','Auth\AuthController@login')->name('admin.page.index.login');
Route::get('/login','Auth\AuthController@login')->name('admin.page.login');
Route::get('/forgot', 'Auth\AuthController@forgot')->name('admin.page.forgot');
Route::get('/reset-password/{token}', 'Auth\AuthController@forgot_password_admin')->name('admin.page.reset_link');

Route::group(['middleware' => ['auth.web']], function () {
    Route::get('/', 'Auth\AuthController@index')->name('admin.page.index');

    Route::get('/logout','Auth\AuthController@logout')->name('admin.page.logout');

    Route::get('/change-password', 'Auth\AuthController@change_password')->name('admin.page.change.password');
    
    //USER
    Route::group(['namespace' => 'User', 'prefix' => 'user'], function () {
        Route::get('/', 'UserController@user_get_list')->name('operator.medical.user');
    });

    //TEST
    Route::group(['namespace' => 'Test', 'prefix' => 'test'], function () {
        Route::get('/', 'TestController@get_list_test')->name('operator.test');
        Route::get('/{id}', 'TestController@get_list_group')->name('operator.test.get_group');
    });

    //CORE
    Route::group(['namespace' => 'Core', 'prefix' => 'core'], function () {
        Route::get('/', 'CoreController@get_list_core')->name('operator.core');
        Route::get('/{id}', 'CoreController@get_list_test')->name('operator.core.get_test');
    });

    //EXAMINATION
    Route::group(['namespace' => 'Examination', 'prefix' => 'examination'], function () {
        Route::get('/{id}', 'ExaminationController@get_examination')->name('operator.examination.group');
    });
});