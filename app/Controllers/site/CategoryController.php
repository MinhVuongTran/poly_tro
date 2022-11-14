<?php
    class CategoryController extends BaseController{
        private $categoryModel;
        private $newModel;
        
        public function __construct(){
            $this-> model('CategoryModel');
            $this -> categoryModel = new CategoryModel; 
            
            $this->model('NewModel');
            $this-> newModel = new NewModel;
            
        }
        public function index(){
            $categories = $this -> categoryModel -> getAll();
            if(isset($_GET['id'])){
                $id = $_GET['id'];
                $newModel = $this->newModel -> getAll($id);
                $getNewPost = $this->newModel->getNewPost();
            }
            return  $this -> view('site.layouts.categories.index',[
                'categories' => $categories,
                'news'=>$newModel, 
                'getNewPost' =>$getNewPost,
            ]);
        }
    }
?>