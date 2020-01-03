
<?php
session_start();
if(isset($name && $name != NULL)){

   //kiểm tra nếu có session tên us thì xóa nó đi
    unset($name);
    header("location:trangchu.php");
    echo "Bạn đã đăng xuất thành công.";   
}
?>
