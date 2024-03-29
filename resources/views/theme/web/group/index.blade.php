@extends('theme.layout.main')

@section('page_title')
    {{$page_title}}
@endsection

@section('css')
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/app/page/css/contract.css')}}" />
@endsection

@section('page_header')
    <div class="slim-pageheader">
        <div>
            <button type="button" class="btn btn-cus-hm _2 mg-r-15" style="display: inline-block !important" onclick="window.history.back()">戻る</button>
            <button type="button" class="btn btn-cus-hm _2" style="display: inline-block !important" id="btnRegist">新 規 登 録</button>
        </div>
        <h6 class="slim-pagetitle">{{$page_title}}</h6>
    </div>
@endsection

@section('page_content')
    <div class="section-wrapper">
        @include('theme.web.group.section.section')
    </div>
@endsection

@section('js')
    <script>
        var test_id = {!! $test_id !!};
    </script>
    <script src="{{asset('assets/themes/app/page/js/group.js')}}"></script>
@endsection
