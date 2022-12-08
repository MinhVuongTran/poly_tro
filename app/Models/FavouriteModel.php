<?php
class FavouriteModel extends BaseModel
{
    const TABLE1 = 'favourites';
    const TABLE2 = 'favourite_item';

    public function getAll($select = ['*'])
    {
        return $this->all(self::TABLE1, $select);
    }

    public function getAllById($user_id)
    {
        $sql = "SELECT fi.id as favourite_item_id, fi.created_at as favourite_item_created_at, n.* from favourites f inner join favourite_item fi on f.id = fi.favourite_id inner join news n on fi.new_id = n.id where f.user_id = ${user_id}";
        // echo $sql;
        // die;
        return $this->query_all($sql);
    }
    public function getAllItem($select = ['*'])
    {
        return $this->all(self::TABLE2, $select);
    }

    public function getFavouriteByIdUser($user_id)
    {
        $sql = "SELECT * from favourites where user_id = ${user_id}";
        return $this->query_one($sql);
    }

    public function getOne($id)
    {
        return $this->one(self::TABLE1, $id);
    }

    public function createFavourite($data)
    {
        return $this->create(self::TABLE1, $data);
    }

    public function createFavouriteItem($data)
    {
        return $this->create(self::TABLE2, $data);
    }

    public function deleteItem($id)
    {
        return $this->delete(self::TABLE2, $id);
    }
}