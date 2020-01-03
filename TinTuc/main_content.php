<div id="chitiettin">
    <?php
    include ('connect_db.php');
	$id = $_GET['chitiet'];
    $sql = mysqli_query($con, "SELECT * FROM `tin` WHERE id = $id ");

    $row = mysqli_fetch_array($sql);
    $tag = $row['tag'];
    ?>	
    	<h1>Nội Dung</h1>
        <p>view: <?=$row['view']?></p>
        <?php
            $sql1 = mysqli_query($con, "UPDATE tin SET view = view+1 WHERE id = $id ");
        ?>
        
        <p class="fa fa-tags"> <a href="" style="color: blue;"><?= $row['tag'] ?></a></p>
        <?php
            $sql1 = mysqli_query($con, "SELECT * FROM `tin` WHERE tag LIKE '%$tag%' AND id<>$id ");
            while ($rows = mysqli_fetch_array($sql1)) {               
            ?>
                <li><a href="trangchu.php?chitiet=<?php echo $rows['id'] ?>" style="color: blue;"><?=$rows['title']?></a></li>
        <?php } ?>

		<strong><?=$row['title']?></strong>
        <div class="tin-img"><img src="<?= $row['image'] ?>" height="300px" width="500px" ></div>        
        <h6><?=$row['time']?></h6>
        <p><?=$row['content']?></p>
        
		<hr>
<!-----------Comment------------>
<div class="well">
	<?php
	if(isset($_POST['comment'])){
            if(!$name){
                        echo "<script>alert('Bạn Chưa Đăng Nhập!');</script>";
                    }
                    else{
                    	$content = $_POST['content-comment'];
                        $timeCMT = date('Y-m-d');
                        
                        if(isset($_POST['comment'])){
                        	$sqlc = mysqli_query($con,"INSERT INTO comment VALUES('".$name."', '".$content."', '".$timeCMT."', '".$id."')");
                            $sqlcomment = mysqli_query($con, "UPDATE tin SET comment = comment+1 WHERE id = $id ");
                        	

                        }
                    }
                   
                }
	?>
	<h4>Viết Bình Luận...<i class="fa fa-pencil"></i></h4>
<form method="POST">
    <div class="form-group">
      <textarea class="form-control" rows="4" cols="70" name="content-comment"></textarea>
    </div>
    <div>
    	<button class="btn btn-primary" name="comment">Gửi</button>
    </div>
    <?php
    		$sqlcm = mysqli_query($con,"SELECT * FROM comment WHERE idcomment = '".$id."'");
			while ($result = mysqli_fetch_array($sqlcm)) {	
		?>
    <div class="show-comment">	
	<table>		
		<tr>
			
			<td><h6><?= $result['timecomment'] ?></h6></td>			
		</tr>
		<tr>
			<td><h5><?= $result['username'] ?> :  </h5></td>
			<div id="contentCMT"><td><p><?= $result['contentcomment'] ?></p></td></div>
		</tr>		
	</table>
    </div>
    <?php } ?>
 </form>
 </div>	

<div class="lienquan">
   	<h1>Tin Liên Quan</h1>
	<?php
	
	$_sql = mysqli_query($con, "SELECT * FROM `tin` WHERE id <> $id AND keycontent='".$row['keycontent']."' ORDER BY RAND() LIMIT 0,3 ");
		//return mysqli_query($con, $_sql);
	
	
	while ($row_tincungloai = mysqli_fetch_array($_sql)) {
	?>
		<div class="product-tin">
		<div class="product-tin-img">
        <a href="trangchu.php?chitiet=<?php echo $row_tincungloai['id'] ?>"><img src="<?= $row_tincungloai['image'] ?>" height="150px" width="250px" title="<?= $row_tincungloai['name'] ?>" /></a>   
        </div>        
        <h6><?=$row_tincungloai['time'] ?></h6>
        <a href="trangchu.php?chitiet=<?php echo $row_tincungloai['id'] ?>"><?= $row_tincungloai['title'] ?></a>
		</div>
	<?php	
	}
	?>
	</div> 
</div>