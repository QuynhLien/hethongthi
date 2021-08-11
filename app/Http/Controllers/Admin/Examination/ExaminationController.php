<?php

namespace App\Http\Controllers\Admin\Examination;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Model;

class ExaminationController extends Controller
{
    protected $instance;
    protected $lang;

    public function __construct()
    {
        $this->instance = $this->instance(\App\Http\Helper\Admin\Helper::class);
    }

    public function get_examination($id_group){
        // $user = $this->getInfoUserCookie();
        // if (in_array($user['role'], [2])) {
            $group = Model\Group::find($id_group);
            $questions = Model\Question::where('group_id', $group->id)->get();
            return view('theme.web.page.examination.index', [
                'page_title' => 'MỤC '.$group->stt.'.'.$group->name,
                'time' => $group->time,
                'questions' => $questions
            ]);
        // }
    }
}
