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
        //1: Admin
        // $mail_admin = ['quynhlien', 'quynhanh', 'quangtay', 'hoangphuc', 'admin5'];
        // $name_admin = ['Quỳnh Liên', 'Quỳnh Anh', 'Lê Quang Tây', 'Bùi Hoàng Phúc', 'admin5'];
        // for($i = 0; $i < 5; $i++){
        //     Model\MUser::create([
        //         'mail' => $mail_admin[$i],
        //         'name' => $name_admin[$i],
        //         'password' => Hash::make('123456'),
        //         'role' => 1,
        //         'test_id' => 'General OS '.$i,
        //         'code' => 'General OS '.$i
        //     ]);
        // }

        //2: Teacher
        $mail_teacher = ['quynhlien@mail.com', 'quynhanh@mail.com', 'quangtay@mail.com', 'hoangphuc@mail.com', 'teacher@mail.com'];
        $name_teacher = ['Quỳnh Liên', 'Quỳnh Anh', 'Lê Quang Tây', 'Bùi Hoàng Phúc', 'teacher'];
        for($i = 0; $i < 5; $i++){
            Model\MUser::create([
                'mail' => $mail_teacher[$i],
                'name' => $name_teacher[$i],
                'password' => Hash::make('123456'),
                'role' => 2
            ]);
        }

        //3: Student
        $mail_student = ['student1@mail.com', 'student2@mail.com', 'student3@mail.com', 'student4@mail.com', 'student5@mail.com'];
        $name_student = ['Student 1', 'Student 2', 'Student 3', 'Student 4', 'Student 5'];
        for($i = 0; $i < 5; $i++){
            Model\MUser::create([
                'mail' => $mail_student[$i],
                'name' => $name_student[$i],
                'password' => Hash::make('123456'),
                'role' => 3
            ]);
        }
    }
}
