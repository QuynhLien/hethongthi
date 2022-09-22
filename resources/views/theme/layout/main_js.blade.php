<script type="text/javascript" src="{{asset('assets/themes/app/lib/jquery/js/jquery.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/jquery-ui/js/jquery-ui.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/popper.js/js/popper.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/bootstrap/js/bootstrap.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/jquery.cookie/js/jquery.cookie.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/echarts/js/echarts-en.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/echarts/theme/infographic.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/datatables/js/jquery.dataTables.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/datatables-responsive/js/dataTables.responsive.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/datatables/js/dataTables.checkboxes.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/datatables-responsive/js/responsive.bootstrap4.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/datatables-reorder/js/dataTables.rowReorder.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/select2/js/select2.full.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/parsleyjs/js/parsley.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/summernote/dist/summernote-bs4.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/jt.timepicker/js/jquery.timepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/moment/min/moment.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/lightbox2/js/lightbox.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/fileuploader/js/jquery.modal.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/lobibox/js/lobibox.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/waitme/js/waitMe.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/iCheck/icheck.min.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/simple-timer/simple-timer.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/lib/sweet2/sweet2.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/js/slim.js')}}"></script>
<script type="text/javascript" src="{{asset('assets/themes/app/page/js/utils.js')}}"></script>
@yield('js')
<script>
    var base_url = '{{ url('/') }}';
    var base_admin = '{{ route('web') }}';
    var base_ajax = '{{ route('ajax') }}';
    var base_api = '{{ route('api')}}';
    var _token = '@if(isset($_token_mainte)){{$_token_mainte}} @else  @endif';
    var operator_login_id = $('#nav-header .media-body').data('id');
</script>