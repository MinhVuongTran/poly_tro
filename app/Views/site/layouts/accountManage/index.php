<?php view("site.partials.accountManageHeader")?>
<div class="manage-news_title">
    <p>Quản lý tin đăng</p>
    <a href="http://localhost/poly_tro/site/account/postNew" class="action-btn postNew">Đăng tin mới</a>
</div>
<div class="manage-news_table">
   <table cellspacing="0">
      <tr>
         <th>Mã tin</th>
         <th width="400">Tiêu đề và mô tả</th>
         <th>Giá</th>
         <th>Ngày bắt đầu</th>
         <th>Ngày hết hạn</th>
         <th>Trạng thái</th>
      </tr>

      <tr>
         <td>1</td>
         <td>
             <a href="" class="table-short_title" style="color: var(--secondaryColor)">Cho thuê phòng trọ 45m2 điện nước nhà dân Cầu Diễn 123</a>
             <p class="table-short_title"><b>Địa chỉ:</b> Đường Hoàng Công Chất, Phường Phú Diễn, Huyện Từ Liêm, Hà Nội</p>
        </td>
         <td>5000000</td>
         <td>01/01/2000</td>
         <td>01/01/2000</td>
         <td>Đang duyệt</td>
      </tr>
   </table>
</div>
<?php view("site.partials.accountManageFooter")?>