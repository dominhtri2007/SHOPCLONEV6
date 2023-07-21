<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    header("location: users.php");
  }
?>

<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="form login">
      <header>Realtime Chat App</header>
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>
        <div class="field input">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Vui lòng nhập email" required>
        </div>
        <div class="field input">
          <label>Mật Khẩu</label>
          <input type="password" name="password" placeholder="Vui lòng nhập mật khẩu" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Đăng Nhập">
        </div>
      </form>
      <div class="link">Bạn chưa có tài khoản? <a href="index.php">Signup now</a></div>
    </section>
  </div>
  
  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/login.js"></script>

</body>
</html>
