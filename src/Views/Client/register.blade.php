@extends('layouts.app')

@section('banner')
    <div class="banner text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 mx-auto">
                    <h1 class="mb-5">Đăng ký tài khoản </h1>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('content')
    <div class="container">
        @if (!empty($_SESSION['error']))
        <div class="alert alert-warning mt-3 mb-3">
            {{ $_SESSION['error'] }}
        </div>

        @php
            unset($_SESSION['error']);
        @endphp
    @endif
        <div class="row justify-content-center mt-5">
            <form class="col-lg-6" action="{{ url('register-handle') }}" method="POST">
                <div class="mb-3 mt-3">
                    <label for="name" class="form-label">Họ và tên:</label>
                    <input type="text" class="form-control" id="name" placeholder="Nhập họ và tên" name="name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Nhập email" name="email">
                </div>
                <div class="mb-3">
                    <label for="pwd" class="form-label">Mật khẩu:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Nhập mật khẩu" name="password">
                </div>
                <div class="mb-3">
                    <label for="confirm_pwd" class="form-label">Xác nhận mật khẩu:</label>
                    <input type="password" class="form-control" id="confirm_password" placeholder="Nhập lại mật khẩu" name="confirm_password">
                </div>
                <button type="submit" class="btn btn-primary">Đăng ký</button>
            </form>
        </div>
    </div>
@endsection
