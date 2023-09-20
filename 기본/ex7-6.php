<?php
    class Member{
        public $name;

        public function getName(){
                return $this->name;
        }
    }

    $mem = new Member();

    $mem->name = "최수혁";
    echo "이름 : ".$mem->getName();
?>