
<div id="title">
	<span><a href="trangchu.php?muc=mainleft">19Enter</a></span>
</div>		
<div id="search">
    <?php
    error_reporting(0);
    $search = $_POST["search"];
    ?>
    <form method="POST">

    <input type="text" name="search" placeholder="Search..." value="<?php echo $search ?>">
    
    <a href="trangchu.php?muc=search"><i class="fa fa-search" ></i></a>   
    </form>
</div>
        <!--end search-->

<div id="log">
    <?php
        error_reporting(0);
        session_start();
        $kq = "";
        $name = $_SESSION['name'];
        if(!$name){
            $kq="Đăng Nhập";
        }else{
            $kq="Xin Chào ".$name;
        }
    ?>
    <div class="dangnhap">
        <ul>
            <li><a id="dn" href="dangnhap.php"><?php echo $kq; ?></a>
            <ul>
                <li class="drop">
                    <form method="POST"><a href=""><button name="dx">Đăng Xuất</button></a></form></li>
                <?php
                if(isset($_POST['dx'])){
                    if(!$name){
                        echo "<script>alert('Bạn Chưa Đăng Nhập!');</script>";
                    }
                    else{
                        //kiểm tra nếu có session tên us thì xóa nó đi
                        unset($_SESSION['name']);
                        echo "<script>alert('Đăng Xuất Thành Công!');</script>";
                        header("location:trangchu.php");
                    }
                   
                }
                ?>
            </ul>
            </li>
        </ul>

    </div>

</div>


                
                
        