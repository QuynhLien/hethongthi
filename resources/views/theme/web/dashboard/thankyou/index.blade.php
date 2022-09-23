@extends('theme.layout.main')

@section('page_title')
    {{$page_title}}
@endsection

@section('page_content')
    <div style="
        transform: translate(-50%, -15%);
        position: absolute;
        top: 50%;
        left: 50%;"
    >
        <img src="{{asset('assets/images/goodjob.gif')}}" height="250px">
    </div>
@endsection
