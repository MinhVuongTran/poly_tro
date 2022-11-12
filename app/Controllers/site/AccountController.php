<?php
    class AccountController extends BaseController {
        public function __construct() {

        }

        public function index() {
            if(isset($_GET["signIn"])) {
                return $this -> view('site.layouts.signIn');
            }
            if(isset($_GET["signUp"])) {
                return $this -> view('site.layouts.signUp');
            }
            return $this -> view('site.layouts.accountManage.index');
        }

        public function postNew() {
            return $this -> view('site.layouts.accountManage.postNew');
        }
        
        public function profile() {
            return $this -> view('site.layouts.accountManage.profile');
        }
    }
?>