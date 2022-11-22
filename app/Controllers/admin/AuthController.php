<?php
class AuthController extends BaseController
{

    private $authModel;

    public function __construct()
    {
        $this->model('AuthModel');
        $this->authModel = new AuthModel;
    }

    public function index()
    {
        $users = $this->authModel->getAll();
        $this->view('admin.layouts.auth', [
            'users' => $users
        ]);
    }
    public function deleteUser()
    {
        if (isset($_GET["id"])) {
            $id = $_GET["id"];
            $this->authModel->deleteUser($id);
            header("location: http://localhost/poly_tro/admin/auth");
        }
    }
}