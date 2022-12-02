<?php
class FavouriteController extends BaseController
{
    private $newModel;
    private $facilityModel;
    private $favouriteModel;

    public function __construct()
    {
        $this->model('FavouriteModel');
        $this->favouriteModel = new FavouriteModel;

        $this->model('NewModel');
        $this->newModel = new NewModel;

        $this->model('FacilityModel');
        $this->facilityModel = new FacilityModel;
    }

    public function index()
    {
        if (isset($_SESSION["auth"])) {
            $data = $this->favouriteModel->getAllById($_SESSION["auth"]['id']);
            return  $this->view('site.layouts.favourite', [
                "data" => $data
            ]);
        } else {
            header("location: http://localhost/poly_tro/site/account?signIn");
        }
    }

    public function saveFavourites()
    {
        if (isset($_SESSION["auth"])) {
            $user_id = $_SESSION["auth"]['id'];
            $data = ["user_id" => $user_id];

            $all = $this->favouriteModel->getAll();
            $item = null;
            foreach ($all as $one) {
                if ($one['user_id'] == $user_id) {
                    $item = $one;
                    break;
                } else {
                    $this->favouriteModel->createFavourite($data);
                }
            }

            $allItem = $this->favouriteModel->getAllItem();
            $check = false;
            foreach ($allItem as $oneItem) {
                if (($oneItem['new_id'] == $_GET["id"])) {
                    $check = true;
                }
            }
            if (!$check || count($allItem) == 0) {
                $data2 = [
                    'new_id' => $_GET["id"],
                    'favourite_id' => $item['id'],
                    "created_at" => date("Y-m-d H:i:s")
                ];
                $this->favouriteModel->createFavouriteItem($data2);
            }
            header("location: http://localhost/poly_tro/site/favourite");
        } else {
            header("location: http://localhost/poly_tro/site/account?signIn");
        }
    }

    public function deleteItem()
    {
        $this->favouriteModel->deleteItem($_GET["id"]);
        header("location: http://localhost/poly_tro/site/favourite");
    }
}