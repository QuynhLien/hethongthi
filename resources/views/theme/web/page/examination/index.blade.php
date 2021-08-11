@extends('theme.layout.main')

@section('page_title')
    {{$page_title}}
@endsection

@section('css')
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/app/page/admin/css/contract.css')}}" />
@endsection

@section('page_header')
    <div class="slim-pageheader flex-column-reverse flex-lg-row-reverse align-items-start align-items-lg-center">
        <div></div>
        <h6 class="slim-pagetitle mg-t-15">{{$page_title}}</h6>
    </div>
@endsection

@section('page_content')
    <div class="section-wrapper">
        @include('theme.web.page.examination.section.section')
    </div>
@endsection

@section('js')
    <script>
        var time = {!! $time !!};
    </script>
    <script src="{{asset('assets/themes/app/page/admin/js/examination.js')}}"></script>
@endsection
