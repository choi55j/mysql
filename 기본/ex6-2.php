<?php
    if(isset($_COOKIE["username"])){
        echo $_COOKIE["username"]."님 환영 합니다.";
    }
    else{
        echo "username 쿠키가 존재 하지 않습니다.";
    }
?>