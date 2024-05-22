<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>EventManage</title>
		<style>
			* {
				padding: 0px;
				margin: 0px;
			}
			.hero {
				background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),url(images/Hero.jpg);
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
				height:100vh;
			}
			.hero-content {
				background-color: transparent;
				position: absolute;
				top: 50%;
  				left: 50%;
  				transform: translate(-50%, -50%);
  				display: flex;
  				flex-direction: column;
  				justify-content: center;
  				align-items: center;
			}
			.title {
				color: white;
				font-size: 75px;
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
			.button-content {
				margin-top: 30px;
			}
			.sign-in {
				margin-right: 20px;
				text-decoration: none;
				color: white;
				font-size: 18px;
				border: 1px solid white;
				outline: 1px solid white;
				padding: 8px 14px;
				animation: fadeIn 3s ease forwards;
    			opacity: 0;
				transition: 0.5s;
			}
			@keyframes fadeIn {
    			from {
        			opacity: 0;
    			}
    			to {
        			opacity: 1;
    				}
			}
			.sign-up {
				margin-left: 20px;
				text-decoration: none;
				color: white;
				font-size: 18px;
				border: 1px solid white;
				outline: 1px solid white;
				padding: 8px 14px;
				animation: fadeIn 3s ease forwards;
    			opacity: 0;
				transition: 0.5s;
			}
			@keyframes fadeIn {
    			from {
        			opacity: 0;
    			}
    			to {
        			opacity: 1;
    				}
			}
			.sign-in:hover, .sign-up:hover {
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				color: white;
				transition: 0.5s
			}
			.sign-in:active, .sign-up:active {
				background-color: rgba(231, 218, 218, 0.301);
				outline: 1px solid rgba(231, 218, 218, 0.301);
				border: 1px solid rgba(231, 218, 218, 0.301);
			}
		</style>
	</head>
	<body>
		<div class="hero">
			<div class="hero-content">
				<h1 class="title">EventManage</h1>
				<div class="button-content">
					<a class="sign-in" href="signin.jsp">Sign In</a>
					<a class="sign-up" href="signup.jsp">Sign Up</a>
				</div>
			</div>
		</div>
	</body>
</html>