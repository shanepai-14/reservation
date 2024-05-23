<?php
	date_default_timezone_set('Asia/Manila');
	require_once 'connect.php';
	$time = date("H:i:s", strtotime("+8 HOURS"));
	$current_time = date("H:i:s");
	$current_date = date("Y-m-d");
	$staytype =$_GET['staytype'];
	$checkoutdate =$_GET['checkoutdate'];
	$checkouttime =$_GET['checkouttime'];
	$room_price = $_GET['room_price'];

	$combined_datetime =  $_GET['combined_datetime'];
	$current_datetime = date("Y-m-d H:i:s");
	if($staytype == 'Regular Type'){
		$conn->query("UPDATE `transaction` SET `checkout_time` = '$checkouttime',`checkout`='$checkoutdate', `status` = 'Check Out' WHERE `transaction_id` = '$_REQUEST[transaction_id]'") or die(mysqli_error());
		header("location:checkout.php");
	}else{
		$perhour = $room_price  / 3;
         $timenow =   new DateTime($current_datetime);
		//  $timenow->modify('+1 day')->modify('+2 hours');
		 $coverted = new DateTime($combined_datetime);

		$interval = $coverted->diff($timenow);
		$days = $interval->days;
		$hours = $interval->h + $interval->i / 60;
		
        $hourprice = $perhour *$hours;
        $daysprice = ($perhour*24) * $days;
		$finalbill = $hourprice+$daysprice;

		$conn->query("UPDATE `transaction` SET `checkout_time` = '$current_time',`days` = '$days', `room_no` = '$hours',`checkout`='$current_date',`status` = 'Check Out' ,`bill` = '$finalbill' WHERE `transaction_id` = '$_REQUEST[transaction_id]'") or die(mysqli_error());
		echo '<script>
		var bill = "' . $finalbill . '";
		alert("Final Bill: " + bill);
		window.location.href = "checkout.php";
	</script>';
		
	}
	
	
?>