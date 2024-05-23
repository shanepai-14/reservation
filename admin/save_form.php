<?php
date_default_timezone_set('Asia/Manila');
	require_once 'connect.php';
	if(ISSET($_POST['add_form'])){
		$room_no = $_POST['room_no']; //hours
		$days = $_POST['days'];
		$staytype = $_POST['staytype'];
		if($staytype == "Open Time"){
			$room_no = 0;	
			$days = 0;
		} 
		$extra_bed = 0;
		$query = $conn->query("SELECT * FROM `transaction` WHERE `room_no` = '$room_no' && `status` = 'Check In'") or die(mysqli_error());
		$row = $query->num_rows;
		$time = date("H:i:s");
		if($row > 0){
			// echo "<script>alert('Room not available')</script>";
			echo "<script>alert('Room not available'); window.location.href='reserve.php';</script>";
			exit();
			// header("Location: reserve.php");
		}else{
			$query2 = $conn->query("SELECT * FROM `transaction` NATURAL JOIN `guest` NATURAL JOIN `room` WHERE `transaction_id` = '$_REQUEST[transaction_id]'") or die(mysqli_error());
			$fetch2 = $query2->fetch_array();
            
			if($days != 0){
				$subtotal  = ($fetch2['price'] * 6) * $days;
			}else{
				$subtotal  = 0 ;
			}
 

             $priceperhour = $fetch2['price'] /3;

			$sub_hours = $priceperhour *  $room_no;
			
            
			
			$total = $subtotal  + $sub_hours;
			$checkout = date("Y-m-d", strtotime($fetch['checkin']."+".$days."DAYS"));
			$conn->query("UPDATE `transaction` SET `room_no` = '$room_no', `days` = '$days', `extra_bed` = '$extra_bed', `status` = 'Check In', `stayType`='$staytype', `checkin_time` = '$time', `checkout` = '$checkout', `bill` = '$total' WHERE `transaction_id` = '$_REQUEST[transaction_id]'") or die(mysqli_error());
			header("location:checkin.php");
		}
	}
?>