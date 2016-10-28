<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
    String userName = (String)session.getAttribute("userName");
    
    if (userName == null) {
    	response.sendRedirect("login.jsp");
    }
    %>

<html><head>
  <link rel="stylesheet" href="CSS/home.css" type="text/css">
</head>

<body onload="updateYear();">


<div id="header">
  <div id="nav" class="nav">
    <div id="home" class="navitem"><a href="home.jsp">Home</a></div>
    <div id="Products" class="navitem"><a href="Products.jsp">Products</a></div>
    <div id="about" class="navitem"><a href="about.jsp">About</a></div>
    <div id="contact" class="navitem"><a href="contact.jsp">Contact</a></div>
    <div>Welcome <%=userName %></div>
    
  </div>
</div>

<div id="left">
  <ul class="leftnav">
    <li><a href="home.jsp">Home</a></li>
    <li><a href="products.jsp">Products</a></li>
    <li><a href="about.jsp">About</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="logout.jsp">Logout</a></li>
  </ul>
</div>

<div id="main">

<h1>Your Details</h1>
		
		<form action ="processform.jsp" method="post" onsubmit="return validate();">
		
			FirstName:<input type = "text" name = "firstName" id = "firstName"> <br>
			
			Password: <input type = "password" name = "password" id = "password"> <br>
			
			
			Vegetarian:<input type = "checkbox" name = "vegetarian"> <br>
			
			Favourite Colour: 
			<select name = "favouriteColour" id = "favouriteColour">
				<option value = "red">Red</option>
				<option value = "green">Green</option>
				<option value = "blue">Blue</option>			
			</select>
			<br>
			
			
			<input type="submit" name="submit" value="submit" id = "submit">
		
		</form>

</div>

<div id="footer">&copy; <span id="year">2014 </span> Revenue Commissioners</div>


<script src="JS/functions.js"></script>

</body>


</html>
