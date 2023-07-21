<?php

define("IN_SITE", true);
require_once(__DIR__."/../libs/db.php");
require_once(__DIR__."/../libs/lang.php");
require_once(__DIR__."/../libs/helper.php");
require_once(__DIR__."/../libs/database/users.php");
$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();
 

if(empty($_GET['request_id'])){
    die('request_id empty');
}
if(empty($_GET['token'])){
    die('token empty');
}
if(empty($_GET['status'])){
    die('status empty');
}

$request_id  = isset($_GET['request_id']) ? check_string($_GET['request_id']) : NULL; // REQUEST ID XÁC MINH GIAO DỊCH
$token = isset($_GET['token']) ? check_string($_GET['token']) : NULL; // TOKEN XÁC MINH ĐỊA CHỈ CÓ PHẢI CỦA BẠN HAY KHÔNG
$received = isset($_GET['received']) ? check_string($_GET['received']) : NULL; // SỐ TIỀN NHẬN ĐƯỢC
$status = isset($_GET['status']) ? check_string($_GET['status']) : NULL; // TRẠNG THÁI HOÁ ĐƠN
$from_address = isset($_GET['from_address']) ? check_string($_GET['from_address']) : NULL; // ĐỊA CHỈ NGƯỜI GỬI
$transaction_id = isset($_GET['transaction_id']) ? check_string($_GET['transaction_id']) : NULL; // MÃ GIAO DỊCH TRÊN BLOCKTRAIN


if(!$row = $CMSNT->get_row(" SELECT * FROM `crypto_invoice` WHERE `request_id` = '$request_id' ")){
    die('Hoá đơn không tồn tại');
}
if($row['status'] != 'waiting'){
    die('Hoá đơn này đã được xử lý rồi');
}

if($status == 'expired'){
    $CMSNT->update('crypto_invoice', [
        'status'            => 'expired',
        'update_gettime'    => gettime()
    ], " `id` = '" . $row['id'] . "' ");
    die('cập nhật trạng thái expired');
}

if($status == 'completed'){
    $isUpdate = $CMSNT->update('crypto_invoice', [
        'status'            => 'completed',
        'update_gettime'    => gettime()
    ], " `id` = '" . $row['id'] . "' ");
    if($isUpdate){
        $User = new users();
        
        $thucnhan = $received * $CMSNT->site('rate_crypto');

        $User->AddCredits($row['user_id'], $thucnhan, "Crypto Recharge #".$row['trans_id']);
        die('cập nhật trạng thái completed');
    }
}