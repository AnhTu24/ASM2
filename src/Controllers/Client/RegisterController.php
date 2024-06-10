<?php

namespace Ductong\XuongOop\Controllers\Client;

use Ductong\XuongOop\Commons\Controller;
use Ductong\XuongOop\Commons\Helper;
use Ductong\XuongOop\Models\User;
use Rakit\Validation\Validator;

class RegisterController extends Controller
{
    private User $user;

    public function __construct()
    {
        $this->user = new User();
    }

    public function showFromRegister()
    {
        $this->renderViewClient('register');
    }

    public function register()
    {
        $validator = new Validator();

        $validation = $validator->make($_POST + $_FILES, [
            'name' => 'required|max:50',
            'email' => 'required|email',
            'password' => 'required|min:5',
            'confirm_password' => 'required|same:password',

        ]);
        $validation->validate();


        if ($validation->fails()) {
            $_SESSION['errors'] = $validation->errors()->firstOfAll();

            header('Location: ' . url('register'));
            exit;
        } else {
            $data = [
                'name' => $_POST['name'],
                'email' => $_POST['email'],
                'password' => password_hash($_POST['password'], PASSWORD_DEFAULT),
            ];

            $this->user->insert($data);
            header('Location: ' . url('register'));
            $_SESSION['error'] = 'Đăng ký thành công';
            exit;
        }
    }


}