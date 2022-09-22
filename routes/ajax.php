<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Ajax Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('/', 'Auth\AjaxController@ajax_login')->name('ajax');
Route::post('/login','Auth\AjaxController@ajax_login')->name('ajax/login');