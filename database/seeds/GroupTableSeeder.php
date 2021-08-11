<?php

use Illuminate\Database\Seeder;
use App\Model;

class GroupTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = ['PHẦN THI 8 CÂU ĐƠN LẺ', 'ĐOẠN HỘI THOẠI CÓ THỜI GIAN ĐỂ GHI NHỚ', '' , ''];
        $time = [90, 105, 60, 600];
        for($core = 1; $core <= 5; $core++){
            for($code_test = 1; $code_test <= 7; $code_test++){
                $test = Model\Test::where('core_id', $core)->where('code', 'M'.$code_test)->first();
                for($i = 1; $i <= 4; $i++){
                    Model\Group::create([
                        'test_id' => $test->id,
                        'name' => $data[$i-1],
                        'stt' => $i,
                        'time' => $time[$i-1]
                    ]);
                }
            }
        }
    }
}
