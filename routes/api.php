<?php
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/','Auth\AuthController@api_index')->name('api');

Route::group(['middleware' => ['auth.api', 'jwt.blacklist']], function () {
    // CORE 
    Route::group(['namespace' => 'Core', 'prefix' => 'core'], function () {
        Route::get('/v1', 'CoreController@api_get_list_core');
        Route::post('add/v1', 'CoreController@notification_add');
    });

    // TEST 
    Route::group(['namespace' => 'Test', 'prefix' => 'test'], function () {
        Route::get('/v1', 'TestController@api_get_list_test');
        Route::post('add/v1', 'TestController@notification_add');
    });

    // GROUP 
    Route::group(['namespace' => 'Group', 'prefix' => 'group'], function () {
        Route::get('/v1', 'GroupController@api_get_list_group');
        Route::post('add/v1', 'GroupController@notification_add');
    });

    // EXAMINATION 
    Route::group(['namespace' => 'Examination', 'prefix' => 'examination'], function () {
        Route::post('record', 'ExaminationController@api_upload_record');
    });

    // RANDOM 
    Route::group(['namespace' => 'Random', 'prefix' => 'random'], function () {
        Route::get('/v1', 'RandomController@api_random');
    });

});