<?php

if (!defined('IN_SITE')) {
    die('The Request Not Found');
}


$AVVQ = __DIR__ . '/is_license.php';
$V2F2F2 = sha1_file($AVVQ);
if ($V2F2F2 != '4daf1b9ee1c4f1db8f576f9572d159d9b2664a88') { 
    exit(base64_decode(base64_decode(base64_decode('VmpKV2FXTXliREJhVTBKMWR6WkNOVWxIVG05NGNrSm9TVWQyUkhKWFRtOUpSMmgyTkdKeGFHUkRRbWswWW5GcVltbENlR1JZYm1oMU5FWjFTVWhVYUhWeFJuQkpSVTVPVlRBMVZVeHJUbEJKUTBVOQ=='))));
}
$v22 = __DIR__ . '/../config.php';
$baffaf2 = sha1_file($v22);
if ($baffaf2 != 'fc87c0b761f44a0c5a318eaf9e31e3f86c54365f') { 
    exit(base64_decode(base64_decode(base64_decode('VmpKV2FXTXliREJhVTBKMWR6WkNOVWxIVG05NGNrSm9TVWQyUkhKWFRtOUpSMmgyTkdKeGFHUkRRbWswWW5GcVltbENlR1JZYm1oMU5FWjFTVWhVYUhWeFJuQkpSVTVPVlRBMVZVeHJUbEJKUTBVOQ=='))));
}



$CMSNT = new DB();


if (isset($_COOKIE["token"])) {
    $getUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `token` = '".check_string($_COOKIE['token'])."' AND `admin` = 1 ");
    if (!$getUser) {
        header("location: ".BASE_URL('client/logout'));
        exit();
    }
    $_SESSION['admin_login'] = $getUser['token'];
}
if (!isset($_SESSION['admin_login'])) {
    redirect(base_url('admin/login'));
} else {
    $getUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `admin` = 1 AND `token` = '".$_SESSION['admin_login']."'  ");
    // chuyển hướng đăng nhập khi thông tin login không tồn tại
    if (!$getUser) {
        redirect(base_url('admin/login'));
    }
    // chuyển hướng khi bị khoá tài khoản
    if ($getUser['banned'] != 0) {
        redirect(base_url('common/banned'));
    }
    // khoá tài khoản trường hợp âm tiền, tránh bug
    if ($getUser['money'] < 0) {
        $User = new users();
        $User->Banned($getUser['id'], 'Tài khoản âm tiền, ghi vấn bug');
        redirect(base_url('common/banned'));
    }
    // kiểm tra ip có trong whitelist
    if($CMSNT->site('status_security') == 1){
        if(!$CMSNT->get_row("SELECT * FROM `ip_white` WHERE `ip` = '".myip()."' ")){
            redirect(base_url('common/block'));
        }
    }
    /* cập nhật thời gian online */
    $CMSNT->update("users", [
        'time_session'  => time()
    ], " `id` = '".$getUser['id']."' ");
}
