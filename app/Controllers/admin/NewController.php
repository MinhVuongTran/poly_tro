<?php
    class NewController extends BaseController {

        private $newModel;

        public function __construct() {
            $this -> model('NewModel');
            $this -> newModel = new NewModel;
        }

        public function index() {
            $news = $this -> newModel -> getAll();
            $this -> view('admin.layouts.new', [
                "news" => $news
            ]);
        }

    }
    
?>