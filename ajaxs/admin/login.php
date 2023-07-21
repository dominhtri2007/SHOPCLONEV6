<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__."/../../libs/sendEmail.php");
require_once(__DIR__."/../../libs/database/users.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $CMSNT = new DB();
    $email = check_string($_POST['email']);
    $password = check_string($_POST['password']);
    if (empty($email = check_string($_POST['email']))) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Email không được để trống'
        ]));
    }
    if (empty($_POST['password'])) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Mật khẩu không được để trống'
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
    if(getLocation(myip())['country'] != 'VN'){
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Vui lòng dùng địa chỉ IP thật để truy cập quản trị')
        ]));
    }
    $getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `email` = '$email' AND `admin` = 1 ");
    if (!$getUser) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Thông tin đăng nhập không chính xác')
        ]));
    }
    if (time() > $getUser['time_request']) {
        if (time() - $getUser['time_request'] < $config['max_time_load']) {
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đang thao tác quá nhanh, vui lòng chờ')]));
        }
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
    $Mobile_Detect = new Mobile_Detect();
    $chu_de = 'Cảnh báo phát hiện đăng nhập tài khoản quản trị '.$CMSNT->site('title');
    $noi_dung = '
Hệ thống phát hiện người dùng IP <b style="color:red;">'.myip().'</b> đang thực hiện đăng nhập tài khoản quản trị (<b>'.$getUser['username'].'</b>).<br>
Nếu không phải bạn vui lòng thay đổi thông tin tài khoản ngay hoặc liên hệ <a target="_blank" href="https://www.cmsnt.co/">CMSNT.CO</a> để hỗ trợ kiểm tra an toàn cho quý khách.<br>
<br>
<ul>
    <li>Thời gian: '.gettime().'</li>
    <li>IP: '.myip().'</li>
    <li>Thiết bị: '.$Mobile_Detect->getUserAgent().'</li>
</ul>';
    $bcc = $CMSNT->site('title');
    sendCSM($CMSNT->site('email'), $getUser['username'], $chu_de, $noi_dung, $bcc);
    if ($getUser['status_2fa'] == 1) {
        die(json_encode([
            'status'    => 'verify',
            'url'       => base_url('admin/verify/'.base64_encode($getUser['token'])),
            'msg'       => __('Vui lòng xác minh 2FA để hoàn thành đăng nhập')
        ]));
    }
    $CMSNT->insert("logs", [
        'user_id'       => $getUser['id'],
        'ip'            => myip(),
        'device'        => $Mobile_Detect->getUserAgent(),
        'createdate'    => gettime(),
        'action'        => '[Warning] '.__('Đăng nhập thành công vào hệ thống Admin')
    ]);
    $new_token = md5(random('QWERTYUIOPASDGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm0123456789', 6).time());
    $CMSNT->update("users", [
        'login_attempts'    => 0,
        'ip'        => myip(),
        'time_request' => time(),
        'time_session' => time(),
        'device'    => $Mobile_Detect->getUserAgent(),
        'token'     => $new_token
    ], " `id` = '".$getUser['id']."' ");
    setcookie("token", $new_token, time() + $CMSNT->site('session_login'), "/");
    $_SESSION['admin_login'] = $new_token;
    die(json_encode(['status' => 'success','msg' => 'Đăng nhập thành công!']));
}
