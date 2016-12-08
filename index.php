<?php
	include_once("php/functions.php");
	//echo $username;
?>
<!DOCTYPE html>
<html>
<head>
	<title>matchmaking demo</title>
	<link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<link rel=stylesheet href="bower_components/font-awesome/css/font-awesome.min.css">
	<link rel=stylesheet href="css/style.css">
	<link rel=stylesheet href="css/profile.css">
	<script type="text/javascript" src="bower_components/push.js/push.min.js"></script>
	<script src="js/insertmatch.js"></script>
</head>
<body>
	<div class="container-fluid">
		<?php getAUserProfile(); ?>

		<div class="row hidden">
			<div class="col-lg-12">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>#</th>
                <th>Name</th>
                <th>City</th>
                <th>Email</th>
                <th>Phone</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
              	getAllUsername ();
              ?>
            </tbody>
          </table>
        </div>
		</div>
	</div>
</body>
</html>
