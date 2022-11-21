<?php
class PermissionModel extends BaseModel
{
    const TABLE = 'permissions';

    public function getAll($select = ['*'])
    {
        return $this->all(self::TABLE, $select);
    }

    public function getOne($id)
    {
        return $this->one(self::TABLE, $id);
    }

    public function createPermission($data)
    {
        return $this->create(self::TABLE, $data);
    }

    public function updatePermission($data, $id)
    {
        return $this->update(self::TABLE, $data, $id);
    }
    public function deletePermission($id)
    {
        return $this->delete(self::TABLE, $id);
    }
}