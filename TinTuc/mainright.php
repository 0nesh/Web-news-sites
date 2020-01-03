<style type="text/css">
    h1 {
        color: red;
    }
</style>
<div><h1>Tin Xem Nhiều</h1></div>
<?php

    include 'connect_db.php';
    $sql = mysqli_query($con, "SELECT * FROM `tin` ORDER BY view DESC LIMIT 0,5");

    while ($row = mysqli_fetch_array($sql)) {
    ?>
	<div class="pro">
        <img src="<?= $row['image'] ?>" height="20px" width="20px" >
        <h6><?=$row['view']?> Lượt Xem</h6>
        <h6><?=$row['time']?></h6>
        <p><a href="trangchu.php?chitiet=<?php echo $row['id'] ?>"><?=$row['title']?></a></p>
    </div>
    <?php } ?>
