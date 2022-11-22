<?php view("site.partials.header") ?>
<div class="main-content clear" style="margin-top: 40px">
    <!-- boxtrai -->
    <div class="boxtrai mr">
        <div class=" clear">
            <div class="box1 menu2">
                <h2 style="margin-bottom: 8px">DANH SÁCH BÀI
                    ĐĂNG</h2>
                <ul>
                    <span style="font-size: 1.4rem">Sắp
                        xếp:</span>
                    <li><a
                            href="http://localhost/poly_tro/site/category?id=<?= $_GET["id"] ?>">Mặc
                            định</a></li>
                    <li><a
                            href="http://localhost/poly_tro/site/category?id=<?= $_GET["id"] ?>&orderBy=latest">Mới
                            nhất</a></li>
                    <li><a
                            href="http://localhost/poly_tro/site/category?id=<?= $_GET["id"] ?>&orderBy=topView">Nhiều
                            lượt xem
                            nhất</a></li>
                </ul>
            </div>
        </div>
        <!-- Bai viet -->
        <?php foreach ($news as $new) : ?>
        <div class="boxcontent2 stt">
            <a href="http://localhost/poly_tro/site/new?detail=<?= $new['id'] ?>"
                class='content-img'>
                <img src="http://localhost/poly_tro/<?= handleImage($new['image'])[0] ?>"
                    alt="" class='content-img_link'>
            </a>
            <div>
                <a href="http://localhost/poly_tro/site/new?detail=<?= $new['id'] ?>"
                    class="content-title"><?= $new['title'] ?></a>
                <div class="content-body">
                    <div class="content-price">
                        <?= price_format($new['price']) ?>
                    </div>
                    <div class="content-area">
                        <?= $new['area'] ?>m²</div>
                    <div
                        class="content-address table-short_title">
                        <?= $new['address'] ?></div>
                </div>
                <div class="content-description short-title"
                    style="max-width: 500px">
                    <?= $new['description'] ?>
                </div>
                <div class="content-user">
                    <div class="content-user_avatar">
                        <img src="../<?= $new['avatar'] ?>"
                            alt="">
                    </div>
                    <p class="content-user_name">
                        <?= $new['fullname'] ?>
                    </p>
                </div>
            </div>
        </div>
        <?php endforeach ?>
    </div>
    <!-- box phai -->
    <div class="boxphai">
        <!-- box p1 -->
        <div class="clear boxtrai-item">
            <div class="boxtitle">Xem theo cơ sở</div>
            <div class="boxcontent menudoc">
                <ul>
                    <?php foreach ($facilities as $facility) : ?>
                    <li><a
                            href="http://localhost/poly_tro/site?facility_id=<?= $facility['id'] ?>">>
                            <?= $facility['name'] ?></a>
                    </li>
                    <?php endforeach ?>
                </ul>
            </div>
        </div>
        <!-- box p2  -->
        <div class=" clear  boxtrai-item">
            <div class="boxtitle">XEM THEO GIÁ</div>
            <div class="boxcontent menudoc">
                <ul>
                    <li>
                        <a href="#">> Dưới 1tr</a>
                    </li>
                    <li>
                        <a href="#">> Từ 1 - 2 triệu</a>
                    </li>
                    <li>
                        <a href="#">> Từ 2 - 3 triệu</a>
                    </li>
                    <li>
                        <a href="#">> Từ 2 - 3 triệu</a>
                    </li>
                    <li>
                        <a href="#">> Từ 3 - 4 triệu</a>
                    </li>
                    <li>
                        <a href="#">> Từ 4 - 5 triệu</a>
                    </li>
                    <li>
                        <a href="#">> Trên 5 triệu</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- box p3 -->
        <div class=" clear boxtrai-item">
            <div class="boxtitle">XEM THEO DIỆN TÍCH</div>
            <div class="boxcontent menudoc">
                <ul>
                    <li>
                        <a href="#">> Dưới 20m²</a>
                    </li>
                    <li>
                        <a href="#">> Từ 20 - 30m²</a>
                    </li>
                    <li>
                        <a href="#">> Từ 30 - 40m²</a>
                    </li>
                    <li>
                        <a href="#">> Từ 40 - 50m²</a>
                    </li>
                    <li>
                        <a href="#">> Trên 50m²</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- box p4 -->
        <div class=" clear boxtrai-item">
            <div class="boxtitle">TIN MỚI ĐĂNG</div>
            <div class="  boxcontent">
                <?php foreach ($getNewPost as $item) : ?>
                <a href="" class=" clear10 newstt">
                    <div class="newstt-img">
                        <img src="http://localhost/poly_tro/<?= handleImage($item['image'])[0] ?>"
                            alt="">
                    </div>
                    <div class="newstt-body">
                        <p class="newstt-title">
                            <?= $item['title'] ?></p>
                        <span
                            class="newstt-price"><?= price_format($item['price']) ?></span>
                    </div>
                </a>
                <?php endforeach  ?>

            </div>
        </div>
    </div>
</div>
<?php view("site.partials.footer") ?>