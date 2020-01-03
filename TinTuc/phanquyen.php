<?php
    session_start();
	if( isset($_POST["submit"]))
	{
	$user=$_POST['user'];
	$pass=$_POST['pass'];

	include'connect_db.php';
		//mysqli_set_charset($conn,'utf8');
	$sql="SELECT * from 'account' where 'name' = '".$user."', 'pass' ='".$pass."'"; //khai báo biến $sql lưu câu lệnh $sql
	$query = mysqli_query($con,$sql); //thực hiện câu lệnh sql
		
	if($cap = mysqli_fetch_object($query))
		{
			header("location:trangchu.php?role=$cap->role");		//Truyền và nhận biến qua trình duyệt bởi phương thức get
		}
		else
		{
			echo "<script>alert('Tên Đăng Nhập hoặc Mật Khẩu không đúng!');</script>";
		}
	}	                           	
								$level = $_GET['level'];
								if( $level == 3 )
								{
									$loaiTK = " Guest";
								}
								else if ( $level == 2 )
								{
									$loaiTK = " Censor";
								}
								else if( $level == 1 )
								{
									$loaiTK = " Admin";
								}

                            	$sqlacc ="SELECT * from account";
								$kq = mysqli_query($con, $sqlacc);
				 				while ($row = mysqli_fetch_array($kq)) 
				 				{
				 					if( $level <= 3 ) //user cấp 3
									{			
										if( $level <= 2 ) //user cấp 2
										{
											echo "<td>"."<a href ='them.php?&role=$level'>Thêm</a>"."</td>";
											if ( $level == 1 ) //user cấp 1
										{
											echo "<td>"."<a href = 'sua.php?&role=$level'>Sửa</a>"."</td>";
											echo "<td>"."<a href = 'xoa.php?&role=$level'>Xóa</a>"."</td>";
								}
							}
						}
						echo "</tr>";
					} 
                            	?>