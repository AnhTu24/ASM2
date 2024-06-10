@extends('layouts.master')

@section('title')
    Danh sách User
@endsection

@section('content')
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="white_card card_height_100 mb_30">
                <div class="white_card_header">
                    <div class="box_header m-0">
                        <div class="main-title">
                            <h1>Chi tiết người dùng: {{ $user['name'] }}</h1>

                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Trường</th>
                                        <th>Giá trị</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($user as $field => $value)
                                        <tr>
                                            <td>{{ $field }}</td>
                                            <td>
                                                @if (preg_match('/\.(jpg|jpeg|png|gif|bmp)$/i', $value))
                                                    <img src="{{ asset($user['avatar']) }}" width="100px" alt="">
                                                @else
                                                    {!! $value !!}
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary" onclick="history.back()">Back</button>
                </div>
            </div>
        </div>
    </div>
@endsection
