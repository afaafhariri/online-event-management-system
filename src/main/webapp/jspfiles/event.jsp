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
			body {
				background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),url(images/Hero.jpg);
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
				height: 100vh;
			}
			header {
				width: 100%;
				padding: 20px 40px;
				background-color: none;
				border-bottom:1px solid rgba(231, 218, 218, 0.601);
				outline-bottom:1px solid rgba(231, 218, 218, 0.601);
			}
			.toevent {
				text-decoration: none;
				color: white;
				font-size: 22px;
			}
			.main-box {
				width: 100%;
				height: 100%;
				background-color: transparent;
			}
			.sub{
				width: 70%;
				height: 80%;
				margin-right: auto;
				margin-left: auto;
				background-color: none;
				margin-top: 2%;
				display: flex;
			}
			.sub-v1 {
				width: 50%;
				height: 100%;
				background-color: none;
				display:flex;
				flex-direction:column;
				justify-content: flex-start;
				align-items: center;
				border-right: 1px solid rgba(231, 218, 218, 0.601);
				outline-right: 1px solid rgba(231, 218, 218, 0.601);
			}
			.wed {
				width: 480px;
				height: 300px;
			}
			.wedtitle {
				color: white;
				margin-top: 30px;
				font-size: 72px;
			}
			.book-button{
				padding: 8px 12px;
				border: 1px solid white;
				outline: 1px solid white;
				font-size: 15px;
				color: white;
				background-color: transparent;
				cursor: pointer;
				transition: 0.5s;
				text-decoration: none;
				margin-top: 30px;
			}
			.book-button:hover {
				transition: 0.5s;
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
			}
			.book-button:focus {
				background-color: rgba(231, 218, 218, 0.301);
				outline: 1px solid rgba(231, 218, 218, 0.301);
				border: 1px solid rgba(231, 218, 218, 0.301);
			}
			.sub-v2 {
				width: 50%;
				height: 100%;
				background-color: none;
				display:flex;
				flex-direction:column;
				justify-content: flex-start;
				align-items: center;
			}
			.bir {
				width: 480px;
				height: 300px;
			}
			.birtitle {
				color: white;
				margin-top: 30px;
				font-size: 72px;
			}
		</style>
	</head>
	<body>
		<div class="main-box">
			<header>
				<a class="toevent" href="event.jsp">Events</a>
			</header>
			<div class="sub">
				<div class="sub-v1">
					<img class="wed" alt="" src="images/wedding.jpg">
					<h1 class="wedtitle">Wedding</h1>
					<a class="book-button" href="booking.jsp">Book</a>
				</div>
				<div class="sub-v2">
					<img class="bir" alt="" src="images/birthday.jpg">
					<h1 class="birtitle">Birthday</h1>
					<a class="book-button" href="booking.jsp">Book</a>
				</div>
			</div>
		</div>
	</body>
</html>