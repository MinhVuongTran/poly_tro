<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://localhost/poly_tro/public/css/adminLogin.css">
    <title>Document</title>
</head>
<body>
    <div class="login-box">
        <h2>Đăng nhập</h2>
        <form action="http://localhost/poly_tro/admin/dashboard/signIn" method="POST">
            <div class="user-box">
            <input type="text" name="username" required>
            <label>Tên đăng nhập</label>
            </div>
            <div class="user-box">
            <input type="password" name="password" required>
            <label>Mật khẩu</label>
            </div>
            <button type="submit">Đăng nhập</button>
        </form>
    </div>
</body>
</html>