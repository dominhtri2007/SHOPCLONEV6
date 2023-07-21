<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__.'/../../models/is_admin.php');
if ($CMSNT->site('status_demo') != 0) {
    $data = json_encode([
        'status'    => 'error',
        'msg'       => 'Không được dùng chức năng này vì đây là trang web demo'
    ]);
    die($data);
}
if(!isset($_POST['action'])){
    $data = json_encode([
        'status'    => 'error',
        'msg'       => 'The Request Not Found'
    ]);
    die($data);   
}



//  XOÁ 
if($_POST['action'] == 'removeIPBlack'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `banned_ips` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'ID không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("banned_ips", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá IP Black khỏi hệ thống ('.$row['ip'].' ID '.$row['id'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa thành công'
        ]);
        die($data);
    }
}
 
//  XOÁ domains
if($_POST['action'] == 'removeDomain'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `domains` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'ID tên miền không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("domains", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá tên miền ('.$row['domain'].' ID '.$row['id'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa tên miền thành công'
        ]);
        die($data);
    }
}

//  XOÁ store_fanpage
if($_POST['action'] == 'removeStoreFanpage'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `store_fanpage` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'ID không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("store_fanpage", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá sản phẩm ('.$row['name'].' ID '.$row['id'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa thành công'
        ]);
        die($data);
    }
}

//  XOÁ ip_white
if($_POST['action'] == 'removeIPWhite'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `ip_white` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'ID không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("ip_white", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá IP Sạch khỏi hệ thống ('.$row['ip'].' ID '.$row['id'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa thành công'
        ]);
        die($data);
    }
}

//  XOÁ connect_api
if($_POST['action'] == 'removeConnectAPI'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `connect_api` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Item không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("connect_api", " `id` = '$id' ");
    if ($isRemove) {
        $CMSNT->remove('categories', " `id_connect_api` = '".$row['id']."' ");
        $CMSNT->remove('products', " `id_connect_api` = '".$row['id']."' ");
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá Website API khỏi hệ thống ('.$row['domain'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa item thành công'
        ]);
        die($data);
    }
}
//  XOÁ withdraw_ref
if($_POST['action'] == 'removeWithdrawRef'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `withdraw_ref` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Item không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("withdraw_ref", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá đơn rút tiền khỏi hệ thống (#'.$row['trans_id'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa item thành công'
        ]);
        die($data);
    }
}


if($_POST['action'] == 'removeCurrency'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `currencies` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Item không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("currencies", " `id` = '$id' ");
    if ($isRemove) {
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá tiền tệ khỏi hệ thống ('.$row['name'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa item thành công'
        ]);
        die($data);
    }
}

if($_POST['action'] == 'email_campaigns'){
    $id = check_string($_POST['id']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `email_campaigns` WHERE `id` = '$id' ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => 'Item không tồn tại trong hệ thống'
        ]));
    }
    $isRemove = $CMSNT->remove("email_campaigns", " `id` = '$id' ");
    if ($isRemove) {
        $CMSNT->remove('email_sending', " `camp_id` = '".$row['id']."' ");
        $Mobile_Detect = new Mobile_Detect();
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => 'Xoá chiến dịch email khỏi hệ thống ('.$row['name'].')'
        ]);
        $data = json_encode([
            'status'    => 'success',
            'msg'       => 'Xóa item thành công'
        ]);
        die($data);
    }
}


die(json_encode([
    'status'    => 'error',
    'msg'       => 'Dữ liệu không hợp lệ'
]));

