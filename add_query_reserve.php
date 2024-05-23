<?php

date_default_timezone_set('Asia/Manila');
	require_once 'admin/connect.php';
	if(ISSET($_POST['add_guest'])){
		$firstname = $_POST['firstname'];
		$middlename = $_POST['middlename'];
		$lastname = $_POST['lastname'];
		$address = $_POST['address'];
		$contactno = $_POST['contactno'];
		$checkin = $_POST['date'];
		$conn->query("INSERT INTO `guest` (firstname, middlename, lastname, address, contactno) VALUES('$firstname', '$middlename', '$lastname', '$address', '$contactno')") or die(mysqli_error());
		$query = $conn->query("SELECT * FROM `guest` WHERE `firstname` = '$firstname' && `lastname` = '$lastname' && `contactno` = '$contactno'") or die(mysqli_error());
		$fetch = $query->fetch_array();
		$query2 = $conn->query("SELECT * FROM `transaction` WHERE `checkin` = '$checkin' && `room_id` = '$_REQUEST[room_id]' && `status` = 'Pending'") or die(mysqli_error());
		$row = $query2->num_rows;
		if($checkin < date("Y-m-d", strtotime('+8 HOURS'))){	
				echo "<script>alert('Must be present date')</script>";
			}else{
				if($row > 0){
					echo "<div id='toast-container' class='toast-container'>
        <div class='toast'>
            <label style='color:#ff0000;'>Not Available Date</label><br />";
$q_date = $conn->query("SELECT * FROM `transaction` WHERE `status` = 'Pending'") or die(mysqli_error());
while($f_date = $q_date->fetch_array()){
    echo "<ul>
            <li>    
                <label class='alert-danger'>".date("M d, Y", strtotime($f_date['checkin']."+8 HOURS"))."</label>    
            </li>
          </ul>";
}
echo "  </div>
      </div>";
				}else{	
						if($guest_id = $fetch['guest_id']){
							$room_id = $_REQUEST['room_id'];
							$conn->query("INSERT INTO `transaction`(guest_id, room_id, status, checkin) VALUES('$guest_id', '$room_id', 'Pending', '$checkin')") or die(mysqli_error());
							// header("Location:reply_reserve.php");
							echo "<script type='text/javascript'>window.location.href = 'reply_reserve.php';</script>";
						}else{
							echo "<script>alert('Error Javascript Exception!')</script>";
						}
				}	
			}	
	}	

?>
<script>
    // JavaScript to make the toast disappear after 5 seconds
    window.onload = function() {
        setTimeout(function() {
            var toast = document.getElementById('toast-container');
            toast.style.opacity = '0';
            setTimeout(function() {
                toast.style.display = 'none';
            }, 600); // Wait for the fade-out transition to complete
        }, 5000); // Show the toast for 5 seconds
    };
</script>

<style>
			.toast-container {
        position: fixed;
        top: 20px;
        right: 20px;
        z-index: 1000;
    }
    .toast {
        background-color: #fff;
        padding: 15px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: opacity 0.6s ease-out;
    }
    .alert-danger {
        color: #ff0000;
    }
</style>