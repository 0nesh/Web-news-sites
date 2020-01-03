<div id="searchh">
    <?php
    $search = $_POST["search"];
    ?>
    <form method="POST">
	<h1>Tìm Kiếm Tin Tức</h1>
    <input type="text" name="search" placeholder="Search..." value="<?php echo $search ?>">
    
    <button name="btnsearch"><i class="fa fa-search"></i></button>
    <h3>Gợi Ý Cho Từ Khóa: "<?php echo $search ?>"</h3>
    </form>
    <?php
    	include 'connect_db.php';
    	if(isset($_POST['btnsearch'])){
    		$result = mysqli_query($con, "SELECT * FROM tin WHERE title LIKE '%$search%'");
    		while($row = mysqli_fetch_array($result)) {
    			$image = $row['image'];

    ?>
    <div class="product-item">
        <div class="product-img">
            <img src="<?= $row['image'] ?>" height="150px" width="250px" title="<?= $row['name'] ?>" />
        </div>
        <h6><?=$row['time'] ?></h6>
        <p><a href="trangchu.php?chitiet=<?php echo $row['id'] ?>"><?= $row['title'] ?></a></p>
    </div>
<?php } } ?>
</div>
