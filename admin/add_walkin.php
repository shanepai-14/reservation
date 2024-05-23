<!DOCTYPE html>
<?php
	require_once 'validate.php';
	require 'name.php';
?>

<style>
.badge-success{
	background-color: #00ff00!important;
}
.badge-warning{
	background-color: red!important;
}

</style>
<html lang = "en">
	<head>
		<title>Inn Reservation System</title>
		<meta charset = "utf-8" />
		<meta name = "viewport" content = "width=device-width, initial-scale=1.0" />
		<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css " />
		<link rel = "stylesheet" type = "text/css" href = "../css/style.css" />
	
	</head>
<body>
	<nav style = "background-color:rgba(0, 0, 0, 0.1);" class = "navbar navbar-default">
		<div  class = "container-fluid">
			<div class = "navbar-header">
				<a class = "navbar-brand" >Inn Reservation System</a>
			</div>
			<ul class = "nav navbar-nav pull-right ">
				<li class = "dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class = "glyphicon glyphicon-user"></i> <?php echo $name;?></a>
					<ul class="dropdown-menu">
						<li><a href="logout.php"><i class = "glyphicon glyphicon-off"></i> Logout</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class = "container-fluid">	
		<ul class = "nav nav-pills">
			<li><a href = "home.php">Home</a></li>
			<li><a href = "account.php">Accounts</a></li>
			<li class = "active"><a href = "reserve.php">Reservation</a></li>
			<li><a href = "room.php">Room</a></li>			
		</ul>	
	</div>
	<br />
	<div class = "container-fluid">	
		<div class = "panel panel-default">
			<?php
				$q_p = $conn->query("SELECT COUNT(*) as total FROM `transaction` WHERE `status` = 'Pending'") or die(mysqli_error());
				$f_p = $q_p->fetch_array();
				$q_ci = $conn->query("SELECT COUNT(*) as total FROM `transaction` WHERE `status` = 'Check In'") or die(mysqli_error());
				$f_ci = $q_ci->fetch_array();
			?>
			<div class = "panel-body">
				<a class = "btn btn-success" href = "reserve.php"><span class = "badge"><?php echo $f_p['total']?></span> Pendings</a>
				<a class = "btn btn-info" href = "checkin.php"><span class = "badge"><?php echo $f_ci['total']?></span> Check In</a>
				<a class = "btn btn-warning " href = "checkout.php"><i class = "glyphicon glyphicon-eye-open"></i> Check Out</a>
                <a class = "btn btn-primary disabled" href = "add_walkin.php"><i class = "glyphicon glyphicon-plus"></i> Add Walk In</a>
				<br />
				<br />
				<div style = "margin-left:0; margin-top:40px" >
	
				<strong ><h3 class="text-center">CHECK IN WALKIN CLIENTS</h3></strong>
				<?php
					require_once 'connect.php';
					$query = $conn->query("SELECT * FROM `room` ORDER BY `price` ASC") or die(mysql_error());
					while($fetch = $query->fetch_array()){
				?>
						<div class = "well col-md-5" style = "height:300px; width:45%; margin-right:30px" >
						<div style = "float:left;">
							<img src = "../photo/<?php echo $fetch['photo']?>" height = "250" width = "350"/>
						</div>
						<div style = "float:right; margin-right:60px;">
							<h3><?php echo $fetch['room_type']?></h3>
							<h4 style = "color:#00ff00;"><?php echo "Price: Php. ".$fetch['price'].".00"?> <br>Per 3 hours</h4>
							<br /><br /><br />
							<?php
                           $room_id = $fetch['room_id'];
						  $checkroom = $conn->query("SELECT * FROM `transaction` WHERE `room_id` = '$room_id' && `status` = 'Check In'") or die(mysqli_error());

						  $row = $checkroom->num_rows;
						  $disabled = "";
						  $atag ="";
                             if($row > 0){
								$atag = "pointer-events: none";
								$disabled = "disabled";
								?>
							<span class="badge badge-warning">Occupied</span>
                       <?php 
							 }else{
					   ?>

<span class="badge badge-success">Available</span>
                         <?php
									}
						 ?>
							<br /><br /><br />
							<a  <?php echo $disabled; ?>  style="<?php echo $atag;?>" href = "add_walkin_reserved.php?room_id=<?php echo $fetch['room_id']?>" class = "btn btn-info"><i class = "glyphicon glyphicon-list"> </i> Reserve</a>
						</div>
					</div>
				<?php
					}
				?>
		
	</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<div style = "text-align:right; margin-right:10px;" class = "navbar navbar-default navbar-fixed-bottom">
		<label>&copy; Syntax Error </label>
	</div>
</body>
<script src = "../js/jquery.js"></script>
<script src = "../js/bootstrap.js"></script>
<script src = "../js/jquery.dataTables.js"></script>
<script src = "../js/dataTables.bootstrap.js"></script>	
<script type = "text/javascript">
	$(document).ready(function(){
		$("#table").DataTable();
	});
</script>
</html>