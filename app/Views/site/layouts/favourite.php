<?php view("site.partials.accountManageHeader") ?>
<div class="manage-news_title">
    <p>Quản lý danh sách yêu thích</p>
</div>
<div class="manage-news_table">
    <table cellspacing="0">
        <thead>
            <tr>
                <th>Mã tin</th>
                <th width="300">Thông tin</th>
                <th>Giá</th>
                <th>Ngày tạo</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($data as $item) : ?>
            <tr>
                <td><?= $item['id'] ?></td>
                <td>
                    <a href="http://localhost/poly_tro/site/new?detail=<?= $item['id'] ?>"
                        class="table-short_title"
                        style="color: var(--secondaryColor)"><?= $item['title'] ?></a>
                    <p class="table-short_title"><b>Địa
                            chỉ:</b>
                        <?= $item['address'] ?>
                    </p>
                </td>
                <td style="text-align: center">
                    <?= price_format($item['price']) ?></td>
                <td><?= $item['favourite_item_created_at'] ?>
                </td>
                <td><a href="http://localhost/poly_tro/site/favourite/deleteItem?id=<?= $item['favourite_item_id'] ?>"
                        class="btn-remover">Xóa</a>
                </td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<?php view("site.partials.accountManageFooter") ?>