<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Tin Tức</title>
	<link rel="stylesheet" href="css/style1.css" media="all">
     <!-- Font-Awesome-Icons-CSS -->
    <link href="//fonts.googleapis.com/css?family=Snippet" rel="stylesheet"><!--online fonts-->
	<script src="js/vendor/prefixfree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="bootsrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/9ec5d6fe58.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style type="text/css">

    </style>
</head>
<body>
	<?php include 'connect_db.php'; ?>
<div id="container">
	<div id="header">
        <div id="top">
		<div id="title">
    <span><a href="trangchu.php?muc=mainleft">19Enter</a></span>
</div>      
<div id="search">
    <input type="text" name="timkiem" placeholder="Search...">
    <a href=""><i class="fa fa-search"></i></a>
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

                   //kiểm tra nếu có session tên us thì xóa nó đi
                unset($_SESSION['name']);
                header("location:trangchu.php");
                }
                ?>
            </ul>
            </li>
        </ul>

    </div>

</div>

        </div>
        <div class="clear"></div>
	</div>

	<div id="content">
        <div class="add"><strong><a href="admin/Them.php">Thêm Bài Viết</a></strong></div>
        <?php
            
            $sql = mysqli_query($con,"SELECT * FROM tin");
            while($rows=mysqli_fetch_array($sql)){
        ?>
        <div class="product-item">
                        <div class="product-img">
                            <img src="<?= $rows['image'] ?>" height="150px" width="250px" title="<?= $rows['name'] ?>" />
                        </div>
                        
                        <h6><?=$rows['time'] ?></h6>
                        <p><a href=""><?= $rows['title'] ?></a></p>
                     
                        <a href="admin/xoa.php?chitiet=<?php echo $rows['id'] ?>">Xóa</a>
                        
                    </div>
                <?php } ?>
	</div>
    
	<div id="footer">
		<p>Trịnh Xuân Phú</p>
		<p>@ nocopyright</p>
		<div class="clear"></div>
	</div>
</div>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>