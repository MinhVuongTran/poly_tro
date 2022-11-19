<?php
    class SiteController extends BaseController {

        private $categoryModel;
        private $newModel;
        private $authModel;

    public function __construct() {
        $this -> model('CategoryModel');
        $this -> model('NewModel');
        $this->categoryModel = new CategoryModel;
        $this->newModel = new NewModel;
    }
    public function index() {     
        if(isset($_GET['gia_tu']) && isset($_GET['gia_den'])){
            $gia_tu=$_GET['gia_tu'];
            $gia_den=$_GET['gia_den'];
            $news = $this->newModel->getPrice($gia_tu,$gia_den);
        }else if(isset($_GET['gia_tu']) && !isset($_GET['gia_den'])){
            $gia_tu=$_GET['gia_tu'];
            $gia_den='1000000000';
            $news = $this->newModel->getPrice($gia_tu,$gia_den);
        }
        else if(isset($_GET['gia_den']) && !isset($_GET['gia_tu'])){
            $gia_tu="0";
            $gia_den=$_GET['gia_den'];
            $news = $this->newModel->getPrice($gia_tu,$gia_den);
        }else{
            $news = $this -> newModel -> getAll();
        }

        //diện tích
        if(isset($_GET['dien_tich_tu']) && isset($_GET['dien_tich_den'])){
            $dien_tich_tu=$_GET['dien_tich_tu'];
            $dien_tich_den=$_GET['dien_tich_den'];
            $news = $this->newModel->getArea($dien_tich_tu,$dien_tich_den);
        }else if(isset($_GET['dien_tich_tu']) && !isset($_GET['dien_tich_den'])){
            $dien_tich_tu=$_GET['dien_tich_tu'];
            $dien_tich_den='1000';
            $news = $this->newModel->getArea($dien_tich_tu,$dien_tich_den);
        }
        else if(isset($_GET['dien_tich_den']) && !isset($_GET['dien_tich_tu'])){
            $dien_tich_tu='0';
            $dien_tich_den=$_GET['dien_tich_den'];
            $news = $this->newModel->getArea($dien_tich_tu,$dien_tich_den);
        }
        $categories = $this -> categoryModel -> getAll();
        $getNewPost = $this->newModel->getNewPost();
        $this -> view('site.index',[
            'categories'=>$categories,
            'news'=>$news,
            'getNewPost' =>$getNewPost,
        ]);
    }
    
}
?>