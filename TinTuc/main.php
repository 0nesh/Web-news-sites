<?php

	if(	isset($_GET['muc'])){
	$muc = $_GET['muc'];	
	}else{
		$muc = "";
	}	
	if ($muc == "mainleft") {
		include'mainleft.php';
	}
	elseif($muc == "thoisu"){
		include'muc/thoisu.php';
	}elseif ($muc == "taichinh") {
		include'muc/taichinh.php';
	}elseif ($muc == "giaitri") {
		include'muc/giaitri.php';
	}elseif ($muc == "thethao") {
		include'muc/thethao.php';
	}elseif ($muc == "anninh") {
		include'muc/anninh.php';
	}elseif ($muc == "khoahoc") {
		include'muc/khoahoc.php';
	}elseif ($muc == "congnghe") {
		include'muc/congnghe.php';
	}elseif ($muc == "search") {
		include'search.php';
	}

	if(isset($_GET['chitiet'])){
		$chitiet = $_GET['chitiet'];
	}else{
		$chitiet= "";
	}
	if ($chitiet) {
		include'main_content.php';
	}
	


?>