<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Tin Tức</title>
	<link rel="stylesheet" href="css/style1.css" media="all">
     <!-- Font-Awesome-Icons-CSS -->
    <link href="//fonts.googleapis.com/css?family=Snippet" rel="stylesheet"><!--online fonts-->
	<script src="js/vendor/prefixfree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="bootsrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/9ec5d6fe58.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
</head>
<body>
	<?php include 'connect_db.php'; ?>
<div id="container">
	<div id="header">
        <div id="top">
		<?php include'top.php'; ?>
        </div>
        <div class="clear"></div>
	</div>

	<div id="content">
        <?php include'menu.php'; ?>
        <div id="main_right">
        <?php include'mainright.php'; ?>
        <div class="clear"></div>
        </div>
		<div id="main_left">
        <section id=content_columns>
        <h1>Tin Hot </h1>

        <div class="left">
            <?php
            include 'connect_db.php';
            $idtin=$_GET['chitiet'];
            $sql = mysqli_query($con, "SELECT * FROM `tin` ORDER BY comment DESC LIMIT 0,8");
            
            while ($row = mysqli_fetch_array($sql)) {
            ?>
        <div class="slide">
        <div id="demo" class="carousel slide" data-ride="carousel"> 
        <div class="carousel-inner">
        <img class="mySlides" src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" width="890" height="450">
        <div class="content-slide-title">
            <div class="carousel-caption">
            <h5><?= $row['name'] ?></h5>
            <small><?= $row['title'] ?></small>
            </div>
        </div>
        </div>
        </div>
        <?php } ?>
        <div class="prev-next">
        <a class="carousel-control-prev " href="#demo" data-slide="prev" onclick="plusDivs(-1)">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next " href="#demo" data-slide="next" onclick="plusDivs(+1)">
            <span class="carousel-control-next-icon"></span>
        </a>
        </div> 
        </div>
        <script type="text/javascript">
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) {slideIndex = 1}
            if (n < 1) {slideIndex = x.length} ;
            for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex-1].style.display = "block";
        }

        var slideIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > x.length) {slideIndex = 1}
        x[slideIndex-1].style.display = "block";
        setTimeout(carousel, 3000); // Change image every 2 seconds
        }
        </script>
        </div>
        
        <div class="clear"></div>
        </section>

            <?php 
            include'main.php';
            ?>
		</div>  
        
		<div class="clear"></div>
	</div>

	
</div>
<div id="footer">
        <p>Trịnh Xuân Phú</p>
        <p>@ nocopyright</p>
    </div>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>