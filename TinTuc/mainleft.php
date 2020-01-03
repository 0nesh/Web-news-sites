<section>
        <?php
        include 'connect_db.php';
        $item_per_page = 8;
        $current_page = !empty($_GET['page'])?$_GET['page']:1; //Trang hiện tại
        $offset = ($current_page - 1) * $item_per_page;
        $products = mysqli_query($con, "SELECT * FROM `tin` ORDER BY `id` ASC  LIMIT " . $item_per_page . " OFFSET " . $offset);
        $totalRecords = mysqli_query($con, "SELECT * FROM `tin`");
        $totalRecords = $totalRecords->num_rows;
        $totalPages = ceil($totalRecords / $item_per_page);
        
        ?>
        <div class="tinmoi">
            <div class="tinmoi-h1"><h1>Tin Mới</h1></div>
            <?php 
            $date = date('y-m-d');          
            $now = date('y-m-d', strtotime('+1 day',strtotime($date)));
            $cenvertedTime = date('Y-m-d', strtotime('-2 day',strtotime($date)));
            $sqln = mysqli_query($con, "SELECT * FROM tin WHERE time BETWEEN '$cenvertedTime' AND '$now'");
            while ( $rows = mysqli_fetch_array($sqln)) {
            ?>
            <div class="tinmoi-tin">
            <p><?= $rows['time'] ?></p>
            <img src="<?= $rows['image'] ?>" height="150px" width="250px" title="<?= $rows['name'] ?>" />
            <p><a href="trangchu.php?chitiet=<?php echo $rows['id'] ?>"><?= $rows['title'] ?></a></p>
            </div>
            <?php } ?>

        </div>

            <div class="product-items">
             <div class="tintuc"><h1>Tin Tức </h1></div>   
                <?php
                while ($row = mysqli_fetch_array($products)) {
                ?>
                
                    <div class="product-item">
                        <div class="product-img">
                            <img src="<?= $row['image'] ?>" height="150px" width="250px" title="<?= $row['name'] ?>" />
                        </div>
                        
                        <h6><?=$row['time'] ?></h6>
                        <p><a href="trangchu.php?chitiet=<?php echo $row['id'] ?>"><?= $row['title'] ?></a></p>
                    </div>
                <?php } ?>
            <div id="pagination"><?php include"pagination.php";?></div>    
            <div class="clear"></div>
        </div>
</section>