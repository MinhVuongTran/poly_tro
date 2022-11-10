<?php
    class AccountController extends BaseController {
        public function __construct() {

        }

        public function index() {
                $this -> view('site.layouts.account.index');
        }
    }
?>