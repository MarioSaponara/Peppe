<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Registration </title>

</head>

  <body>
    
      
      <div class="col-md-4 mb-3">
      <form class="form-signup" action="SignupServlet" method="post">
      <h1>Registration</h1>
      </br>
      
	  <input type="text" name = "username" class="form-control form-control-lg" id="username" class="form-control" placeholder="Username" required autofocus></br>
      
	 <input type="password" name = "password" class="form-control form-control-lg" id="inputPassword" class="form-control" placeholder="Password" required></br>
     
	  <input type="text" name = "name" class="form-control form-control-lg" id="name" class="form-control" placeholder="Name" required autofocus></br>
      
	  <input type="text" name = "surname" class="form-control form-control-lg" id="surname" class="form-control" placeholder="surname" required autofocus></br>
      
	  <input type="date" name = "birthdate" id="birthdate" class="form-control form-control-lg" class="form-control" placeholder="birthdate" required autofocus></br>
      
	  <input type="text" name = "birthplace" class="form-control form-control-lg" id="birthplace" class="form-control" placeholder="birthplace" required autofocus></br>
      
	  <input type="text" name = "address" id="address" class="form-control form-control-lg" placeholder="address" required autofocus></br>
	  
	  
	  <input type="text" name="richiesta" value="registed" hidden></p>
	  
	  
	  
      <div align="right" style="position:relative">
      <label for="handicapped" style="font-size: 20px; position:absolute; left:0">Disabile</label>
      <input type="radio" id="handicappedChoice1"
     name="handicapped" value="true">
    <label for="handicappedChoice1" style="font-size: 20px;">Si</label>

    <input type="radio" id="handicappedChoice2"
     name="handicapped" value="false">
    <label for="handicappedChoice2" style="font-size: 20px">No</label></br>
	  </div>
	  
       </br>
      <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 170px">Sign up</button></br>
      </div>
      </form>
  </body>
</html>