<?php include ("connect.php");
if (isset($_GET['room_id'])) {
    $id = mysqli_real_escape_string($conn, $_GET['room_id']);

    $query = "DELETE FROM room WHERE room_id='$id' ";
  	mysqli_query($conn, $query);
  	header('location: room.php');
}

?>