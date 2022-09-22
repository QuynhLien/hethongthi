<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;
use App\Mail\RegisterUserAdmin;

class SendMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $mail_to;
    protected $mail_password;
    protected $account_manager_name;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($mail_to, $mail_password, $mail_type = "newuseradmin", $account_manager_name = '')
    {
        $this->mail_to = $mail_to;
        $this->mail_password = $mail_password;
        $this->account_manager_name = $account_manager_name;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        if ($this->mail_type == 'newuseradmin') {
            Mail::to($this->mail_to)->send(
                new RegisterUserAdmin(
                    $this->mail_to,
                    $this->mail_password,
                    $this->account_manager_name
                )
            );
        }

    }
}
