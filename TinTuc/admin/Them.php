<?php  
	include'../connect_db.php';
	error_reporting(0);
	$name = $_POST['ten'];
	$time = date("Y/m/d");
	$title = $_POST['title'];
	$content = $_POST['content'];
	$keycontent = $_POST['keycontent'];
	
			if(isset($_POST['submit'])){
				$image = $_FILES['image']['name'];
			$target = "img/".basename($image);
			mysqli_query($con,"INSERT INTO tin(name, image, title, time, content, keycontent) VALUES('".$name."', '".$image."', '".$title."', '".$time."', '".$content."','".$keycontent."') ");
			if(move_uploaded_file($_FILES['image']['tmp_name'], $target)){

				echo "<script>alert('Đã Thêm.') </script>";
			}
			else{
				echo "<script>alert('Thêm không thành công!') </script>";
			}
		
	}
?>

<form method="POST">
	<table>
		<tr>
			<td>Tên Bài Viết</td>
			<td><input type="text" name="ten"></td>
		</tr>
		<tr>
			<td>Ảnh Minh Họa</td>
			<td><input type="file" name="image"></td>
		</tr>
		<tr>
			<td>Tiêu Đề</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>Nội Dung</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td>Mục</td>
			<td><input type="text" name="keycontent"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="submit" value="Thêm"></td>
		</tr>
		<a href="../admin.php">Quay Lại</a>
	</table>
</form>