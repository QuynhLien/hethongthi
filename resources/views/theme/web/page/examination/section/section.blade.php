@foreach($questions as $question)
<div class="row mg-t-40 pd-l-40">
    <div class="col-8" html="true">
        {{$question->content}}
    </div>
    <div class="col-2">
        <img src="{{asset('assets/images/microphone.svg')}}" height="30"  class="microphone">
    </div>
</div>
@endforeach

<div class="page countdown-1" style="position: fixed; right: 8%; top: 30px;"> 
    <div class="number">
        <span class="num3">3</span>
        <span class="num2">2</span>
        <span class="num1">1</span>
    </div>
</div>

<div id="app" class="countdown-2 d-none" style="position: fixed; right: 3%; top: 100px;"></div>
