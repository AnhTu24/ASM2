<div class="container-fluid g-0">
    <div class="row">
        <div class="col-lg-12 p-0">
            <div class="header_iner d-flex justify-content-between align-items-center">
                <div class="sidebar_icon d-lg-none">
                    <i class="ti-menu"></i>
                </div>
                <div class="serach_field-area d-flex align-items-center">
                    <div class="search_inner">
                        <form action="#">
                            <div class="search_field">
                                <input type="text" placeholder="Search here...">
                            </div>
                            <button type="submit"> <img src="{{ asset('assets/admin/img/icon/icon_search.svg') }}" alt>
                            </button>
                        </form>
                    </div>
                    <span class="f_s_14 f_w_400 ml_25 white_text text_white">Apps</span>
                </div>
                <div class="header_right d-flex justify-content-between align-items-center">
                    <div class="header_notification_warp d-flex align-items-center">

                        <nav>
                            @if (!isset($_SESSION['user']))
                                <a class="btn btn-primary" href="{{ url('login') }}">Login</a>
                            @endif

                            @if (isset($_SESSION['user']))
                                <div class="d-flex align-items-center">
                                    <p class="m-0">Xin chào <span
                                            class="text-danger">{{ $_SESSION['user']['name'] }}</span></p>
                                    <a class="btn btn-primary ms-2" href="{{ url('logout') }}">Logout</a>
                                </div>
                            @endif
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
