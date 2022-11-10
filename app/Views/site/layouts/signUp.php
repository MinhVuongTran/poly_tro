<?php view("site.partials.header")?>
    <form class="form form-signUp" action="" method="post">
        <h1 class="form-title">Tạo tài khoản mới</h1>
        <div class="form-content">
            <div class="form-group">
                <label for="" class="form-label">Họ và tên</label>
                <input type="text" name="fullname" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="form-label">Số điện thoại</label>
                <input type="text" name="phone_number" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="form-label">Tạo mật khẩu</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-submit">
                Đăng ký
            </button>
            <div class="form-group_direction">
                Bạn đã có tài khoản?
                <a href="http://localhost/poly_tro/site/account?signIn" class="forgot-link">
                    Đăng nhập ngay
                </a>
            </d>
        </div>
    </form>
<?php view("site.partials.footer")?>