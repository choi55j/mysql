<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script>
        function check_input() {
            if (!document.member.pass.value){
                alert("비밀번호확인을 입력하세요!");
                document.member.pass_confirm.focus();
                return;
            }
            if (!document.member.name.value){
                alert("이름을 입력하세요!");
                document.member.name.focus();
                return;
            }
            if (!document.member.email.value){
                alert("이메일을 입력하세요!");
                document.member.email.focus();
                return;
            }
            if (!document.member.pass.value !=
                document.member.pass_confirm.value){
                alert("비밀번호가 일치하지 한습니다./n다시 입력해주세요!");
                document.mamber.pass.focus();
                document.member.pass.select();
                return;
            }
            document.member.submit();
        }
        function reset_form() {
            document.member.id.value = "";
            dicument.mamber.pass.value = "";
            document.member.pass_confirm.value = "";
            document.member.name.value = "";
            document.member.email.value = "";
            document.member.id.focus();
            return;
        }
    </script>
</head>
<body>
    
</body>
</html>