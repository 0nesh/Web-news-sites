<?php  
	include'../connect_db.php';
	$id = $_GET['chitiet'];
	$sql = "DELETE FROM tin WHERE id='".$id."' ";	
	$result = mysqli_query($con, $sql);
			if($result){
				echo "<script>alert('Xóa Thành Công!');location.href='../admin.php'</script>";
			}
?>			
