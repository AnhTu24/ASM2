@extends('layouts.master')

@section('title')
    Thêm mới Sản phẩm
@endsection

@section('content')

    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="white_card card_height_100 mb_30">
                <div class="white_card_header">
                    <div class="box_header m-0">

                        @if (!empty($_SESSION['errors']))
                            <div class="alert alert-warning">
                                <ul>
                                    @foreach ($_SESSION['errors'] as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                            @php
                                unset($_SESSION['errors']);
                            @endphp
                        @endif

                        <form action="{{ url('admin/products/store') }}" enctype="multipart/form-data" method="POST">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3 mt-3">
                                        <label for="category_id" class="form-label">Category:</label>

                                        <select name="category_id" id="category_id" class="form-select">
                                            @foreach ($categoryPluck as $id => $name)
                                                <option value="{{ $id }}">{{ $name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="name" class="form-label">Name:</label>
                                        <input type="text" class="form-control" id="name" placeholder="Enter name"
                                            name="name">
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="img_thumbnail" class="form-label">Img Thumbnail:</label>
                                        <input type="file" class="form-control" id="img_thumbnail"
                                            placeholder="Enter img_thumbnail" name="img_thumbnail">
                                    </div>
                                </div>

                                
                                <div class="col-md-6">
                                    <div class="mb-3 mt-3">
                                        <label for="price_regular" class="form-label">Price Regular:</label>
                                        <input type="text" class="form-control" id="price_regular" placeholder="Enter regular price"
                                             name="price_regular">
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="price_sale" class="form-label">Price Sale:</label>
                                        <input type="text" class="form-control" id="price_sale" placeholder="Enter sale price"
                                            name="price_sale">
                                    </div>
                                    
                                </div>

                                <div class="col-md-6">
                                    <div class="mb-3 mt-3">
                                        <label for="overview" class="form-label">Overview:</label>
                                        <textarea class="form-control" id="overview" placeholder="Enter overview" name="overview"></textarea>
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="content" class="form-label">Content:</label>
                                        <textarea class="form-control" id="content" rows="4" placeholder="Enter content" name="content"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class='d-flex gap-2'>
                                <button type="submit" class="btn btn-primary mt-5">Submit</button>
                                <button type="button" class="btn btn-primary mt-5" onclick="history.back()">Back</button>
                            </div>


                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
