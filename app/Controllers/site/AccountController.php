<?php
    class AccountController extends BaseController {
        
        private $newModel;
        private $categoryModel;
        private $facilityModel;

        public function __construct() {
            $this -> model('NewModel');
            $this -> model('CategoryModel');
            $this -> model('FacilityModel');
            $this -> newModel = new NewModel;
            $this -> categoryModel = new CategoryModel;
            $this -> facilityModel = new FacilityModel;
        }

        public function index() {
            if(isset($_GET["signIn"])) {
                return $this -> view('site.layouts.signIn');
            }
            if(isset($_GET["signUp"])) {
                return $this -> view('site.layouts.signUp');
            }
            $news = $this -> newModel -> getAll();
            return $this -> view('site.layouts.accountManage.index', [
                "news" => $news
            ]);
        }

        public function postNew() {
            $facilities = $this -> facilityModel -> getAll();
            $categories = $this -> categoryModel -> getAll();
            return $this -> view('site.layouts.accountManage.postNew', [    
                "facilities" => $facilities,
                "categories" => $categories,
            ]);
        }
        
        public function profile() {
            return $this -> view('site.layouts.accountManage.profile');
        }
    }
?>