<!-- resources/views/includes/header.blade.php -->
<!DOCTYPE html>
<html lang="en-us">

<head>
    <meta charset="utf-8">
    <title>@yield('title', 'Reader | Hugo Personal Blog Template')</title>
    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="This is meta description">
    <meta name="author" content="Themefisher">
    <meta name="generator" content="Hugo 0.74.3" />
    <!-- plugins -->
    <link rel="stylesheet" href="{{ asset('assets/client/plugins/bootstrap/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/client/plugins/themify-icons/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/client/plugins/slick/slick.css') }}">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="{{ asset('assets/client/css/style.css') }}" media="screen">

    <!--Favicon-->
    <link rel="shortcut icon" href="{{ asset('assets/client/images/favicon.png') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('assets/client/images/favicon.png') }}" type="image/x-icon">
    <meta property="og:title" content="Reader | Hugo Personal Blog Template" />
    <meta property="og:description" content="This is meta description" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="" />
    <meta property="og:updated_time" content="2020-03-15T15:40:24+06:00" />
    <style>

    </style>
</head>

<body>
    <!-- navigation -->
    <header class="navigation fixed-top" style="background-color: #f8f9fa;">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-white">
                <a class="navbar-brand order-1" href="{{ url('/') }}">
                    <img class="img-fluid" width="100px" src="{{ asset('assets/client/images/logo2.png') }}"
                        alt="Reader | Hugo Personal Blog Template">
                </a>
                <div class="collapse navbar-collapse text-center order-lg-2 order-3 mx3" id="navigation">
                    <ul class="navbar-nav">
                        <li class="list-inline-item"><a class="h4" href="{{ url('products') }}">Shop</a></li>

                    </ul>
                </div>
                <div class="order-2 order-lg-3 d-flex align-items-center">
                    <!-- search -->
                    <form action="{{ url('search') }}" class="search-bar me-3">
                        <input id="search-query" name="s" type="search" placeholder="Nhập tên sản phẩm...">
                    </form>

                </div>
                <div class="order-2 order-lg-3 d-flex align-items-center">
                    <div class="header_right d-flex justify-content-between align-items-center">

                        <?php
                        $avatar_path = isset($_SESSION['user']['avatar']) ? $_SESSION['user']['avatar'] : '';
                        ?>
                        <nav>
                            @if (!isset($_SESSION['user']))
                                <a class="btn btn-primary" href="{{ url('login') }}">Login</a>
                            @endif

                            @if (isset($_SESSION['user']))
                                <img src="{{ $avatar_path }}" width="50px" height="50px"
                                    style="border-radius: 50%; object-fit: cover;" alt="">
                                <a class="btn btn-primary" href="{{ url('logout') }}">Logout</a>
                            @endif
                        </nav>



                    </div>
                </div>
            </nav>
        </div>
    </header>
</body>
