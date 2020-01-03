<section>
    	<?php
        include 'connect_db.php';
        $totalRecords = mysqli_query($con, "SELECT * FROM `tin` WHERE keycontent='anninh'");
        
        ?>
        
            <div class="product-items">
            	<h1>Tin Tức > An Ninh</h1>
                <?php
                if($totalRecords){
                while ($row = mysqli_fetch_array($totalRecords)) {
                    ?>
                    <div class="product-item">
                        <div class="product-img">
                            <img src="<?= $row['image'] ?>" height="150px" width="350px" title="<?= $row['name'] ?>" />
                        </div>
                        <h6><?=$row['time'] ?></h6>
                        <a href="trangchu.php?chitiet=<?php echo $row['id'] ?>"><p title="<?= $row['title'] ?>"><?= $row['title'] ?></p></a>
                    </div>
                <?php }
            	}else{
                	echo "chưa có tin nào cho loại tin này";
                }
                 ?>
                
                <?php
                
                ?>
                <div class="clear"></div>
            </div>
</section>
