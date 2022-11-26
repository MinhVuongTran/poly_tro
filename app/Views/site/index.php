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
                    <li><a href="http://localhost/poly_tro">Mặc
                            định</a></li>
                    <li><a
                            href="http://localhost/poly_tro?orderBy=latest">Mới
                            nhất</a></li>
                    <li><a
                            href="http://localhost/poly_tro?orderBy=topView">Nhiều
                            lượt xem
                            nhất</a></li>
                </ul>
            </div>
        </div>
        <!-- Bai viet -->
        <div class="news-content">
        </div>
        <!-- Pagination -->
        <div class="btn-group_page">
        </div>
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
                        <a
                            href="http://localhost/poly_tro?gia_den=1000000">>
                            Dưới 1tr</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?gia_tu=1000000&gia_den=2000000">>
                            Từ 1 - 2 triệu</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?gia_tu=2000000&gia_den=3000000">>
                            Từ 2 - 3 triệu</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?gia_tu=3000000&gia_den=4000000">>
                            Từ 3 - 4 triệu</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?gia_tu=4000000&gia_den=5000000">>
                            Từ 4 - 5 triệu</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?gia_tu=5000000">>
                            Trên 5 triệu</a>
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
                        <a
                            href="http://localhost/poly_tro?dien_tich_den=20">>
                            Dưới 20m²</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?dien_tich_tu=20&dien_tich_den=30">>
                            Từ 20 - 30m²</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?dien_tich_tu=30&dien_tich_den=40">>
                            Từ 30 - 40m²</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?dien_tich_tu=40&dien_tich_den=50">>
                            Từ 40 - 50m²</a>
                    </li>
                    <li>
                        <a
                            href="http://localhost/poly_tro?dien_tich_tu=50">>
                            Trên 50m²</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- box p4 -->
        <div class=" clear boxtrai-item">
            <div class="boxtitle">TIN MỚI ĐĂNG</div>
            <div class="  boxcontent">
                <?php foreach ($getNewPost as $item) : ?>
                <a href="http://localhost/poly_tro/site/new?detail=<?= $item['id'] ?>"
                    class=" clear10 newstt">
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
<script>
const data = <?= json_encode($news) ?>;
const newsContent = document.querySelector('.news-content');
const btnGroupPage = document.querySelector(
    '.btn-group_page');

data.forEach(e => {
    for (let i in e) {
        if (!isNaN(Number(i))) {
            delete e[i];
        }
    }
})

let temp = 0;
let numberData = 7;

function getFirstImage(link) {
    return image = link.slice(0, link.indexOf(","));
}

function render(temp) {
    let target = temp > 0 ? temp * numberData : numberData;
    const newData = data.slice(target - numberData, target);


    newsContent.innerHTML =
        newData.map(e => {
            const getImage = getFirstImage(e
                .image);
            return `
            <div class="boxcontent2 stt">
                <a href="http://localhost/poly_tro/site/new?detail=${e.id}"
                    class='content-img'>
                    <img src="http://localhost/poly_tro/${getImage}"
                        alt="" class='content-img_link'>
                </a>
                <div>
                    <a href="http://localhost/poly_tro/site/new?detail=${e.id}"
                        class="content-title short-title">${e.title}</a>
                    <div class="content-body">
                        <div class="content-price">
                            
                        </div>
                        <div class="content-area">
                        ${e.area}m²</div>
                        <div
                            class="content-address table-short_title">
                            ${e.address}</div>
                    </div>
                    <div class="content-description short-title"
                        style="max-width: 500px">
                        ${e.description}
                    </div>
                    <div class="content-user">
                        <div class="content-user_avatar">
                            <img src="http://localhost/poly_tro${e.avatar}"
                                alt="">
                        </div>
                        <p class="content-user_name">
                        ${e.fullname}
                        </p>
                    </div>
                </div>
            </div>`
        }).join("");

}

document.body.onload = () => {
    render(temp)
}

if (Math.ceil(data.length / numberData) > 1) {

    for (let i = 1; i <= Math.ceil(data.length /
            numberData); i++) {
        btnGroupPage.innerHTML +=
            `<button class="btn-page">${i}</button>`
    }
}

const btnPage = document.querySelectorAll(".btn-page");

for (let i = 0; i < btnPage.length; i++) {
    btnPage[i].onclick = () => {
        render(Number(btnPage[i].innerText))
        window.scrollTo({
            top: 0,
            behavior: `smooth`
        })
    }
}
</script>
<?php view("site.partials.footer") ?>