<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Carbon\Carbon;

class ChangeCardMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $office_name;
    protected $plan_name;
    protected $contract_date;
    protected $transaction_date;

    public function __construct($office_name,$plan_name,$contract_date,$transaction_date)
    {
        //
        $this->office_name = $office_name;
        $this->plan_name = $plan_name;
        $this->contract_date = $contract_date;
        $this->transaction_date = $transaction_date;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('info@med-hovit.com')
        ->subject("【HOVIT】カード変更完了")
        ->view('mail.change_card')
        ->with([
            'office_name'      => $this->office_name,
            'plan_name'         => $this->plan_name,
            'contract_date'     => $this->contract_date,
            'transaction_date'  => Carbon::createFromTimestamp($this->transaction_date)->format('Y年m月d日')
        ]);
    }
}
