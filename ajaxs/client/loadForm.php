<?php

define("IN_SITE", true);
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__."/../../libs/apiAutoFB.php");
$CMSNT = new DB();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    
    if($_POST['type'] == 'loadService'){
        $option = '<option value="">-- '.__('Chọn máy chủ').' --</option>';
        foreach($CMSNT->get_list(" SELECT * FROM `services` WHERE `category_id` = '".check_string($_POST['category'])."'  AND `price` > 0 AND `status` = 1 ") as $row){
            $option .= '<option value="'.$row['id'].'">'.__($row['name']).' | '.__('giá').' '.format_currency($row['price']).'</option>';
        }
        die($option);
    }



}
 
