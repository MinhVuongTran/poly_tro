<?php view("site.partials.accountManageHeader")?>
    <div class="profile-content">
        <h1 class="profile__title">Cập nhật thông tin cá nhân</h1>
        <form action="" class="profile-form" method="POST" enctype="multipart/form-data">
            <div class="form-group2">
                <label for="" class="form-label">Mã thành viên</label>
                <input type="text" class="form-control form-control_normal form-control_disabled" disabled>
            </div>
            <div class="form-group2">
                <label for="" class="form-label">Số điện thoại</label>
                <input type="text" class="form-control form-control_normal form-control_disabled" disabled>
            </div>
            <div class="form-group2">
                <label for="" class="form-label">Tên hiển thị</label>
                <input type="text" class="form-control form-control_normal" value="Trần Minh Vương">
            </div>
            <div class="form-group2">
                <label for="" class="form-label">Email</label>
                <input type="email" class="form-control form-control_normal" value="vuongtmph26824@fpt.edu.vn">
            </div>
            <div class="form-group2">
                <label for="" class="form-label">Mật khẩu</label>
                <a href="" style="font-size: 1.6rem; color: var(--secondaryColor)">Đổi mật khẩu</a>
            </div>
            <div class="form-group2" style="align-items: start">
                <label for="" class="form-label">Ảnh đại diện</label>
                <div>
                    <img src="http://localhost/poly_tro/public/image/mvt.jpg" alt="" class="avatar-preview">
                    <output id="images-result">
                    </output>
                    <input type="file" id="files" accept="image/jpeg, image/png, image/jpg"  name="files[]" style="font-size: 1.6rem; margin-bottom: 20px">
                </div>
            </div>
            <button class="btn btn-submit">Lưu và cập nhật</button>
        </form>
    </div>    
    <script src="http://localhost/poly_tro/public/js/showImageUpload.js"></script>
<?php view("site.partials.accountManageFooter")?>