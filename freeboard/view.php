<?php
    if(isset($_GET)["num"])
        $sum=$_GET["num"];
    else
        $num="";

    $con=mysqli_connect("localhost","root","","sample");
    $sql="select*from freeboard where num=$num";
    $result=mysqli_query($con,$sql);

    $row=mysqli_fetch_assoc($result);
    $name         =$row["name"];
    $subject      =$row["subject"];
    $regist_day   =$row["regist_day"];
    $content      =$row["content"];
    $contetn = str_replace("","&nbsp;",$content);
    $content = str_replace("|n","<br>",$content);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script>
        function check_password(mode, num){
            window.open("password_form.php?mode="+mode+"&num="+num,"pass_check","left=700,top=300,width=550,heigth=150,scrollbars=no,resizeble=yes");
        }
    </script>
</head>
<body>
    <h2>자유 게시판>내용보기</h2>
    <ul class="board_view">
        <li class="row1">
            <span class="col1"><b>제목 : </b> <?=$subject?></span>
            <span class="col2"><?=$name?>|<?=$regist_day?></span>
        </li>
        <li class="row2">
            <?=$content?>
        </li>
    </ul>
    <ul class="buttons"></ul>
</body>
</html>