<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Artisan;
use App\Model;
use Cookie;
use Storage;

class AuthController extends Controller
{
    protected $instance;

    public function __construct()
    {
        $this->instance = $this->instance(\App\Http\Helper\Admin\Auth\Helper::class);
    }

    public function login(){
        try{         
            $token = Cookie::get('_token_mainte');
            if($token && Auth::check()){
                return redirect()->route('admin.page.index');
            }else{
                return view('theme.web.auth.login');
            }
        }catch(\Exception $e){
            return redirect()->route('admin.page.login');
        }
    }

    public function index(Request $request){
        return redirect()->route('operator.dashboard');
    }

    public function logout(){
        try{
            $token = Cookie::get('_token_mainte');
            $this->blacklist($token);
            Cookie::queue(Cookie::forget('_token_mainte'));
         
            return redirect()->route('admin.page.login');
        }catch(\Exception $e){
            return redirect()->route('admin.page.login');
        }
    }

    public function blacklist($token)
    {
        try {
            $check = Storage::disk('blacklist')->exists(md5($token));
            if(!$check) {
                Storage::disk('blacklist')->put(md5($token), 'Blocked');
            }
        } catch (\Exception $e) {
            return;
        }
    }
}
