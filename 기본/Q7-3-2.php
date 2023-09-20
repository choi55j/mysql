<?php
    class Customer{
        private $name;
        private $address;
        private $phone;

        public function setName($name){
            $this->name = $name;
        }
        public function setAddress($address){
            $this->address = $address;
        }
        public function setPhone($phone){
            $this->phone = $phone;
        }
        
        
        public function getPhone(){
            return "전화번호 : ".$this->phone;
        }
        public function getAddress(){
            return "주소 : ".$this->address;
        }
        public function getName(){
            return "이름 : ".$this->name;
        }
    }

    $obj = new Customer();
    $obj->setName("홍길동4");
    $obj->setAddress("수원");
    $obj->setPhone("010-1234-5678");

    echo $obj->getName();
    echo "<br>".$obj->getAddress();
    echo "<br>".$obj->getPhone();

?>