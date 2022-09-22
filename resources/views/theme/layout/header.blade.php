<div class="slim-header with-sidebar">
    <div class="container-hm-header">
        <div class="slim-header-left">
            <h2 class="title-logo-header">
                <div class="page countdown-1 d-none"><div class="number"><span class="num"></span><span class="num3">3</span><span class="num2">2</span><span class="num1">1</span></div></div>
                <div id="app" class="countdown-2 d-none"></div>
            </h2>
        </div><!-- slim-header-left -->
    </div><!-- container-fluid -->

    <div class="header-home-right">
            <ul class="nav nav-gray-600 flex-column flex-md-row" role="tablist">
                <li class="nav-item" style="margin: auto;">
                    <div class="dropdown dropdown-c nav-hm-header _1 top-hm-header d-block" id="nav-header">
                        <a href="#" class="logged-user" data-toggle="dropdown">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 34.99996 34.99996"><defs><style>.ab07f2a5-5ce1-4b46-b372-3b3cf18be8c77{fill:#fff;}.ac377299-3d3d-4f27-9a6f-8ba969c133c00{fill:url(#f5580b21-647d-4f50-b4c4-6adedfdbb080);}</style><linearGradient id="f5580b21-647d-4f50-b4c4-6adedfdbb080" x1="8.60317" y1="6.93162" x2="22.92617" y2="26.67413" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="rgb(61,107,101)"></stop><stop offset="1" stop-color="rgb(61,107,101)"></stop></linearGradient></defs><g id="fc5444f4-a927-45bd-86cd-678de741a8bd" data-name="Layer 2"><g id="bd989ac2-80af-4bb4-91c3-ca7bb44897aa" data-name="ID-34"><g id="b485b0d6-d466-49da-9969-b31eb0ab8d32" data-name="menu のコピー 2"><g id="e4aa253d-5d82-4833-9f6a-40f1e2981cf9" data-name="グループ 1"><circle class="ab07f2a5-5ce1-4b46-b372-3b3cf18be8c77" cx="17.49998" cy="17.49998" r="17.49998"></circle><path class="ac377299-3d3d-4f27-9a6f-8ba969c133c00" d="M20.49442,16.65888a5.29688,5.29688,0,1,0-5.98889,0A9.17978,9.17978,0,0,0,9.957,24.43652a.8501.8501,0,1,0,1.70019,0c0-3.16455,2.55225-6.84277,5.84278-6.84277s5.84277,3.67822,5.84277,6.84277a.8501.8501,0,0,0,1.7002,0A9.17977,9.17977,0,0,0,20.49442,16.65888Zm-6.59112-4.362A3.59668,3.59668,0,1,1,17.5,15.89356,3.60052,3.60052,0,0,1,13.9033,12.29688Z"></path></g></g></g></g></svg>
                            <div class="media-body mg-r-20 mg-l-10" data-id="1">
                                <!-- <h6 class="tx-12">Học viên</h6> -->
                                <p class="mg-b-0 tx-16">{{$user['name']}}</p>
                            </div>
                            <img src="{{asset('assets/images/down-arrow.svg')}}">
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <nav class="nav">
                                <a href="{{route('web.logout')}}" class="nav-link tx-16 beforeunload logout" id="logout" style="position: relative; padding: 1rem;">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22.51172 29.01465">
                                    <defs><style>#b0189752-4eeb-4929-b1f5-834c552bace7{fill:#3d6b65;}</style></defs>
                                    <g id="b0189752-4eeb-4929-b1f5-834c552bace7" data-name="Layer 2"><g id="ba70bd8c-748b-43e8-9d77-5397fbed70b4" data-name="ID-34"><path d="M18.541,9.52246V7.28613a7.28565,7.28565,0,1,0-14.57129,0V9.52246H0v8.23633a11.25586,11.25586,0,0,0,22.51172,0V9.52246ZM5.46973,7.28613a5.78565,5.78565,0,1,1,11.57129,0V9.52246H5.46973Zm15.542,10.47266a9.75586,9.75586,0,0,1-19.51172,0V11.02246H21.01172Z"/><path d="M11.25537,15.34033a2.12571,2.12571,0,0,0-.76037,4.11206v2.65534h1.52075V19.45239a2.12571,2.12571,0,0,0-.76038-4.11206Z"/></g></g></svg>
                                    <span class="span-user">ログアウト</span>
                                </a>
                            </nav>
                        </div><!-- dropdown-menu -->
                    </div><!-- dropdown -->
                </li>
            </ul>

        </div><!-- header-right -->
</div><!-- slim-header -->
