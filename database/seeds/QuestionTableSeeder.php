<?php

use Illuminate\Database\Seeder;
use App\Model;

class QuestionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $content1 = [
            '1.	A:　 え～どれ？これ？ <br>
            B：うん、それ。',
            '2.	A：日本に来て、どのぐらいですか？ <br>
            B:　３年８ヶ月です。',
            '3.	A: 　黄色と赤の花をください。<br>
            B:　はい、黄色と赤ですね。',
            '4.	A：　ゆかちゃん、じゃーね。<br>
            B:　うん、また明日。',
            '5.	A:　日本は　はじめてですか。<br>
            B:　いや、３回目です。',
            '6.	A:　ごちそうさまでした。とってもおいしかったです。<br>
            B:　いいえ、どいたしまして。',
            '7.	A: Thưa…tôi xin phép về trước ạ! <br>
            B: Ơ, về à? Sau đây chúng tôi định đi uống đấy… <br>
            A: Tôi xin phép được từ chối ạ!',
            '8.	A: Nè nè! Dự định ngày mai của ông là gì? <br>
            B: Hỏi để làm gì? Khó chịu quá đấy!',
        ];

        $time1 = [8,10,9,7,8,10,15,10];

        $content3 = ['PHASE 1 - GHI ÂM 3-1.mp3', 'PHASE 1 - GHI ÂM 3-2.mp3', 'PHASE 1 - GHI ÂM 3-3.mp3'];

        $content = [
            '', 
            'A: YUKAchan! Hôm nay có gì đó khác khác nhỉ! <br>
            B: Hể? Vậy sao? <br>
            A: UH. A không. Hoàn toàn khác… <br>
            B: Thật ra, hôm nay, có hẹn hò đấy! Mong chờ quá đây nè!!! <br>
            A: Ô vậy à! Hay nhỉ! Phải cái anh Giám đốc bên xí nghiệp IT đấy không? <br>
            B: Đúng, đúng, đúng! Vừa hào hoa, vừa thông minh… Kiểu người thật tuyệt!!! <br>
            A: Hay quá nhỉ! Ghen tỵ quá đi!', 
            '', 
            'Bạn hãy tự phát họa cuộc đàm thoại giữa bạn và 1 nhân vật nào đó theo chủ đề sau: <br>
            “Bạn nhận được kết quả báo đậu trong kỳ thi tiếng Nhật JLPT, bạn hãy KHOE kết quả thi với họ” <br>
            (VD: Bạn trò chuyện với bạn thân, người trong gia đình, người yêu, giáo viên chủ nhiệm…) <br>
            *Yêu cầu đề bài:  <br>
            1/ Cuộc hội thoại giữa 2 nhân vật tối thiểu phải từ 5 câu trở lên.  <br>
            2/ Khi trình bày, bạn cần biểu đạt được cảm xúc của nhân vật trong lời thoại.'
        ];

        for($core = 1; $core <= 5; $core++){
            for($code_test = 1; $code_test <= 7; $code_test++){
                $test = Model\Test::where('core_id', $core)->where('code', 'M'.$code_test)->first();
                $group = Model\Group::where('test_id', $test->id)->orderBy('stt')->get();
                $stt1 = 1;
                $stt2 = 1;
                $stt3 = 1;
                $stt4 = 1;
                foreach($group as $key => $v) {
                    if ($v->stt == 1) {
                        foreach($content1 as $key1 => $c) {
                            Model\Question::create([
                                'group_id' => $v->id,
                                'stt' => $stt1++,
                                'content' => $c,
                                'time' => $time1[$key1]
                            ]);
                        }
                    } else if ($v->stt == 2) {
                        Model\Question::create([
                            'group_id' => $v->id,
                            'stt' => $stt2++,
                            'content' => $content[$key]
                        ]);
                    } else if ($v->stt == 3) {
                        foreach($content3 as $c) {
                            Model\Question::create([
                                'group_id' => $v->id,
                                'stt' => $stt3++,
                                'content' => $c,
                                'audio' => 1
                            ]);
                        }                        
                    } else {
                        Model\Question::create([
                            'group_id' => $v->id,
                            'stt' => $stt4++,
                            'content' => $content[$key]
                        ]);
                    }
                }
            }
        }
    }
}
