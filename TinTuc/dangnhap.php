

	<!--đăng nhập-->

<div id=dangnhap>
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/style.css" media="all">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<!-- //css files -->
<!-- web-fonts -->
<!-- //web-fonts -->
<style type="text/css">
        span.icon1 {
            top: 12%;
        }
        span.icon2 {
            top: 28%;
        }
    </style>

<?php
	session_start();
	include 'connect_db.php';


	if(isset($_POST['submit'])){
		$email = $_POST['email'];
		$password = $_POST['Password'];
		$sql = "SELECT * FROM account WHERE email='".$email."' AND pass='".$password."'";
		$result = mysqli_query($con, $sql);

		

		if(mysqli_num_rows($result)){	
			while($row = mysqli_fetch_array($result)){
				$_SESSION['name'] = $row['name'];
				$_SESSION['level'] = $row['level'];
				if($_SESSION['level']==1){
				header("location:admin.php");
				}else{
				header("location:trangchu.php");
				}
			}
			
		}else{
		echo "<script>alert('Đăng Nhập Thất bại!Email Hoặc Mật Khẩu không Chính Xác!);</script>";
		}
	}
	


?>

<div data-vide-bg="video/keyboard">
	<div class="main-container">
		<!--header-->
		<div class="header-w3l">
			<h1>ĐĂNG NHẬP TÀI KHOẢN</h1>
		</div>
		<!--//header-->
		<!--main-->
		<div class="main-content-agile">
			<div class="w3ls-pro">
				<h2>ĐĂNG NHẬP</h2>
			</div>
			<div class="sub-main-w3ls">	
				<form action="#" method="post">
					<input placeholder="Nhập Email" name="email" type="email" required="">
					<span class="icon1"><i class="fa fa-envelope" aria-hidden="true"></i></span>
					<input  placeholder="Nhập Mật Khẩu" name="Password" type="password" required="">
					<span class="icon2"><i class="fa fa-unlock-alt" aria-hidden="true"></i></span>
					<div class="checkbox-w3">
						<span class="check-w3"><input type="checkbox" />Nhớ</span>
						<a href="#">Quên Mật Khẩu?</a>
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
					<a href="register.php">Đăng Ký</a>
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
</div>