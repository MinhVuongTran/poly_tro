<?php
class PermissionController extends BaseController
{

    private $permissionModel;
    private $authModel;

    public function __construct()
    {
        $this->model('PermissionModel');
        $this->model('AuthModel');
        $this->permissionModel = new PermissionModel;
        $this->authModel = new AuthModel;
    }

    public function index()
    {
        $permissions = $this->permissionModel->getAll();
        $this->view('admin.layouts.permission', [
            "permissions" => $permissions
        ]);
    }

    public function acceptPermission()
    {
        if (isset($_GET["id"])) {
            $id = $_GET["id"];
            $user_id = $this->permissionModel->getOne($id)['user_id'];
            $data1 = [
                "status" => 1
            ];
            $data2 = [
                "role" => 1
            ];
            $this->permissionModel->updatePermission($data1, $id);
            $this->authModel->updateUser($data2, $user_id);
            header("location: http://localhost/poly_tro/admin/permission");
        }
    }
}