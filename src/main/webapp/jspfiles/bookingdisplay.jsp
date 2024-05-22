<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Booking Details</title>
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
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
			.heading {
				color: white;
				font-size: 22px;
				padding-left: 8px;
			}
			table {
				border-collapse: collapse;
				margin-top: 15px;
			}
			td, tr {
 	 			padding: 8px;
			}
			.right {
				font-size: 16px;
				color: white;
				text-align: left;
			}
			.left {
				color: rgba(231, 218, 218, 0.901);
				text-align: left;
			}
			.buttons {
				width:17.75%;
				padding: 15px auto;
				display: flex;
				justify-content: flex-start;
				align-items: center;
				margin-top: 25px;
			}
			.message {
				display: none;
				color: white;
				font-size: 24px;
				border-left: 1px solid rgba(231, 218, 218, 0.601);
				padding: 8px 14px;
				margin-top: 25px;
			}
			#cbutton, #ebutton, #dbutton {
				padding: 6px 10px;
				border: 1px solid white;
				outline: 1px solid white;
				font-size: 14px;
				color: white;
				background-color: transparent;
				cursor: pointer;
				transition: 0.5s;
			}
			#cbutton:hover, #ebutton:hover, #dbutton:hover{
				color: white;
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				transition: 0.5s;
			}
			#cbutton:active, #ebutton:active, #dbutton:active{
				background-color: rgba(231, 218, 218, 0.301);
				outline: 1px solid rgba(231, 218, 218, 0.301);
				border: 1px solid rgba(231, 218, 218, 0.301);
			}
			
			#ebutton, #dbutton {
				margin-left: 20px;
			}  
		</style>
	</head>
	<body>
    	<div class=main-container>
    		<div class="sub">
    			<div class="heading">
        			Booking Details 
        		</div>
    			<c:if test="${not empty newBooking}">
        		<table>
            		<tr>
                		<td class="left">Organizer:</td>
                		<td class="right">${newBooking.organizer}</td>
                	</tr>	
                	<tr>
                		<td class="left">Event:</td>
                		<td class="right">${newBooking.event}</td>
               		 </tr>
                	<tr>
                		<td class="left">Address:</td>
                		<td class="right">${newBooking.address}</td>
                	</tr>
                	<tr>
                		<td class="left">Event Date:</td>
                		<td class="right">${newBooking.eventdate}</td>
                	</tr>
                	<tr>
                		<td class="left">Mobile:</td>
                		<td class="right">${newBooking.customermobile}</td>
                	</tr>
        		</table>
        		<div class="buttons">
        			<button type="button" id="cbutton" onclick="confirmBooking()">Confirm</button>
        			<form action="EditServlet" method="post">
        				<input type="hidden" name="bid" value="${newBooking.bid}">
        				<button id="ebutton" type="submit">Edit</button>
        			</form>
        			<form action="DeleteServlet" method="post">
        				<input type="hidden" name="bid" value="${newBooking.bid}">
        				<button id="dbutton" type="submit">Delete</button>
        			</form> 
        		</div>
        		<div class="message" id="message">
        			Booking confirmed.
        		</div>
    		</c:if>
    		<c:if test="${empty newBooking}">
        		<p Style="color: white">No booking details found.</p>
    		</c:if>
    		</div>
    	</div>
    	<script>
    		function confirmBooking() {
    			document.getElementById("cbutton").style.display = "none";
    			document.getElementById("ebutton").style.display = "none";
    			document.getElementById("dbutton").style.display = "none";
    			document.getElementById("message").style.display = "inline";
        		setTimeout(function() {
            		window.location.href = "event.jsp";
        		}, 3000);
    		}
		</script>
    </body>
</html>
