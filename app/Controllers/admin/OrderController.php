<?php
class OrderController extends BaseController
{

    private $orderModel;

    public function __construct()
    {
        $this->model('OrderModel');
        $this->orderModel = new OrderModel;
    }

    public function index()
    {
        $orders = $this->orderModel->getAll();
        $this->view('admin.layouts.order', [
            'orders' => $orders
        ]);
    }

    public function detail()
    {
        $id = $_GET["id"];
        $order = $this->orderModel->getOne($id);
        $orders_item = $this->orderModel->getAllDetail($order['user_id']);
        $this->view('admin.layouts.orderDetail', [
            'orders_item' => $orders_item
        ]);
    }

    public function accept()
    {
        $id = $_GET["id"];
        $data = [
            "status" => 1
        ];
        $this->orderModel->updateOrderItem($data, $id);
        header("location: http://localhost/poly_tro/admin/order");
    }
}