<?php
    $id=$_GET["id"];
    $pass=$_GET["pass"];
    $name=$_GET["name"];
    $email=$_GET["email"];

    $con = mysqli_connect("localhost","root","","sample");

    $sql = "delete from member where pass='$pass',name='$name', email='$email'";
    mysqli_query($con,$sql);

    mysqli_close($con);
    session_start();
        unset($_SESSION["userid"]);
        unset($_SESSION["username"]);

    echo"<script>location.href='index.php';</script>";
?>