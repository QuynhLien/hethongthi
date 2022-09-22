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

Route::get('/', 'Auth\AuthController@login');
Route::get('/login', 'Auth\AuthController@login')->name('index.login');

Route::group(['middleware' => ['auth.web']], function () {
    Route::get('/', 'Auth\AuthController@index')->name('web');
    Route::get('/logout','Auth\AuthController@logout')->name('web.logout');

    //TEST
    Route::group(['namespace' => 'Test', 'prefix' => 'test'], function () {
        Route::get('/', 'TestController@get_list_test');
        Route::get('/{id}', 'TestController@get_list_group');
    });

    //CORE
    Route::group(['namespace' => 'Core', 'prefix' => 'core'], function () {
        Route::get('/', 'CoreController@get_list_core');
        Route::get('/{id}', 'CoreController@get_list_test');
    });

    //EXAMINATION
    Route::group(['namespace' => 'Examination', 'prefix' => 'examination'], function () {
        Route::get('/{test}/{group}', 'ExaminationController@get_examination');
    });

    //DASHBOARD
    Route::group(['namespace' => 'Dashboard', 'prefix' => 'dashboard'], function () {
        Route::get('/', 'DashboardController@get_dashboard')->name('web.dashboard');
    });

    //RANDOM
    Route::group(['namespace' => 'Random', 'prefix' => 'random'], function () {
        Route::get('/', 'RandomController@get_random')->name('web.random');
    });

    //THANK YOU
    Route::group(['namespace' => 'Thankyou', 'prefix' => 'thankyou'], function () {
        Route::get('/', 'ThankyouController@get_thankyou');
    });

    //GET AUDIO
    Route::group(['namespace' => 'GetAudio', 'prefix' => 'ketqua'], function () {
        Route::get('/', 'GetAudioController@get_audio');
    });

    Route::get('/linkstorage', function () {
        Artisan::call('storage:link');
    });
});