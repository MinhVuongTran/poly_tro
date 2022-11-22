<?php
class OrderModel extends BaseModel
{
    const TABLE1 = 'orders';
    const TABLE2 = "orders_item";

    public function getAll($select = ['*'])
    {
        return $this->all(self::TABLE1, $select);
    }

    public function getAllDetail($user_id)
    {
        $sql = "SELECT n.*,oi.id as order_item_id, oi.new_id, oi.order_id, oi.status as order_status, oi.created_at as order_created_at from news n inner join orders_item oi on n.id = oi.new_id inner join orders o on oi.order_id = o.id where o.user_id = $user_id";
        return $this->query_all($sql);
    }

    public function getOne($id)
    {
        return $this->one(self::TABLE1, $id);
    }
    public function createOrder($data)
    {
        return $this->create(self::TABLE1, $data);
    }
    public function createOrderItem($data)
    {
        return $this->create(self::TABLE2, $data);
    }
    public function updateOrderItem($data, $id)
    {
        return $this->update(self::TABLE2, $data, $id);
    }
    public function deleteOrder($id)
    {
        return $this->delete(self::TABLE2, $id);
    }
}