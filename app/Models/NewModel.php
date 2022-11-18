<?php
    class NewModel extends BaseModel {
        const TABLE = 'news';
        public function getAll($categoryId = "")
        {
            if($categoryId == "") {
                return $data =  $this -> all(self::TABLE);
            } else {
                $sql = "SELECT n.*,c.name as category_name ,u.fullname,u.image as avatar from news n inner join categories c on n.category_id = c.id inner join users u on n.user_id = u.id WHERE n.category_id = ${categoryId} ORDER BY id asc";
            }
            
            return $data= $this -> query_all($sql);
        }
        public function getOne($id) {
            return $this -> one(self::TABLE, $id);
        }

        public function createNew($data) {
            return $this -> create(self::TABLE, $data); 
        }
        public function getNewPost()
        {
            $sql = "SELECT * from news  ORDER BY created_at desc limit 0,5";
            return $data = $this->query_all($sql);
        }
        public function getPrice($from="",$to=""){
                $sql = "SELECT n.*,c.name as category_name ,u.fullname,u.image as avatar from news n inner join categories c on n.category_id = c.id inner join users u on n.user_id = u.id WHERE n.price BETWEEN $from AND $to";  
            // echo $sql;die;
            return $data = $this->query_all($sql);
        }
        public function getArea($from="",$to=""){
                $sql = "SELECT n.*,c.name as category_name ,u.fullname,u.image as avatar from news n inner join categories c on n.category_id = c.id inner join users u on n.user_id = u.id WHERE n.area BETWEEN ${from} AND ${to}";  

            return $data = $this->query_all($sql);
        }
    }
?>