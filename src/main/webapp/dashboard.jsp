<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="https://st.depositphotos.com/1005920/1832/i/950/depositphotos_18322691-stock-photo-taxi-green-glossy-icon-on.jpg">
    <meta charset="ISO-8859-1">
<title>Dashboard</title>



<style>
	.navigator{
		background:black;
		background-color: rgb(0,0,0,0.95);
		color: #FFFFFF ;
		position: fixed;
		top: 0px;
		width: 100%;
    
    }
	.navigator a{
		color:#ffffff;
		text-decoration: none;
		font-size: 25px;
		margin-left:2%;
		padding: 14px 16px;
		display: block;
		float: left;
	}
	.navigator a:hover{
		color:black;
		background: #0ae227;
		border-radius: 10px;
	}
	body{
		background-image:linear-gradient(rgba(0,0,0,0.7), rgba(255,255,255,0.7)),url("background\(dashboard\).png");
		background-size:1550px 800px;
	}
	h1{
		font-size: 50px;
		font-family: sans-serif;
		margin-top: 150px;
		color: #82f090;
		text-align: center;	
	}
	.login-form .button {
		    margin-top: 150px;
			height: 100px;
			width:250px;
			background-color:#0ae227;
			border-radius: 20px;
			font-weight: bold;
			font-family: sans-serif;
			font-size: 20px;
			
		
	}
	.login-form .button:hover{
		background-color:#82f090;
	}
	.left{
		position:fixed;
		height: 50%;
		width: 33%;
		top:200px;
		left:300px;
	}
	.middle{
		position:fixed;
		top:200px;
		height: 50%;
		width: 33%;
		left: 680px;
	}
	.right{
		position:fixed;
		top:200px;
		height: 50%;
		width: 33%;
		left:1050px;
		
	}

</style>



</head>
<body>
	<div class="navigator">
        <a href="">HOME</a>
        <a href="#menu">MENU</a>
        <a href="#about">ABOUT</a>
        <a href="#gallery">GALLERY</a>
        <a href="#testimonials">TESTIMONIALS</a>
        <a href="#contact">CONTACT</a>

    </div>
    
<h1>Welcome ${passanger}</h1>
<br>
<div class="left">
	<div class="centered">
		<form class="login-form" action="bookingHistory" method="Get">
			<input type="submit" class="button" value="Check Booking History">
		</form>
	</div>	
</div>	
<div class="middle">
	<div class="centered">
		<form class="login-form" action="newBooking" method="post">
			<input type="submit" class="button" value="Book new Cab">
		</form>
	</div>
</div>
<div class="right">
	<div class="centered">		
		<form class="login-form" action="logincust" method="post">
			<input type="submit" class="button" value="Update Current Booking">					
		</form>
	</div>
</div>		
</body>
</html>