<?php
    class NewModel extends BaseModel {
        const TABLE = 'news';

        public function getAll($select = ['*']) {
           return $this -> all(self::TABLE, $select);
        }

        public function getOne($id) {
            return $this -> one(self::TABLE, $id);
        }

        public function createNew($data) {
            return $this -> create(self::TABLE, $data); 
        }
    }
?>