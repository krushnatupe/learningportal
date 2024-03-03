<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Learning Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
      
      <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

    <section class="vh-100 mt-5">
        <div class="container-fluid h-custom">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                        class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                
                    <form method="post" action="signup">
                        <h3 class="mb-3">Sign Up</h3>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="name" id="name" placeholder="John Doe" required>
                            <label for="name">Your Name</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                            <label for="email">Your Email</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="pass" id="pass" placeholder="Password" required>
                            <label for="pass">Password</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" name="re-pass" id="re-pass" placeholder="Repeat Password" required>
                            <label for="re-pass">Repeat your password</label>
                        </div>
                        <div class="form-check d-flex mb-4">
                            <input class="form-check-input" type="checkbox" value="" id="terms">
                            <label class="form-check-label" for="terms">
                                I agree to the <a href="#">Terms of Service</a>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Register</button>
                        <p class="text-center mt-3">Already have an account? <a href="login.jsp" class="link-primary">Login</a></p>
                    </form>
                </div>
            </div>
        </div>

    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "success"){
			swal("Congratulations!","account created succesfully","success");
		}
		else if(status == "Invalid_name"){
			swal("Sorry","Please enter your name","error");
		}
		else if(status == "Invalid_email"){
			swal("Sorry","Please enter valid email","error");
		}
		else if(status == "Invalid_pass"){
			swal("Sorry","Please set your password","error");
		}
		else if(status == "nomatch"){
			swal("Sorry","Password not match","error");
		}
		else if(status == "User_exist"){
			swal("Sorry","You have already registered. Please Login.","error");
		}
	</script>
	
</body>

</html>