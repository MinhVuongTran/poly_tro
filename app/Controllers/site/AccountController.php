<?php
class AccountController extends BaseController
{

    private $newModel;
    private $authModel;
    private $categoryModel;
    private $facilityModel;

    public function __construct()
    {
        $this->model('NewModel');
        $this->model('AuthModel');
        $this->model('CategoryModel');
        $this->model('FacilityModel');
        $this->newModel = new NewModel;
        $this->authModel = new AuthModel;
        $this->categoryModel = new CategoryModel;
        $this->facilityModel = new FacilityModel;
    }

    public function index()
    {
        if (isset($_GET["signIn"])) {
            return $this->view('site.layouts.signIn');
        }
        if (isset($_GET["signUp"])) {
            return $this->view('site.layouts.signUp');
        }
        if (isset($_GET["forgot"])) {
            return $this->view('site.layouts.forgot');
        }
        $news = $this->newModel->getAll("", $_SESSION["auth"]['id']);
        if ($_SESSION["auth"]['role'] == 1) {
            return $this->view('site.layouts.accountManage.index', [
                "news" => $news
            ]);
        } else {
            $user = $this->authModel->getOne($_SESSION["auth"]['id']);
            return $this->view('site.layouts.accountManage.profile', [
                "user" => $user
            ]);
        }
    }

    public function postNew()
    {
        $facilities = $this->facilityModel->getAll();
        $categories = $this->categoryModel->getAll();
        return $this->view('site.layouts.accountManage.postNew', [
            "facilities" => $facilities,
            "categories" => $categories,
        ]);
    }

    public function profile()
    {
        $user = $this->authModel->getOne($_SESSION["auth"]['id']);
        return $this->view('site.layouts.accountManage.profile', [
            "user" => $user
        ]);
    }

    public function saveProfile()
    {
        $fullname = $_POST["fullname"];
        $address = $_POST["address"];
        $email = $_POST["email"];

        $file = $_FILES['image'];

        if ($file['size'] == 0) {
            $data = $this->authModel->getOne($_SESSION["auth"]['id']);
            $image = $data['image'];
        } else {
            $image = "./public/uploads/" . $file['name'];
            move_uploaded_file($file['tmp_name'], $image);
            $image = "/public/uploads/" . $file['name'];
        }

        $data = [
            "fullname" => $fullname,
            "address" => $address,
            "email" => $email,
            "image" => $image,
            "updated_at" => date("Y-m-d H:i:s"),
        ];
        $this->authModel->updateUser($data, $_SESSION["auth"]['id']);
        header('location: http://localhost/poly_tro/site/account');
    }
}
