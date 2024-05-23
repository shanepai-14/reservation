<!DOCTYPE html>
<?php
	require_once 'validate.php';
	require 'name.php';
	date_default_timezone_set('Asia/Manila');
?>
<html lang = "eng">
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
				<a class = "btn btn-info disabled"><span class = "badge"><?php echo $f_ci['total']?></span> Check In</a>
				<a class = "btn btn-warning" href = "checkout.php"><i class = "glyphicon glyphicon-eye-open"></i> Check Out</a>
				<a class = "btn btn-primary" href = "add_walkin.php"><i class = "glyphicon glyphicon-plus"></i> Add Walk In</a>
				<br />
				<br />
				<table id = "table" class = "table table-bordered">
					<thead>
						<tr>
							<th>Name</th>
							<th>Room No.</th>
							<th>Check In</th>
							<th>Stay Type</th>
							<th>Hours</th>
							<th>Days</th>
							<th>Check Out</th>
							<th>Status</th>
						
							<th>Bill</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$query = $conn->query("SELECT * FROM `transaction` NATURAL JOIN `guest` NATURAL JOIN `room` WHERE `status` = 'Check In'") or die(mysqli_query());
							while($fetch = $query->fetch_array()){
						?>
						<tr>
							<td><?php echo $fetch['firstname']." ".$fetch['lastname']?></td>
							<td><?php echo $fetch['room_type']?></td>
							
							<td><?php echo "<label style = 'color:#00ff00;'>".date("M d, Y", strtotime($fetch['checkin']))."</label>"." @ "."<label>".date("h:i a", strtotime($fetch['checkin_time']))."</label>"?></td>
							<td><?php 
							echo $fetch['stayType']
							
							?></td>
							<td><?php
							if($fetch['stayType'] == "Regular Type"){
								echo $fetch['room_no'];
							}else{
								echo "Ongoing";
							}
							 ?></td>
							<td><?php 
								if($fetch['stayType'] == "Regular Type"){
									echo $fetch['days'];
								}else{
									echo "Ongoing";
								}
							
							
							?></td>
							<?php 
 
									$checkin_date = date("M d, Y", strtotime($fetch['checkin']));
									$checkin_time = date("h:i a", strtotime($fetch['checkin_time']));	
									$combined_datetime = $checkin_date . ' ' . $checkin_time;

                                     $room_price = $fetch['price'];
									$originalTime = strtotime($fetch['checkin_time']);
									$newTime = date("h:i a",$originalTime + $fetch['room_no'] * 3600);
									$finalDate = date("M d, Y",strtotime($fetch['checkin']."+".$fetch['days']."DAYS"));
							?>
							<td><?php 
								if($fetch['stayType'] == "Regular Type"){
									echo "<label style = 'color:#ff0000;'>".$finalDate." @ ".$newTime."</label>";
								}else{
									echo "Ongoing";
								}
							
						?></td>
							<td><?php echo $fetch['status']?></td>
							<td><?php
							if($fetch['stayType'] == "Regular Type"){
								echo sprintf('Php %.2f', $fetch['bill']);
							}else{
								echo "Ongoing";
							
							}
							?></td>
							<td><center><a class = "btn btn-warning" href="checkout_query.php?transaction_id=<?php echo $fetch['transaction_id']?>&staytype=<?php echo $fetch['stayType']?>&checkoutdate=<?php echo $finalDate?>&checkouttime=<?php echo $newTime?>&room_price=<?php echo $room_price ?>&combined_datetime=<?php echo $combined_datetime?>"
 onclick = "confirmationCheckin(); return false;"><i class = "glyphicon glyphicon-check"></i> Check Out</a></center></td>
						</tr>
						<?php
							}
						?>
					</tbody>
				</table>
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
<script type = "text/javascript">
	function confirmationCheckin(anchor){
		var conf = confirm("Are you sure you want to check out?");
		if(conf){
			window.location = anchor.attr("href");
		}
	}
</script>
</html>