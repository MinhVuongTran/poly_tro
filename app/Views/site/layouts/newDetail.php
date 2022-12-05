<?php view("site.partials.header") ?>
<div class="sanpham">
    <div class="left">
        <div class="slideshow">
            <!-- Slideshow wrapper -->
            <div class="slideshow-wrapper">

                <!-- Full-width images with number and caption text -->
                <?php foreach (handleImage($new['image']) as $image) : ?>
                <div class="mySlides fade">
                    <img class="slide-img"
                        src="http://localhost/poly_tro/<?= $image ?>">
                </div>
                <?php endforeach ?>
                <!-- Next and previous buttons -->
                <a class="prev"
                    onclick="plusSlides(-1)">&#10094;</a>
                <a class="next"
                    onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            <!-- The dots/circles -->
            <div class="dot-wrapper">
                <?php for ($i = 1; $i <= count(handleImage($new['image'])); $i++) : ?>
                <span class="dot"
                    onclick="currentSlide(<?= $i ?>)"></span>
                <?php endfor ?>
            </div>
        </div>
        <div class="thongtin">
            <h1 class="chude short-title">
                <?= $new['title'] ?></h1>
            <div class="diachi">
                <h4>Địa chỉ: <?= $new['address'] ?></h4>
                <p><b>Ngày đăng:</b>
                    <?= $new['created_at'] ?>
                </p>
                <div class="thongtinlienquan">
                    <span><?= price_format($new['price']) ?>/tháng</span>
                    <p>Diện tích:
                        <?= $new['area'] ?>m<sup>2</sup></p>
                    <p>Mã: #<?= $new['id'] ?></p>
                    <p>lượt xem: <?= $new['view'] ?></p>
                </div>
            </div>
            <div class="thongtinmota">
                <h2>Thông tin mô tả</h2>
                <div class="thongtinmota-chitiet">
                    <p><?= $new['description'] ?></p>
                </div>
            </div>
            <div class="dacdiem">
                <h2>Đặc điểm đăng tin</h2>
                <table class="table-dacdiem">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="name">Mã tin</td>
                            <td>#<?= $new['id'] ?></td>
                        </tr>
                        <tr>
                            <td class="name">Số lượng
                            </td>
                            <td><?= $new['number_people'] ?>
                                người</td>
                        </tr>
                        <tr>
                            <td class="name">Ngày đăng</td>
                            <td><?= $new['created_at'] ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="name">Ngày cập nhật
                            </td>
                            <td><?= $new['updated_at'] ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="thongtinlienlac">
                <h2>Thông tin liên lạc</h2>
                <table class="table-dacdiem">
                    <thead>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="name">Liên hệ</td>
                            <td><?= $new['fullname'] ?></td>
                        </tr>
                        <tr>
                            <td class="name">Điện thoại
                            </td>
                            <td><?= $new['phone'] ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="phanhoi">
                <h2>🚩Gửi phản hồi</h2>
            </div>
        </div>
        <?php if (count($facilities)) : ?>
        <div class="splienquan">
            <div class="chude2">
                <h2>Cho thuê phòng trọ cơ sở
                    <?= $facilities[0]['facility_name'] ?>
                </h2>
            </div>

            <!-- Bai viet -->
            <?php foreach ($facilities as $facility) : ?>
            <div class="boxcontent2 stt"
                style="border-top: 1px solid #ddd; padding: 20px 0">
                <a href="http://localhost/poly_tro/site/new?detail=<?= $facility['id'] ?>"
                    class="content-img">
                    <img src="http://localhost/poly_tro/<?= handleImage($facility['image'])[0] ?>"
                        alt="" class="content-img_link">
                </a>
                <div>
                    <a href="http://localhost/poly_tro/site/new?detail=<?= $facility['id'] ?>"
                        class="content-title short-title"><?= $facility['title'] ?></a>
                    <div class="content-body">
                        <div class="content-price">
                            <?= price_format($facility['price']) ?>/tháng
                        </div>
                        <div class="content-area">
                            <?= $facility['area'] ?>m²</div>
                        <div
                            class="content-address table-short_title">
                            <?= $facility['address'] ?>
                        </div>
                    </div>
                    <div class="content-description short-title"
                        style="max-width: 500px">
                        <?= $facility['description'] ?>
                    </div>
                    <div class="content-user">
                        <div class="content-user_avatar">
                            <img src="http://localhost/poly_tro/<?= $facility['avatar'] ?>"
                                alt="">
                        </div>
                        <p class="content-user_name">
                            <?= $facility['fullname'] ?>
                        </p>
                    </div>
                </div>
            </div>
            <?php endforeach ?>
        </div>
        <?php endif ?>
    </div>
    <div class="right">
        <div class="taikhoan">
            <div class="avatar">
                <img src="http://localhost/poly_tro/<?= $new['avatar'] ?>"
                    width="100%" alt="">
                <h2><?= $new['fullname'] ?></h2>
            </div>
            <div class="dienthoai">
                <i class="fa-solid fa-phone"></i>
                <span><?= $new['phone'] ?></span>
            </div>
            <a href="http://localhost/poly_tro/site/favourite/saveFavourites?id=<?= $new['id'] ?>"
                class="yeuthich">
                <i class="fa-regular fa-heart"></i>
                <span>Yêu thích</span>
            </a>

            <!-- Button trigger modal -->
            <button type="button"
                class="btn btn-order yeuthich" style=" height: 40px;
                        border: none;
                        cursor: pointer;">
                Đăng ký thuê
            </button>

            <!-- Modal -->
            <div class="model-container">
                <form
                    action="http://localhost/poly_tro/site/order?id=<?= $new['id'] ?>"
                    method="POST" class="form-model">
                    <div class="form-group">
                        <input type="date"
                            name="start_month" id=""
                            class="form-control"
                            placeholder="Nhập số tháng"
                            required>
                    </div>
                    <div class="form-group">
                        <input type="number" name="month"
                            id="" class="form-control"
                            placeholder="Nhập số tháng"
                            required>
                    </div>
                    <p class="error-massage"
                        style="font-size: 1.6rem;"> </p>
                    <button type="submit"
                        class="btn btn-submit">Đăng
                        ký</button>
                </form>
                <div class="overlay"></div>
            </div>
        </div>
        <div class="clear boxtrai-item">
            <h2 class="boxtitle">
                Tin nổi bật
            </h2>
            <div class="top-view boxcontent"></div>
        </div>
        <div class="clear boxtrai-item">
            <h2 class="boxtitle">
                Tin mới nhất
            </h2>
            <div class="new-latest boxcontent"></div>
        </div>
    </div>
