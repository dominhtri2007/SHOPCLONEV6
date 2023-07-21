<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => __('Nạp Momo').' | '.$CMSNT->site('title'),
    'desc'   => $CMSNT->site('description'),
    'keyword' => $CMSNT->site('keywords')
];
$body['header'] = '

';
$body['footer'] = '

';

require_once(__DIR__.'/../../../models/is_user.php');
if ($CMSNT->site('status_napthe') != 1) {
    redirect(base_url(''));
}
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?>

<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between pb-0">
                        <div class="element-box text-center">
                        <img src="https://i.imgur.com/8ScNgvU.png" height="100px;">
                        <br><br>
                        <table class="table table-hover">
                            <tbody>
                                <tr>
                                    <td style="text-align: right;">Số Điện Thoại: </td>
                                    <td style="text-align: left; color: #00cc99;">
                                        <b>0788517517</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;">Chủ Tài Khoản:
                                    </td>
                                    <td style="text-align: left;">
                                        <b>Ho Anh Kiet</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;">Nội Dung Chuyển Tiền:
                                    </td>
                                    <td style="text-align: left;">
                                        <b id="coppy" style="color:red;">Muathe Autocard34 <?=$user['uername'];?><a onclick="coppy('#coppy')"></b><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-files" viewBox="0 0 16 16">
  <path d="M13 0H6a2 2 0 0 0-2 2 2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h7a2 2 0 0 0 2-2 2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm0 13V4a2 2 0 0 0-2-2H5a1 1 0 0 1 1-1h7a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1zM3 4a1 1 0 0 1 1-1h7a1 1 0 0 1 1 1v10a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4z"/>
</svg></a>
                                    </td>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2"><b>Vui lòng Nhập Đúng Nội Dung, Nhập Sai Nội Dùng Trừ 20% Tiền Và Ib Admin Để Cộng Tay. Hệ Thống Momo Chưa Auto Nên Ưu Tiên Ae Qua Card. ae lưu ý
 Min nạp 1k sài nhiêu nạp nhiêu không nạp dư  ! Sau 10p không cộng liên hệ zalo or fb admin !</b></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                                     </form>
                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </script>
            
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title"><?=__('Lịch sử nạp momo');?></h4>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table data-table table-striped mb-0">
                                <thead class="table-color-heading">
                                    <tr>
                                        <th width="5%">#</th>
                                        <th><?=__('MÃ GIAO DỊCH');?></th>
                                        <th><?=__('TIỀN');?></th>
                                        <th><?=__('NGƯỜI CHUYỂN');?></th>
                                        <th><?=__('SỐ ĐIỆN THOẠI');?></th>
                                        <th><?=__('NỘI DUNG');?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i=0; foreach ($CMSNT->get_list("SELECT * FROM `cards` WHERE `user_id` = '".$getUser['i']."' ORDER BY `id` DESC ") as $row) {?>
                                    
                                    </tr>
                                    <?php }?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
function coppy(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  cuteToast({
type: "success",
message: "Sao Chép Nội Dung Thành Công",
timer: 3000
});
  $temp.remove();
 
}
</script>

<?php require_once(__DIR__.'/footer.php');?>
