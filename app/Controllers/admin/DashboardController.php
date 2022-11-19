<?php
    class DashboardController extends BaseController {

        private $adminModel;

        public function __construct() {
            $this -> model('AdminModel');
            $this-> adminModel = new AdminModel;
        }
    

        public function index() {
            $this -> view('admin.layouts.dashboard');
        }
        public function signIn() {
            $username = $_POST["username"];
            $password = $_POST["password"];
            
            $check = $this -> adminModel -> checkAdmin($username, $password);
            if($check) {
                $admin = $this -> adminModel -> getAdmin($username);
                $_SESSION["admin"] = $admin;
                header("location: http://localhost/poly_tro/admin/dashboard");
            } else {
                header("location: http://localhost/poly_tro/admin?error");
            }
        }
        public function logout() {
            if(isset($_SESSION["admin"])) {
                unset($_SESSION["admin"]);
                header("location: http://localhost/poly_tro/admin");
            }
        }
    }
?>