</div>
<script>
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    let slides = document.getElementsByClassName(
        "mySlides");
    let dots = document.getElementsByClassName("dot");
    if (n > slides.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = slides.length
    }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(
            " active", "");
    }
    slides[slideIndex - 1].style.display = "flex";
    dots[slideIndex - 1].className += " active";
}
</script>

<script>
const newItem = <?= json_encode($new) ?>;
const newLatest = <?= json_encode($getNewPost) ?>;
const topViews = <?= json_encode($topViews) ?>;

const latest = document.querySelector('.new-latest');
const view = document.querySelector('.top-view');

function getFirstImage(link) {
    return image = link.slice(0, link.indexOf(","));
}

function formatPrice(a) {
    let str = `${a}`;
    return str.split("").reverse().reduce((prev,
        next,
        index) => {
        return ((index % 3) ? next : (next + '.')) +
            prev
    })
}

const get_day_of_time = (d1, d2) => {
    let ms1 = d1.getTime();
    let ms2 = d2.getTime();
    return Math.ceil((ms2 - ms1) / (24 *
        60 * 60 * 1000));
};

latest.innerHTML = newLatest.map(ele => {
    const getImage = getFirstImage(ele
        .image);
    const price = formatPrice(ele.price);

    let start = new Date(ele.created_at)
    let end = new Date()

    let time = get_day_of_time(start, end);
    let day = Math.floor(time / 30);
    if (Math.floor(time / 30) > 0) {
        time =
            `${day} tháng ${time - (day * 30)} ngày trước`;
    } else {
        time =
            `${time} ngày trước`;
    }
    return `
            <a href="http://localhost/poly_tro/site/new?detail=${ele.id}"
                class=" clear10 newstt">
                <div class="newstt-img">
                    <img src="http://localhost/poly_tro/${getImage}"
                        alt="">
                </div>
                <div class="newstt-body">
                    <p class="newstt-title">
                    ${ele.title}</p>
                    <div style="display: flex;
                                align-items: center;
                                justify-content: space-between;
                                margin-top: 8px;">
                        <span class="newstt-price">${price}đ</span>
                        <span>${time}</span>
                    </div>
                </div>
            </a>`
}).join("")

