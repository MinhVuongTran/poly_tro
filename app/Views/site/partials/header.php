<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<?=css_file()?>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
  </head>
  <body>
      <header class="header">
        <div class="main-header">
          <div class="logo">
            <a href="http://localhost/poly_tro">
              <img src="http://localhost/poly_tro/public/image/logo.png" alt="" class="logo-image">
            </a>
          </div>
          <div class="action">
            <?php if(isset($_SESSION["auth"])) : ?>
              <div class="user-info" style="cursor: pointer">
                    <div class="user-avatar">
                        <img src="http://localhost/poly_tro/public/image/mvt.jpg" alt="" class="user-avatar_img">
                    </div>
                    <div class="user-meta">
                      <span style="font-size: 1.6rem">Xin chào, </span>
                        <span class="user-meta_name">
                             <?=$_SESSION['auth']['fullname']?>
                        </span>
                    </div>
                </div>
            <?php else : ?>
              <a href="http://localhost/poly_tro/site/account?signIn" class="action-btn signIn">Đăng nhập</a>
              <a href="http://localhost/poly_tro/site/account?signUp" class="action-btn signUp">Đăng ký</a>
            <?php endif?>
            <a href="http://localhost/poly_tro/site/account/postNew" class="action-btn postNew">Đăng tin mới</a>
          </div>
        </div>
        <nav class="navbar">
          <ul class="list-category">
            <li class="list-category_item">
              <a href="http://localhost/poly_tro" class="list-category_item--link">Trang chủ</a>
            </li>
            <li class="list-category_item">
              <a href="http://localhost/poly_tro/site/category?id=1" class="list-category_item--link">Cho thuê phòng trọ</a>
            </li>
            <li class="list-category_item">
              <a href="http://localhost/poly_tro/site/category?id=2" class="list-category_item--link">Nhà cho thuê</a>
            </li>
            <li class="list-category_item">
              <a href="http://localhost/poly_tro/site/category?id=3" class="list-category_item--link">Cho thuê căn hộ</a>
            </li>
            <li class="list-category_item">
              <a href="http://localhost/poly_tro/site/category?id=4" class="list-category_item--link">Cho thuê mặt bằng</a>
            </li>
            <li class="list-category_item">
              <a href="http://localhost/poly_tro/site/category?id=5" class="list-category_item--link">Tìm người ở ghép</a>
            </li>
          </ul>
        </nav>
      </header>
      <div class="container">
  