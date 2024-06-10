<?php

namespace Ductong\XuongOop\Controllers\Client;

use Ductong\XuongOop\Commons\Controller;
use Ductong\XuongOop\Commons\Helper;
use Ductong\XuongOop\Models\User;

class LoginController extends Controller
{
    private User $user;

    public function __construct()
    {
        $this->user = new User();
    }

    public function showFormLogin()
    {
        auth_check();

        $this->renderViewClient('login');
    }

    public function login()
    {
        auth_check();

        try {
            $user = $this->user->findByEmail($_POST['email']);

            if (empty($user)) {
                throw new \Exception('Không tồn tại email: ' . $_POST['email']);
            }

            $flag = password_verify($_POST['password'], $user['password']);
            if ($flag) {

                $_SESSION['user'] = $user;
                // Helper::debug($user);
                if ($user['active'] === 1) {

                    if ($user['role'] == 'admin') {
                        header('Location: ' . url('admin/'));
                        exit;
                    } else {
                        header('Location: ' . url());
                        exit;
                    }
                }elseif($user['active'] === 0){
                    unset($_SESSION['user']);
                    header('Location: ' . url('login'));
                    $_SESSION['error'] = 'Tài khoản của bạn đã bị khóa.';
                    exit;
                }
            }

            throw new \Exception('Password không đúng');
        } catch (\Throwable $th) {
            $_SESSION['error'] = $th->getMessage();

            header('Location: ' . url('login'));
            exit;
        }
    }

    public function logout()
    {
        unset($_SESSION['user']);

        header('Location: ' . url());
        exit;
    }
}
