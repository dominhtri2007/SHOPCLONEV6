<?php
include("config.php");
if(isset($_POST["tangtraffic"])){
$link=$_POST["link"];
$sl=$_POST["sl"];
$dgchay=mysqli_fetch_assoc($ketnoi->query("SELECT COUNT(*) FROM `traffic` ")) ['COUNT(*)'];
$timkiem=$ketnoi->query("SELECT * FROM `traffic` WHERE `link` = ".$link);

if($link == "" || $sl == ""){
echo '<script type="text/javascript">alert("Vui Lòng Nhập Đầy Đủ Thông Tin");</script>';
echo '<script type="text/javascript">setTimeout(function(){ location.href = "" },1000);</script>';
}
elseif($sl > 100000){
echo '<script type="text/javascript">alert("Số Lượng Không Được Nhiều Hơn 100000");</script>';
echo '<script type="text/javascript">setTimeout(function(){ location.href = "" },1000);</script>';
}
elseif($dgchay > 10){
echo '<script type="text/javascript">alert("Hệ Thống Đang Quá 10 Đơn Chạy Vui Lòng Quay Lại Sau");</script>';
echo '<script type="text/javascript">setTimeout(function(){ location.href = "" },1000);</script>';
}
elseif($timkiem){
echo '<script type="text/javascript">alert("Bài Viết Của Bạn Đang Chạy Rồi");</script>';
echo '<script type="text/javascript">setTimeout(function(){ location.href = "" },1000);</script>';
}else{
$create = $ketnoi->query("INSERT INTO `traffic` SET 
  `link` = '".$link."',
  `sl` = '".$sl."',
  `datang` = 0");}
  
echo '<script type="text/javascript">alert("Oke Chạy Rồi Đó");</script>';
echo '<script type="text/javascript">setTimeout(function(){ location.href = "" },1000);</script>';


}
?>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content='width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0' name='viewport'/>
<meta content='width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5' name='viewport'/>
        <title>Tăng Traffic Cho Website</title>
        <link rel="canonical" href="https://dominhtri.co/" />
    <meta name="description" content="Hệ thống buff traffic tự động" />
    <meta name="keywords" content="traffic website,mmo">
    <meta name="copyright" content="DoMinhTri.CO - All Rights Reserved" />
    <meta name="author" content="Đỗ Minh Trí" />
    <!-- Open Graph data -->
    <meta property="og:title" content="Hệ thống buff traffic tự động">
    <meta property="og:type" content="Website">
    <meta property="og:url" content="https://dominhtri.co/">
    <meta property="og:image:alt" content="Hệ thống buff traffic tự động">
    <meta property="og:image" content="https://i.imgur.com/hBcYSrU.png">
    <meta property="og:description" content="Hệ thống buff traffic tự động">
    <meta property="og:site_name" content="Hệ thống buff traffic tự động">
    <meta property="article:section" content="Hệ thống buff traffic tự động">
    <meta property="article:tag" content="traffic website,mmo">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
      <!-- Favicon -->
    <link rel="shortcut icon" href="https://i.imgur.com/hBcYSrU.png" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    </head>
    <body>
        <style>
            .login{
  height: 40px;
  width:170px;
  border-radius: 5px;
  margin-top: 10px;
}


html, body{
  margin: 0;
color:
}

.headers.fix {
  left: 0;
  max-width: 100%;
  overflow: visible;
  position: fixed !important;
  top: 0
  width: 100%;
  z-index: 1000;
  
}
.copyright{
  background-color: silver;
  width: 100%;
  height: auto;

 
}
.background-icon-index{
  
  background-color: deepskyblue;
  
  width: 27px;
  height: 27px;
  border-radius: 25px;
  
}
.can-icon-index{
  padding: 3px;
  font-size: 20px;
}

.can2-icon-index{
  padding: 4px;
  font-size: 20px;
}

.can3-icon-index{
  padding: 2px;
  font-size: 20px;
}


.font-index{
  text-align: center;
}

.can{
  	display :flex;
flex-wrap :nowrap;}

.icon-anh{
  width: 50px;
  height: 50px;
  border-radius: 80px;
  
}
.anh-index{
  width: 100%;
  height: auto;
  margin-top: 20px;
  
}
aimg{
            filter: drop-shadow(7px 7px 10px red);
            
        }
.headers{
  width: 100%;
  height: auto;
  padding: 5px;
  background-color: whitesmoke;
 
}
.btt {
    display: inline-block;
    text-decoration: none;
    background-color: transparent;
    border: none;
    outline: none;
    padding: 10px 30px;
    border-radius: 20px;
    cursor: pointer;
    min-width: 20px;
    transition: opacity 0.2s ease;
  
    }
.btt + .btt{
    margin-left: 10px;
  margin-top: 10px;
}

.btt:hover{
    opacity: 0.5;
}
.btt--thanhcong{
    background-color: chartreuse;
    }
.btt--danhap{
    opacity: 0.5 !important;
    cursor: default;
}
.btt--size--nho{
    padding: 10px 40px;
}
.tblgdk{
  line-height: 1px;
  display: flex;
  align-items: center;
  background-color: #fff;
  border-radius: 1px;
  padding: 8px 0;
  min-width: 400px;
  max-width: 450px;
  border-left: 8px solid;
  margin-left: auto;
  box-shadow: 0 5px 8px rgba(0, 0, 0, 0.08);
  transition: all linear 0.3s;
}
@keyframes slideInLeft {
  from {
    opacity: 0;
    transform: translateX(calc(100% + 32px));
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes fadeOut {
  to {
    opacity: 0;
  }
}
.tblgdk + .tblgdk{
    margin-top: 10px;
}
.tblgdk_thanhcong{
    border-color: #47d864;
    
}
    
.tblgdk_thanhcong, .tbicon{
    color: #47d864;
}
.tbicon{
    
    
    font-size: 24px;
}
.tbicon, .tbicon__close{
    padding: 0 10px;
}
 
.tblgdk__body{
    flex-grow: 1;
    color: #333;
}
.tbicon__tc{
    
    font-size: 16px;
  font-weight: 600;
    padding: 2px;
  
}
.msg{
    margin-top: 6px;
  line-height: 1.6;
    font-size: 14px;
  color: #333;
  
}
.tbicon__close{
    
   font-size: 20px;
  color: rgba(0, 0, 0, 0.3);
  cursor: pointer;
}

    
#tblgdk{
    position: fixed;
    top: 32px;
    right: 32px;
}


.fontnhodong {
  line-height: 10px;
  
    text-decoration: none;
    background-color: transparent;
    border: none;
    outline: none;
    color:blue;
    transition: opacity 0.2s ease;
    }
footer{
            background-color:#ccc;
            text-align:center;
            padding:25px;
            font-size:18px;
        }
            </style>
            
     <div class="container">
         <br>
        <div class="card" style="margin: 0 auto; margin-top: 100px; width:auto; height: auto;">
									
						<center><h4 style="color: red">Lưu Ý</h4>
            <h5>Website Sẽ Chủ Yếu Buff Tốt View Cho Bài Đăng Của Blogger</h5>
            <h5> Max Số Lượng  Là 1000 Cho Mỗi Lần Buff</h5>
            <h5>Nếu bạn bị website xoá link hãy thêm ? vào sau link nhé </h5>
            </center>				<div class="card-body ">
               <form action="" method="post">   
                  <div class="text-center">
                      <h2 style="margin-top: 15px">Tăng Traffic</h2>
                      <input class="login" name="link" type="text" placeholder="https://toiyeuit.sg">
                      
										        <input class="login" name="sl" type="number" placeholder="Nhập Số Lượng (Max 1000)">
                      <br /><br>
										    <button class="btt btt--thanhcong btt--size--nho " name="tangtraffic">Tăng Ngay</button>
							</form>			    </div>
              </div>
           
            
         </div>
        </div>
        <h3>Các Đơn Đang Buff</h3>
        <div class="card-body">
        <div class="table-responsive scrollbar" id="history">
            <table class="table table-bordered table-striped fs--1" id="datatable">
                <thead class="bg-200 text-900">
                    <tr>



                        <th class="sort" data-sort=""><b>ID</b>
                        </th>
                        
                        <th class="sort" data-sort=""><b>Link</b>
                        </th>
                        
                        <th class="sort" data-sort=""><b>Số Lượng</b>
                        </th>
                        <th class="sort" data-sort=""><b>Đã Tăng</b>
                        </th>
                        
                        </th>
                    </tr>
                </thead>
                <tbody class="list">
<?php
foreach($ketnoi->query("SELECT * FROM `traffic`") as $row){
?>
                <tr>
                                <td><?=$row['id'];?></td>
                             <td><a href="<?=$row['link'];?>">   Nhấp Vào</a></td>
                                <td><?=$row['sl'];?></td>
                                  <td><?=$row['datang'];?></td>
                                
                            </tr>
                
                <?php } ?>
                                    </tbody>
            </table>
            
        </div>
    </div>
        <footer>
        <div>©2022 DoMinhTri.Co All Rights Reserved</div>
    </footer>
    </body>
</html>
