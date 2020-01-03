<div id=dangky>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<!-- //css files -->
<!-- web-fonts -->
<!-- //web-fonts -->


<?php
	session_start();
	include 'connect_db.php';
	if(isset($_POST['submit'])){
		$email = $_POST['email'];
		$password = $_POST['Password'];
		$uname = $_POST['name'];
		$sql = "SELECT * FROM account WHERE email = '".$email."'";
		$query = mysqli_query($con, $sql);
		$rows=mysqli_fetch_array($query);
		if($rows['email']==$email){			
			echo "<script>alert('Email Được Đăng Ký Cho Tài Khoản Khác! Nhập Email Mới!');</script>";
		}else{
			$sql1 = "INSERT INTO account(name,email,pass,level) VALUES('".$uname."','".$email."', '".$password."', '3') ";
			$result = mysqli_query($con, $sql1);
			if($result)
				echo "<script>alert('Đăng Ký Tài Khoản Thành Công!');</script>";
		}
	}
	


?>

	<!--đăng ký-->

<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Form</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->

<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Snippet" rel="stylesheet"><!--online fonts-->
<!-- //web-fonts -->
</head>
<body>
<div data-vide-bg="video/keyboard">
	<div class="main-container">
		<!--header-->
		<div class="header-w3l">
			<h1>ĐĂNG KÝ TÀI KHOẢN</h1>
		</div>
		<!--//header-->
		<!--main-->
		<div class="main-content-agile">
			<div class="w3ls-pro">
				<h2>ĐĂNG KÝ</h2>
			</div>
			<div class="sub-main-w3ls">	
				<form action="" method="post">
					<input placeholder="Nhập Email" name="email" type="email" required="">
					<span class="icon1"><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input placeholder="Tên Tài Khoản" name="name" type="text" required="">
					<span class="icon2"><i class="fa fa-male" aria-hidden="true"></i></span>
					<input  placeholder="Nhập Mật Khẩu" name="Password" type="password" required="">
					<span class="icon3"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<input  placeholder="Nhập Lại Mật Khẩu" name="re-Password" type="password" required="">
					<span class="icon4"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<div class="checkbox-w3">
						
						<div class="clear"></div>
					</div>
					<div class="social-icons"> 
							<ul>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li> 
							</ul>  
						</div>
					<input type="submit" name="submit" value=""><br><br>
					<a href="trangchu.php">Về Trang Chủ</a>
				</form>
			</div>
		</div>
		<!--//main-->
		<!--footer-->
		<div class="footer">
			
		</div>
		<!--//footer-->
	</div>
</div>
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script><!--common-js-->
<script src="js/jquery.vide.min.js"></script><!--video-js-->
<!-- //js -->
</body>
</html>