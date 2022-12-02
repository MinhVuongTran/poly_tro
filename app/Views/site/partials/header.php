<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="http://localhost/poly_tro/public/css/main.css">
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
                <?php if (isset($GLOBALS['userInfo'])) : ?>
                    <div class="user-info" style="cursor: pointer">
                        <div class="user-avatar">
                            <img src="http://localhost/poly_tro<?= $GLOBALS['userInfo']['image'] ?>" alt="" class="user-avatar_img">
                        </div>
                        <div class="user-meta">
                            <span style="font-size: 1.6rem">Xin
                                chào, </span>
                            <span class="user-meta_name">
                                <?= $GLOBALS['userInfo']['fullname'] ?>
                            </span>
                        </div>
                        <ul class="user-action_list">
                            <?php if ($GLOBALS['userInfo']['role'] == 1) : ?>
                                <li class="user-action_item"><a href="http://localhost/poly_tro/site/account" class="user-action_item-link">Quản
                                        lý tin đăng</a>
                                </li>
                            <?php endif ?>
                            <li class="user-action_item"><a href="http://localhost/poly_tro/site/account/profile" class="user-action_item-link">Thông
                                    tin tài khoản</a>
                            </li>
                            <li class="user-action_item"><a href="http://localhost/poly_tro/site/account/order" class="user-action_item-link">Thông
                                    tin đơn hàng</a>
                            </li>
                            <li class="user-action_item"><a href="http://localhost/poly_tro/site/favourite" class="user-action_item-link">Danh
                                    sách yêu thích</a>
                            </li>
                            <li class="user-action_item"><a href="http://localhost/poly_tro/site/auth/logout" class="user-action_item-link">Đăng
                                    xuất</a>
                            </li>
                        </ul>
                    </div>
                    <?php if ($GLOBALS['userInfo']['role'] == 1) : ?>
                        <a href="http://localhost/poly_tro/site/account/postNew" class="action-btn postNew">Đăng tin
                            mới</a>
                    <?php endif ?>
                <?php else : ?>
                    <a href="http://localhost/poly_tro/site/account?signIn" class="action-btn signIn">Đăng nhập</a>
                    <a href="http://localhost/poly_tro/site/account?signUp" class="action-btn signUp">Đăng ký</a>
                    <a href="http://localhost/poly_tro/site/account/postNew" class="action-btn postNew">Đăng tin
                        mới</a>
                <?php endif ?>
            </div>
        </div>

    </header>
    <nav class="navigation-bar">
        <ul class="list-category">
            <li class="list-category_item">
                <a href="http://localhost/poly_tro" class="list-category_item--link">Trang
                    chủ</a>
            </li>
            <li class="list-category_item">
                <a href="http://localhost/poly_tro/site/category?id=1" class="list-category_item--link">Cho
                    thuê phòng trọ</a>
            </li>
            <li class="list-category_item">
                <a href="http://localhost/poly_tro/site/category?id=2" class="list-category_item--link">Nhà
                    cho thuê</a>
            </li>
            <li class="list-category_item">
                <a href="http://localhost/poly_tro/site/category?id=3" class="list-category_item--link">Cho
                    thuê căn hộ</a>
            </li>
            <li class="list-category_item">
                <a href="http://localhost/poly_tro/site/category?id=4" class="list-category_item--link">Cho
                    thuê mặt bằng</a>
            </li>
        </ul>
    </nav>
    <div class="wrapper">