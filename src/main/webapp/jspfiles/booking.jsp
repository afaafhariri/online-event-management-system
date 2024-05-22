<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
				height: 65%;
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
			.input-box2, .input-box3, .input-box4, .input-box5 {
				width: 55%;
				background-color: transparent;
				margin-top: 22px;
			}
			.input-box6 {
				width: 100%;
				margin-top: 22px;
				background-color: transparent;
				display: flex;
				flex-direction: row;
				align-items: center;
			}
			.input-box7 {
				margin-top: 22px;
				width: 100%;
				background-color: transparent;
				display: flex;
				flex-direction: row;
				align-items: center;
			}
			select {
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
			select option {
				width: 100%;
				border: 1px solid white;
				font-size: 13px;
				background-color: transparent;
				color: black;
				outline: 1px solid white;
				font-weight: bold;
				transition: 0.2s;
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
			input[type=date]{
				width: 100%;
				border: 1px solid white;
				padding: 8px 7px;
				font-size: 13px;
				font-weight: bold;
				color: white;
				background-color: transparent;
				outline: 1px solid white;
				transition: 0.2s;
			}
			input[type=text]::placeholder, input[type=password]::placeholder, select::placeholder, input[type=date]::placeholder {
				color: rgba(231, 218, 218, 0.907);
			}
			input[type=text]:hover, input[type=password]:hover, select:hover, input[type=date]:hover{
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				transition: 0.2s;
			}
			input[type=text]::placeholder:hover, input[type=date]::placeholder:hover, select::placeholder:hover {
				color: white;
			}
			input[type=text]:focus, input[type=date]:focus, select:focus {
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
							<li><h2 class="h-c">Booking</h2></li>
						</ul>
				</div>
				<div class="form-box">
					<form action="BookingServlet" method="post">
						<div class="input-box1">
							 <select name="organizer" id="organizer" required>
            					<option value="" disabled selected>Select Organizer</option>
            					<option value="Team H">Team H</option>
            					<option value="Eazy-X">Eazy-X</option>
            					<option value="Simplex">Simplex</option>
            					<option value="Eventizer">Eventizer</option>
            					<option value="Rockers">Rockers</option>
            					<option value="PartyTime">PartyTime</option>
            					<option value="RockDJ">RockDJ</option>
            					<option value="Bliss">Bliss</option>
        					</select>
						</div>
						<div class="input-box2">
							<select name="event" id="event" required>
            					<option value="" disabled selected>Select Event</option>
            					<option value="Wedding">Wedding</option>
            					<option value="Birthday">Birthday</option>
        					</select>
						</div>
						<div class="input-box3">
							<input type="text" id="address" name="address" placeholder="Address" pattern=".{6,}" title="Address must be more than 5 characters" required>
						</div>
						<div class="input-box4">
							<input type="date" id="eventdate" name="eventdate" placeholder="Event Date" required>	
						</div>
						<div class="input-box5">
							<input type="text" id="customermobile" name="customermobile" placeholder="Phone" maxlength="10" title="Only digits from 0-9,10 characters required" pattern="[0-9]{10}" required>	
						</div>
						<div class="input-box6">
							<input type="submit" value="Create">	
						</div>
						<div class="input-box7">
							<a class="altsign" href="event.jsp">&#8592; Back</a>	
						</div>             
        			</form>
				</div>
			</div>
		</div>
		<script>
			var today = new Date().toISOString().split('T')[0];
	    	document.getElementById("eventdate").min = today;
		</script>
	</body>
</html>