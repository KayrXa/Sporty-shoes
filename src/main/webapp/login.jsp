<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
></script>

</head>
<body>
	<!--  Java inside HTML 
 -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">SS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index">Home</a></li>
					<%
					String id = (String) session.getAttribute("id");
					if (id == null) {
					%>
					<li class="nav-item"><a class="nav-link" href="login">Login</a>
					</li>
					<%
					}
					else if (id.equals("admin")) {
					%>
					<li class="nav-item"><a class="nav-link" href="shoes">View Shoes</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="users">View Users</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="report">Purchase Report</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
					</li>
					<%
					}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div>
			<div class="wrapper fadeInDown">
				<div id="formContent">
					<div class="fadeIn first">
						<h2 class='sign'>Log In</h2>
					</div>
					<form action="login" method="POST">
						<input type="text" id="login" class="fadeIn second" name="username"
							placeholder="Username"/> 
						<input type="password" id="password" class="fadeIn third" name="password"
							placeholder="Password" /> 
						<input type="submit" class="fadeIn fourth" value="Log In" />
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>