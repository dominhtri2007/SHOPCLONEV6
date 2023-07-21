<?php

$ketnoi = mysqli_connect('localhost', 'ycdcdxmt_traffic', // Tên đăng nhập Cơ sở dữ liệu
                                                        'ycdcdxmt_traffic', // Mật khẩu Cơ sở dữ liệu
                                                        'ycdcdxmt_traffic') // Cơ sở dữ liệu cần kết nối
            or die ('Vui lòng kết nối đến DATABASE');
            mysqli_query($ketnoi, "set names 'utf8'");
?>