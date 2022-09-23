<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Model;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Role 1: Teacher
        $mail_teacher = ['quynhlien', 'quynhanh', 'quangtay', 'hoangphuc', 'teacher'];
        $name_teacher = ['Quỳnh Liên', 'Quỳnh Anh', 'Lê Quang Tây', 'Bùi Hoàng Phúc', 'Teacher'];
        for($i = 0; $i < 5; $i++){
            Model\MUser::create([
                'mail' => $mail_teacher[$i],
                'name' => $name_teacher[$i],
                'password' => Hash::make('123456'),
                'role' => 1
            ]);
        }

        //Role 2: Student
        $mail_student = ['hoangkhang', 'minhthuan', 'huuduy', 'macly', 'daihiep', 'ngocnam', 'vantai', 'student'];
        $name_student = ['Nguyễn Hoàng Khang', 'Nguyễn Huỳnh Minh Thuận', 'Trần Hữu Duy', 'Thạch Mạc Ly', 'La Đại Hiệp', 'Phạm Ngọc Nam', 'Nguyễn Văn Tài', 'Student'];
        for($i = 0; $i < 7; $i++){
            Model\MUser::create([
                'mail' => $mail_student[$i],
                'name' => $name_student[$i],
                'password' => Hash::make('123456'),
                'role' => 2,
                'test_id' => $i+1
            ]);
        }
    }
}
