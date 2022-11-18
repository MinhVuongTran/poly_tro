
<?php view("site.partials.header")?>
    <div class="main-content clear" style="margin-top: 40px">
        <!-- boxtrai -->
        <div class="boxtrai mr">
            <div class=" clear">
                    <div class="box1 menu2">
                        <h2 style="margin-bottom: 8px">DANH SÁCH BÀI ĐĂNG</h2>
                        <ul>
                            <span style="font-size: 1.4rem">Sắp xếp:</span>
                            <li><a href="#">Mặc định</a></li>
                            <li><a href="#">Mới nhất</a></li>
                            <li><a href="#">Nhiều lượt xem nhất</a></li>
                        </ul>
                    </div>
            </div>
            <!-- Bai viet -->
            <?php foreach($news as $new) : ?>
                <div class="boxcontent2 stt">
                    <a href="http://localhost/poly_tro/site/new?detail=<?= $new['id']?>" class='content-img'>
                        <img src="http://localhost/poly_tro/public/image/img1.png" alt="" class='content-img_link'>
                    </a>
                    <div>
                        <a href="http://localhost/poly_tro/site/new?detail=<?= $new['id']?>" class="content-title short-title"><?=$new['title']?></a>
                        <div class="content-body">
                            <div class="content-price"><?=price_format($new['price'])?></div>
                            <div class="content-area"><?=$new['area']?>m²</div>
                            <div class="content-address"><?=$new['address']?></div>
                        </div>
                        <div class="content-description short-title">
                        <?=$new['description']?>
                        </div>
                        <div class="content-user">
                            <div class="content-user_avatar">
                                <img src="http://localhost/poly_tro/public/image/mvt.jpg" alt="">
                            </div>
                            <p class="content-user_name">
                                Trần Minh Vương
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
                <div class="boxtitle">DANH MỤC CHO THUÊ</div>
                <div class="boxcontent menudoc">
                    <ul>
                        <?php foreach($categories as $category): ?>
                            <li><a href="http://localhost/poly_tro/site/category?id=<?= $category['id']?>">> <?= $category['name'] ?></a></li>
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
                            <a href="http://localhost/poly_tro?gia_den=1000000">> Dưới 1tr</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?gia_tu=1000000&gia_den=2000000">> Từ 1 - 2 triệu</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?gia_tu=2000000&gia_den=3000000">> Từ 2 - 3 triệu</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?gia_tu=3000000&gia_den=4000000">> Từ 3 - 4 triệu</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?gia_tu=4000000&gia_den=5000000">> Từ 4 - 5 triệu</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?gia_tu=5000000">> Trên 5 triệu</a>
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
                            <a href="http://localhost/poly_tro?dien_tich_den=20">> Dưới 20m²</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?dien_tich_tu=20&dien_tich_den=30">> Từ 20 - 30m²</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?dien_tich_tu=30&dien_tich_den=40">> Từ 30 - 40m²</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?dien_tich_tu=40&dien_tich_den=50">> Từ 40 - 50m²</a>
                        </li>
                        <li>
                            <a href="http://localhost/poly_tro?dien_tich_tu=50">> Trên 50m²</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- box p4 -->
            <div class=" clear boxtrai-item">
                <div class="boxtitle">TIN MỚI ĐĂNG</div>
                <div class="  boxcontent">
                <?php foreach($getNewPost as $item):?>
                        <a href="" class=" clear10 newstt">
                        <div class="newstt-img">
                            <img src="./public/image/img1.png" alt="">
                        </div>
                        <div class="newstt-body">
                            <p class="newstt-title"><?= $item['title']?></p>
                            <span class="newstt-price"><?=price_format($item['price'])?></span>
                        </div>
                        </a>
                    <?php endforeach  ?>
                    
                </div>
            </div>
        </div>
    </div>
<?php view("site.partials.footer")?>

