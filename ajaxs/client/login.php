<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/database/users.php");
$CMSNT = new DB();


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($CMSNT->site('status') != 1 && !isset($_SESSION['admin_login'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Hệ thống đang bảo trì')]));
    }
    if (empty($_POST['username'])) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Username không được để trống')
        ]));
    }
    if (empty($_POST['password'])) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Mật khẩu không được để trống')
        ]));
    }
    // if ($CMSNT->site('status_captcha') == 1) {
    //     $phrase = check_string($_POST['phrase']);
    //     if (strcasecmp($phrase, $_SESSION['phrase']) != 0) {
    //         die(json_encode(['status' => 'error', 'msg' => __('Captcha không chính xác')]));
    //     }
    // }
    if($CMSNT->site('reCAPTCHA_status') == 1){
        if (empty($_POST['recaptcha'])) {
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng xác minh Captcha')]));
        }
        $recaptcha = check_string($_POST['recaptcha']);
        $url = "https://www.google.com/recaptcha/api/siteverify?secret=".$CMSNT->site('reCAPTCHA_secret_key')."&response=$recaptcha";
        $verify = file_get_contents($url);
        $captcha_success=json_decode($verify);
        if ($captcha_success->success==false) {
            die(json_encode(['status' => 'error', 'msg' => __('Vui lòng xác minh Captcha')]));
        }
    }
    $username = check_string($_POST['username']);
    $password = check_string($_POST['password']);
    $getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `username` = '$username' ");
    if (!$getUser) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Thông tin đăng nhập không chính xác')
        ]));
    }
    if($getUser['banned'] == 1){
        die(json_encode(['status' => 'error', 'msg' => __('Tài khoản của bạn đã bị cấm truy cập')]));
    }
    if ($CMSNT->site('type_password') == 'bcrypt') {
        if (!password_verify($password, $getUser['password'])) {
            if($getUser['login_attempts'] >= $config['limit_block_ip_login_client']){
                $CMSNT->insert('banned_ips', [
                    'ip'                => myip(),
                    'attempts'          => $getUser['login_attempts'],
                    'create_gettime'    => gettime(),
                    'banned'            => 1,
                    'reason'            => __('Đăng nhập thất bại nhiều lần')
                ]);
            }
            if($getUser['login_attempts'] >= $config['limit_block_login_client']){
                $User = new users();
                $User->Banned($getUser['id'], __('Đăng nhập thất bại nhiều lần'));
                die(json_encode(['status' => 'error', 'msg' => __('Tài khoản của bạn đã bị tạm khoá do đang nhập sai nhiều lần')]));
            }
            $CMSNT->cong('users', 'login_attempts', 1, " `id` = '".$getUser['id']."' ");
            die(json_encode(['status' => 'error', 'msg' => __('Thông tin đăng nhập không chính xác')]));
        }
    } else {
        if ($getUser['password'] != TypePassword($password)) {
            if($getUser['login_attempts'] >= $config['limit_block_ip_login_client']){
                $CMSNT->insert('banned_ips', [
                    'ip'                => myip(),
                    'attempts'          => $getUser['login_attempts'],
                    'create_gettime'    => gettime(),
                    'banned'            => 1,
                    'reason'            => __('Đăng nhập thất bại nhiều lần')
                ]);
            }
            if($getUser['login_attempts'] >= $config['limit_block_login_client']){
                $User = new users();
                $User->Banned($getUser['id'], __('Đăng nhập thất bại nhiều lần'));
                die(json_encode(['status' => 'error', 'msg' => __('Tài khoản của bạn đã bị tạm khoá do đang nhập sai nhiều lần')]));
            }
            $CMSNT->cong('users', 'login_attempts', 1, " `id` = '".$getUser['id']."' ");
            die(json_encode(['status' => 'error', 'msg' => __('Thông tin đăng nhập không chính xác')]));
        }
    }
    if (time() > $getUser['time_request']) {
        if (time() - $getUser['time_request'] < $config['max_time_load']) {
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đang thao tác quá nhanh, vui lòng chờ')]));
        }
    }
    if ($getUser['banned'] == 1) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Tài khoản của bạn đã bị khoá truy cập')
        ]));
    }
    if ($getUser['status_2fa'] == 1) {
        die(json_encode([
            'status'    => 'verify',
            'url'       => base_url('client/verify/'.base64_encode($getUser['token'])),
            'msg'       => __('Vui lòng xác minh 2FA để hoàn thành đăng nhập')
        ]));
    }
    $Mobile_Detect = new Mobile_Detect();
    $CMSNT->insert("logs", [
        'user_id'       => $getUser['id'],
        'ip'            => myip(),
        'device'        => $Mobile_Detect->getUserAgent(),
        'createdate'    => gettime(),
        'action'        => __('Đăng nhập thành công vào hệ thống')
    ]);
    $new_token = md5(random('0123456789qwertyuiopasdgjklzxcvbnm', 6).time());
    $CMSNT->update("users", [
        'login_attempts'    => 0,
        'ip'            => myip(),
        'time_request'  => time(),
        'token'         => $new_token,
        'time_session' => time(),
        'device'    => $Mobile_Detect->getUserAgent()
    ], " `id` = '".$getUser['id']."' ");


    setcookie("token", $new_token, time() + $CMSNT->site('session_login'), "/");
    $_SESSION['login'] = $new_token;
    die(json_encode([
        'status' => 'success',
        'msg'    => __('Đăng nhập thành công')
    ]));
}
