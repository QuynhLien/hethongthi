@extends('theme.layout.main')

@section('page_title')
    {{$page_title}}
@endsection

@section('css')
    <link rel="stylesheet" type="text/css" href="{{asset('assets/themes/app/page/css/random.css')}}" />
@endsection

@section('page_content')
    <div class="section-wrapper">
        @include('theme.web.dashboard.random.section.section')
    </div>
@endsection

@section('js')
    <script>
        var count_test = parseInt('{{$count_test}}');
    </script>
    <script src="{{asset('assets/themes/app/page/js/random.js')}}"></script>
@endsection
