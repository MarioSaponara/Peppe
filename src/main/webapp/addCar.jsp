<html>
  <head>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
<body>
 <div class="col-md-4 mb-3">
	<h1>Aggiungi auto</h1>

	<form action="CarServlet" method="post">
		<p>
			Targa:<input type="TEXT" name="licensePlate" class="form-control form-control-lg"/>
		</p>
		<p>
			Nome:<input type="TEXT" name="name" class="form-control form-control-lg"/>
		</p>
		<p>
			Dimensione: <select name="size" class="form-control form-control-lg">
				<option>Small</option>
				<option>Medium</option>
				<option>Large</option>
			</select>
		</p>


		<button name="richiesta" value="addedCar" class="btn btn-lg btn-primary btn-block" style="width: 170px"/>
		Aggiungi
		</button>
	</form>

	</br>
	</br>

	<form action="CarServlet" method="post">

		<input type="submit" name="richiesta" value="Indietro" class="btn btn-lg btn-primary btn-block" style="width: 170px"/>

	</form>
	</form>
 </div>
</body>
</html>