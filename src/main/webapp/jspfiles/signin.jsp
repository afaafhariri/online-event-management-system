<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>EventManage</title>
		<style>
			*{
				padding: 0px;
				margin: 0px;
			}
			.main-container {
				background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),url(images/Hero.jpg);
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
				width: 100%;
				height: 100vh;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.form-container {
				height: 70%;
				width: 60%;
				display: flex;
				flex-direction: row;
				justify-content: center;
				align-items: center;
			}
			.heading-container {
				background-color: none;
				width: 40%;
				height: 60%;
				display: flex;
				flex-direction: column;
				align-items: right;
				justify-content: center;
				padding-right: 20px;
			}
			.h-c {
				color: white;
				font-size: 65px;
				text-align: right;
				animation: fadeIn 3s ease forwards;
    			opacity: 0;
			}
			@keyframes fadeIn {
    			from {
        			opacity: 0;
    			}
    			to {
        			opacity: 1;
    				}
			}
			.form-box {
				background-color: transparent;
				height: 50%;
				width: 60%;
				padding-left: 20px;
				display: flex;
				justify-content: center;
				align-items: left;
				flex-direction: column;
				border-left: 1px solid rgba(231, 218, 218, 0.601);
				outline-left: 1px solid rgba(231, 218, 218, 0.601);
			}
			.input-box1 {
				width: 55%;
				background-color: transparent;
			}
			.input-box2 {
				width: 55%;
				background-color: transparent;
				margin-top: 22px;
			}
			.input-box3 {
				width: 100%;
				margin-top: 22px;
				background-color: transparent;
				display: flex;
				flex-direction: row;
				align-items: center;
			}
			.input-box4 {
				margin-top: 22px;
				width: 100%;
				background-color: transparent;
				display: flex;
				flex-direction: row;
				align-items: center;
			}
			input[type=text]{
				width: 100%;
				border: 1px solid white;
				padding: 8px 7px;
				font-size: 13px;
				background-color: transparent;
				color: white;
				outline: 1px solid white;
				font-weight: bold;
				transition: 0.2s;
			}
			input[type=password]{
				width: 100%;
				border: 1px solid white;
				padding: 8px 7px;
				font-size: 13px;
				color: white;
				background-color: transparent;
				outline: 1px solid white;
				font-weight: bold;
				transition: 0.2s;
			}
			input[type=text]::placeholder, input[type=password]::placeholder {
				color: rgba(231, 218, 218, 0.907);
			}
			input[type=text]:hover, input[type=password]:hover {
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				transition: 0.2s;
			}
			input[type=text]::placeholder:hover, input[type=password]::placeholder:hover {
				color: white;
			}
			input[type=text]:focus, input[type=password]:focus {
				background-color: rgba(231, 218, 218, 0.301);
				outline: 1px solid rgba(231, 218, 218, 0.301);
				border: 1px solid rgba(231, 218, 218, 0.301);
				color: white;
			}
			input[type=submit]{
				padding: 8px 12px;
				border: 1px solid white;
				outline: 1px solid white;
				font-size: 15px;
				color: white;
				background-color: transparent;
				cursor: pointer;
				transition: 0.5s;
			}
			input[type=submit]:hover {
				color: white;
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				transition: 0.5s;
			}
			input[type=submit]:active {
				background-color: rgba(231, 218, 218, 0.301);
				outline: 1px solid rgba(231, 218, 218, 0.301);
				border: 1px solid rgba(231, 218, 218, 0.301);
			}
			.altsign {
				padding: 1px 0px;
				border-bottom: 1px solid transparent;
				outline-bottom: 1px solid transparent;
				text-decoration: none;
				color: white;
				font-size: 13px;
				font-weight: light;
				transition: 0.5s;
			}
			.altsign:hover {
				padding: 1px 0px;
				border-bottom: 1px solid white;
				outline-bottom: 1px solid white;
				font-weight: regular;
				transition: 0.5s;
			}
		</style>
	</head>
	<body>
		<div class="main-container">
			<div class="form-container">
				<div class="heading-container">
						<ul class="head-list">
							<li><h2 class="h-c">Sign In</h2></li>
							<li><h2 class="h-c">To</h2></li>
							<li><h2 class="h-c">EventManage</h2></li>
						</ul>
				</div>
				<div class="form-box">
					<form action="SigninServlet" method="post">
						<div class="input-box1">
							<input type="text" id="username" name="username" placeholder="Username" required>
						</div>
						<div class="input-box2">
							<input type="password" id="password" name="password" placeholder="Password" required>
						</div>
						<div class="input-box3">
							<input type="submit" value="Sign In">	
						</div>
						<div class="input-box4">
							<a class="altsign" href="hero.jsp">&#8592; Back</a>	
						</div>             
        			</form>
				</div>
			</div>
		</div>
	</body>
</html>