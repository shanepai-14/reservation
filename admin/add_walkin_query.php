<?php
	require_once 'connect.php';
	date_default_timezone_set('Asia/Manila');
	if(ISSET($_POST['add_guest'])){
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$address = $_POST['address'];
		$contactno = $_POST['contactno'];
		$checkin = $_POST['date'];
		$staytype = $_POST['staytype'];
		$room_no = $_POST['room_no']; //hours
		$days = $_POST['days'];
		if($staytype == "Open Time"){
			$room_no = 0;	
			$days = 0;
		} 
		 
		$room_id = $_REQUEST['room_id'];
		$room_price = $conn->query("SELECT * FROM `room` WHERE `room_id` = '$room_id'") or die(mysqli_error());
		$fetchprice = $room_price->fetch_array();

		$conn->query("INSERT INTO `guest` (firstname, middlename, lastname, address, contactno) VALUES('$firstname', '$middlename', '$lastname', '$address', '$contactno')") or die(mysqli_error());

		$query = $conn->query("SELECT * FROM `guest` WHERE `firstname` = '$firstname' && `lastname` = '$lastname' && `contactno` = '$contactno'") or die(mysqli_error());

		$fetch = $query->fetch_array();
		$query2 = $conn->query("SELECT * FROM `transaction` WHERE `checkin` = '$checkin' && `room_id` = '$_REQUEST[room_id]' && `status` = 'Check In'") or die(mysqli_error());
		$row = $query2->num_rows;
		date_default_timezone_set('Asia/Manila'); 
		$currentTime = date('H:i:s');
		
		$today = date('Y-m-d');
		if($checkin != $today){
				echo "<script>alert('$checkin $today')</script>";
			}else{
				if($row > 0){
					echo "<script>alert('Room is Occupied')</script>";
							$q_date = $conn->query("SELECT * FROM `transaction` WHERE `status` = 'Pending'") or die(mysqli_error());
							while($f_date = $q_date->fetch_array()){
								echo "<ul>
										<li>	
											<label class = 'alert-danger'>".date("M d, Y", strtotime($f_date['checkin']."+8HOURS"))."</label>	
										</li>
									</ul>";
							}
					
				}else{	
						if($staytype){
							if($guest_id = $fetch['guest_id']){
							
								$price = $fetchprice['price'];
	
								if($days != 0){
									$subtotal  = ($fetchprice['price'] * 6) * $days;
								}else{
									$subtotal  = 0;
								}
								$priceperhour = $fetchprice['price'] / 3;
					
								$sub_hours = $priceperhour * $room_no;
								
								$total = $subtotal  + $sub_hours;
	
								$result = $conn->query("INSERT INTO `transaction`(guest_id, room_id, status, checkin,checkin_time,room_no,extra_bed,days,bill,stayType) VALUES('$guest_id', '$room_id', 'Check In', '$checkin','$currentTime','$room_no',0,'$days','$total','$staytype')") or die(mysqli_error());
								if($result){
									echo "<script>alert('Success'); window.location.href='checkin.php';</script>";
									// header("location:checkin.php");
									exit();
								}else{
									die("Error: " . $conn->error);
								}
								
							}else{
								echo "<script>alert('Error Javascript Exception!')</script>";
							}
					
				}	
			}	
	}	}
?>