<?php
$servername='localhost';
$username='user';
$password='12345';
$dbname='sample';

$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("연결 오류 :".mysqli_connect_error());
}

echo "Mysqli에 성공적으로 연결되었습니다";
?>