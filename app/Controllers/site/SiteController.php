<?php
    class SiteController extends BaseController {

    public function __construct() {

    }

    public function index() {
            $this -> view('site.index');
        }
    }
?>