view.innerHTML = topViews.map(ele => {
    const getImage = getFirstImage(ele
        .image);
    const price = formatPrice(ele.price);

    let start = new Date(ele.created_at)
    let end = new Date()

    let time = get_day_of_time(start, end);
    let day = Math.floor(time / 30);
    if (Math.floor(time / 30) > 0) {
        time =
            `${day} tháng ${time - (day * 30)} ngày trước`;
    } else {
        time =
            `${time} ngày trước`;
    }
    return `
                <a href="" class="clear10 newstt">
                    <div class="newstt-img">
                        <img src="http://localhost/poly_tro/${getImage}" alt="">
                    </div>
                    <div class="newstt-body">
                        <p class="newstt-title">
                        ${ele.title}
                        </p>
                        <div style="display: flex;
                                    align-items: center;
                                    justify-content: space-between;
                                    margin-top: 8px;">
                            <span class="newstt-price">${price}đ</span>
                            <span>${ele.view} lượt xem</span>
                        </div>
                    </div>
                </a>`
}).join("")


// model
const modelContainer = document.querySelector(
    ".model-container");
const btnOrder = document.querySelector(".btn-order");
const overlay = document.querySelector(".overlay");
const navbar = document.querySelector(".navigation-bar");
const body = document.querySelector("body");

btnOrder.onclick = () => {
    modelContainer.style.display = "block";
    navbar.style = "z-index: 0"
    body.style = "overflow: hidden"
}

overlay.onclick = () => {
    modelContainer.style.display = "none";
    navbar.style = "z-index: 1"
    body.style = "overflow: none"

}

const btnSubmit = document.querySelector(".btn-submit");
const formModel = document.querySelector(".form-model");
const errorMassage = document.querySelector(
    ".error-massage");
<?php if (isset($check)) : ?>
const checkOrder = <?= $check ?>;
<?php endif ?>
const inputElement = formModel.querySelector(
    'input[name="month"]');

formModel.addEventListener("submit", (e) => {
    console.log(Number(inputElement.value));
    if (Number(inputElement.value) < 0) {
        e.preventDefault();
        errorMassage.innerText =
            "Vui lòng nhập số lớn hơn 0";
    } else if (checkOrder === 1) {
        e.preventDefault();
        errorMassage.innerText =
            "Đơn đăng ký đã tồn tại";
    } else {
        e.submit();
    }

})

inputElement.oninput = () => {
    errorMassage.innerText = "";
}

const checkNumberOrder = <?= $checkNumberOrder ?>;

if (checkNumberOrder === 1) {
    btnOrder.innerText = "Đã đủ người thuê";
    btnOrder.style.cursor = "not-allowed";
    btnOrder.setAttribute("disabled", "disabled");
}
</script>

<?php view("site.partials.footer") ?>