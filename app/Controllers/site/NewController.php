<?php
    class NewController extends BaseController {

    public function __construct() {

    }

    public function index() {
        if(isset($_GET["detail"]))
            $this -> view('site.layouts.newDetail');
        }
    }
?>