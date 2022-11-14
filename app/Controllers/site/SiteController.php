<?php
    class SiteController extends BaseController {

        private $categoryModel;
        private $newModel;

    public function __construct() {
        $this -> model('CategoryModel');
        $this -> model('NewModel');
        $this->categoryModel = new CategoryModel;
        $this->newModel = new NewModel;
    }

    public function index() {
        $categories = $this -> categoryModel -> getAll();
        $news = $this -> newModel -> getAll();
            $this -> view('site.index',[
                'categories'=>$categories,
                'news'=>$news, 
            ]);
        }
    }

    
?>