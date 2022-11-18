<?php
    class AuthModel extends BaseModel {
        const TABLE = 'users';

        public function getAll($select = ['*']) {
           return $this -> all(self::TABLE, $select);
        }

        public function getOne($id) {
            return $this -> one(self::TABLE, $id);
        }

        public function createUser($data) {
            return $this -> create(self::TABLE, $data);
        }
        public function checkAuth($phone, $password = "", $forgot = false) {
            if($forgot) {
                $data = $this -> all(self::TABLE);
                $check = false;
                foreach ($data as $key => $value) {
                    if ($value['phone'] === $phone) {
                        $check = true;
                        break;
                    }
                }
                return $check;
            } else {
                $data = $this -> all(self::TABLE);
                $check = false;
                foreach ($data as $key => $value) {
                    if($value['status'] === 0){
                        break;
                    }     
                    if ($value['phone'] === $phone) {
                        if($password === $value['password']) {
                            $check = true;
                            break;
                        }
                    }
                }
                return $check;
            }
        }
        public function getAuth($phone) {
            $sql = "SELECT * from users where phone = '${phone}'";
            return $data = $this -> query_one($sql);
        }
    }
?>