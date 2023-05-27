<%@page import="com.SportyShoesWebJV17.entity.Shoes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

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
	<%
	if (id == null) {
	%>
	<h1>Welcome on Sporty Shoes administrative portal</h1>
	<h5>Please log in to make any changes</h5>
	<%
	} else if (id.equals("admin")) {
	%>
		
	<div align="center" class="container">
		<h5>Edit an existing product</h5>
	</div>
	<div class="container">
		<form action="editShoes" method="post">

			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="form-group">
						<label for="name">Shoes ID*: </label> <input type="text" readonly="readonly"
							class="form-control" value="${shoes.sid}" id="sid" name="sid">
					</div>
					<div class="form-group">
						<label for="name">Product Name*: </label> <input type="text" readonly="readonly"
							class="form-control" value="${shoes.name}" id="name" name="name">
					</div>
					<div class="form-group">
						<label for="price">Price*: </label> <input type="number"
							class="form-control" value="${shoes.price}" id="price" name="price">
					</div>
					<div class="form-group">
						<label for="sizeEU">Size EU: </label> <input type="number"
							class="form-control" value="${shoes.sizeEU}" id="sizeEU" name="sizeEU">
					</div>
					<div class="form-group">
						<label for="type">Type: </label> 
						<select class="form-control" id="type" name="type">
							<option value=""> </option>
							<option value="sport">sport</option>
							<option value="outdoor">"outdoor"</option>
							<option value="walking">"walking"</option>
							<option value="dancing">"dancing"</option>
							<option value="fancy">"fancy"</option>
							<option value="galactic">"galactic"</option>
						</select>
					</div>
					<div class="form-group">
						<label for="genre">Genre: </label> 
						<select class="form-control" id="genre" name="genre">
							<option value=""> </option>
							<option value="Female">Female</option>
							<option value="Male">Male</option>
							<option value="Unisex">Unisex</option>
						</select>
					</div>
					<div>
						<br><input type="submit" class="btn btn-primary" value="Edit" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<%
	}
	%>
</body>
</html>