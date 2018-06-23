<?php
include_once('dbconnect.php');


$sql = "SELECT author.lastname AS 'Media', publisher.name AS 'Author'
				FROM media
				INNER JOIN author
					ON media.fk_media = author.fk_media
				INNER JOIN publisher
					ON publisher.fk_author = author.fk_media ";

$result = mysqli_query($con, $sql);

?>
<!DOCTYPE html>
<html>
<head>
	<title>BIG booksCool wheels</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="index.php">BIG books</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarText">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="mediastore.php">Our library<span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="rent.php">Book a book</a>
		      </li>
		      </ul>
		  </div>
		</nav>
	</header>

	<main>
	
	<div class="container">
		<div class="row">
		<?php
		//var_dump($row = mysqli_fetch_assoc($result));
		while ($row = mysqli_fetch_assoc($result)) { ?>
				<div class="card float-left center-block p-4 col-sm-12 col-md-6" style="width: 19rem;">
			  <!--<img class="card-img-top" src=".../100px180/" alt="Card image cap">-->
			  <!--<img class="card-img-top"src="<?php echo $features['img'] ?>">-->
				  <div class="card-body">
				    <h5 class="card-title"><?php echo $row['author_id']. " " . $row['name'] ?></h5>
				    <ul class="list-unstyled">
				    	<li><em>Author: </em><?php echo $row['Media'] ?></li>
				    	<li><em>Publisher: </em><?php echo $row['Author'] ?></li>
				    	<li><em>Title: </em><?php echo $row['media.title'] ?></li>
				    	
				    	<li><a href="rent.php" class="btn btn-primary">Book me!</a></li>
				    </ul>
				  </div>
				</div>
				<?php
		}

		?>
		</div>
	
	</main>
</body>
</html>
<?php ob_end_flush(); ?>