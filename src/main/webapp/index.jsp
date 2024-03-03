<% 
	if(session.getAttribute("name")== null){
		response.sendRedirect("login.jsp");
	}	
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learning Portal</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Learning Portal</a>
        <div class="navbar-nav mx-auto">
            <div class="nav-item">
                <span class="navbar-text">Welcome, <%= session.getAttribute("name") %></span>
            </div>
        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user"></i> My Profile
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#"><i class="fas fa-user-circle"></i> Profile</a>
                        <a class="dropdown-item" href="#"><i class="fas fa-book-open"></i> My Courses</a>
                        <a class="dropdown-item" href="#"><i class="fas fa-chart-line"></i> My Performance</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="Logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <header class="py-5 bg-light text-center">
        <div class="container">
            <h1>Welcome to Our Learning Portal</h1>
            <p>Explore our programming courses to boost your skills.</p>
        </div>
    </header>

    <div class="container mt-5">
        <h2 class="mb-4 text-center">Available Courses</h2>
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="card h-100">
                    <img src="https://betanews.com/wp-content/uploads/2016/11/C-language.jpg" class="card-img-top" alt="C Programming">
                    <div class="card-body">
                        <h5 class="card-title">C Programming</h5>
                        <p class="card-text">Learn the fundamentals of C programming, from basics to advanced concepts.</p>
                        <a href="#" class="btn btn-primary">Explore Course</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="card h-100">
                    <img src="https://www.allassignmenthelp.com/blog/wp-content/uploads/2019/03/Java-Programming-4-1.png" class="card-img-top" alt="Java Programming">
                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Dive into Java programming with our comprehensive course for all levels.</p>
                        <a href="#" class="btn btn-primary">Explore Course</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="mt-auto bg-primary text-white text-center py-3">
        <p>© 2024 Learning Portal. All rights reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>

