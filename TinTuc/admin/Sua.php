<?php
            include'../connect_db.php';
            $id=$_GET['id'];
            
            $sql = mysqli_query($con,"SELECT * FROM tin WHERE id=$id" );

            $rows=mysqli_fetch_array($sql);
        ?>
            <form>
            <img src="<?= $rows['image'] ?>" height="150px" width="250px" title="<?= $rows['name'] ?>" />          
            <h6><?=$rows['time'] ?></h6>
            <p><?= $rows['title'] ?></p>
            <p><?= $rows['content'] ?></p>
            <p><?= $rows['keycontent'] ?></p>
            </form>