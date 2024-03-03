<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>

	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Learning Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  
  		
    
        <div class="container-fluid">
        <div class="row">

            <!-- Bootstrap Carousel -->
            <div class="col-lg-6 d-none d-lg-block">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="testqwj.jpg" class="d-block w-100" alt="Feature 1">
                        </div>
                        <div class="carousel-item">
                            <img src="testqwj.jpg" class="d-block w-100" alt="Feature 2">
                        </div>
                        <div class="carousel-item">
                            <img src="testqwj.jpg" class="d-block w-100" alt="Feature 3">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Login Form -->
            <div class="col-lg-6">
                <div class="d-flex flex-column align-items-center justify-content-center vh-100">
                    <form method="post" action="login" class="w-75">
                        <h3 class="mb-3">Login to your account</h3>
                        <!-- Email input -->
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="uemail" id="uemail" placeholder="name@example.com" required>
                            <label for="uemail">Email address</label>
                        </div>
                        <!-- Password input -->
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="upass" id="upass" placeholder="Password" required>
                            <label for="upass">Password</label>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                        <p class="mt-2">Don't have an account? <a href="signup.jsp" class="link-primary">Register</a></p>
                        <a href="#!" class="text-body">Forgot password?</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "failed"){
			swal("Sorry!","You entered wrong details","error");
		}
		else if(status == "Invalid_email"){
			swal("Sorry!","Invalid Email","error");
		}
		else if(status == "Invalid_password"){
			swal("Sorry!","Invalid Password","error");
		}
	</script>
</body>

</html>