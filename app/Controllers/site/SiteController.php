<?php
    class SiteController extends BaseController {
        private $categoryModel;
    public function __construct() {
        $this -> model('CategoryModel');
        $this->categoryModel = new CategoryModel;
    }

    public function index() {
        $categories = $this -> categoryModel -> getAll();
            $this -> view('site.index',[
                'categories'=>$categories
            ]);
            $abc = $this -> view('site.layouts.categories.index',[
                'categories' => $categories,
            ]);
        }
    
    }

    
?>