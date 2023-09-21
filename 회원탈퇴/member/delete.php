<?php
    $id = $_GET["id"];
    $pass = $_POST["pass"];

    $con = mysqli_connect("localhost","root","","sample");

    $sql = "delete from member where pass='$pass'";
    mysqli_query($con,$sql);
    mysqli_close($con);
    
    session_start();
        unset($_SESSION["userid"]);
        unset($_SESSION["username"]);

    echo"<script>location.href='index.php';</script>";
?>