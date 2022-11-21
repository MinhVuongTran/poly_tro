<?php
    class AuthController extends BaseController {

        private $authModel;

    public function __construct() {
        $this -> model('AuthModel');
        $this-> authModel = new AuthModel;
    }
    
    public function index() {
        $this -> view('admin.layouts.auth');
    }
}