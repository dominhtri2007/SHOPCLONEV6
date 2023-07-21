<?php
define("IN_SITE", true);

// Nạp các tập tin cần thiết
require_once(__DIR__.'/libs/db.php');
require_once(__DIR__.'/config.php');
require_once(__DIR__.'/libs/helper.php');

// Kiểm tra phiên bản mới nhất
$latest_version = 1.0; // Thay thế 1.0 bằng phiên bản mới nhất mong muốn

$current_version = 0; // Cần thay đổi số phiên bản hiện tại tùy vào hệ thống của bạn

if ($current_version < $latest_version) {
    // Lấy danh sách các addon
    $list_addon = $CMSNT->get_list("SELECT * FROM `addons`");

    // Duyệt qua danh sách các addon và cập nhật purchase_key
    foreach ($list_addon as $addon) {
        $id = $addon['id'];
        $domain = str_replace('www.', '', $_SERVER['HTTP_HOST']);
        $purchase_key = md5($domain.'|'.$id);

        // Cập nhật purchase_key cho addon
        $status = $CMSNT->update("addons", [
            'purchase_key' => $purchase_key
        ], " `id` = '$id' ");

        echo '<p>Active Success Addon: ' . $addon['name']. "</p>";
    }

    die('<h1>CRACK THÀNH CÔNG</h1>');
} else {
    die("Không có phiên bản mới nhất");
}
?>
