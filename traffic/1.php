<?php
include("config.php");
set_time_limit(0);
ini_set('max_execution_time', 0);
ini_set('memory_limit', '999999999M');

$putih = "\e[97m";
$orange = "\e[38;5;208m";
$arr    = "\e[0m";
$fgreen = "\e[32m";
$merah    = "\e[91m";
$grey = "\e[37m";
$ciyan = "\e[36m";
function garox($message){
    global $grey, $ciyan, $fgreen;
    $inputstyle = $arr . $ciyan. "[#] ". $grey . $message . ": " . $fgreen;
  echo $inputstyle;
  }
  
function curl($url, $opt) {
$ua = [
'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 184.0.0.23.117 (iPhone12,1; iOS 14_4_2; en_US; en-US; scale=2.00; 828x1792; 285355179)',
'Mozilla/5.0 (Linux; U; Android 9; en-in; Redmi Note 8 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/12.4.3-g',
'Mozilla/5.0 (Linux; Android 10; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36',
'Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Mobile Safari/537.36',
'Mozilla/5.0 (Linux; Android 10; Redmi Note 8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.101 Mobile Safari/537.36',
'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36',
'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.7) Gecko/20070914 Firefox/2.0.0.7'
];

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_REFERER, $opt);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_TIMEOUT, 10);
curl_setopt($ch, CURLOPT_USERAGENT, $ua[array_rand($ua)]);
curl_setopt($ch, CURLOPT_ENCODING, "gzip");
$exec = curl_exec($ch);
}

function cek($url) {
 $link = $url;
 $hndl = curl_init($link);
curl_setopt($hndl, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($hndl, CURLOPT_RETURNTRANSFER, TRUE);
curl_exec($hndl);
 $httpc = curl_getinfo($hndl, CURLINFO_HTTP_CODE);
return $httpc;
}
$kiemtra=$ketnoi->query("SELECT * FROM `traffic`");

if($kiemtra){
foreach ($ketnoi->query("SELECT * FROM `traffic`") as $get){
$a=$get["link"]; //link
$b=$get["sl"];//số lượng

$opt = [
   'https://www.tuoitre.vn',
   'https://www.youtube.com',
   'https://www.google.com',
   'https://www.vieon.vn',
   'https://www.thanhnien.vn',
   'https://www.facebook.com',
   'https://www.yahoo.com',
   'https://www.yandex.ru',
   'https://www.vtv.vn',
   'https://www.wikipedia.org'
  ];
 echo "\n[#] Traffic Boosting ... \n";
for ($i = 0; $i < 1000000; $i++) {
 echo "[".$i."] Boosted => ";
 echo $a . "<br>"; 
if($get["datang"]==$b || $get["datang"] > $b){
 $ketnoi->query("DELETE FROM `traffic` WHERE `link` = '$a'");
 } 
 curl($a, $opt[array_rand($opt)]);
 $ketnoi->query("UPDATE traffic SET `datang` = `datang` + 1 WHERE `link` = '$a'");
 }}}else{echo "chưa có đơn";}
?>