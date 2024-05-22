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
			.main-box {
				background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),url(images/Hero.jpg);
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center;
				height: 100vh;
				width: 100%;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.header {
				position: absolute;
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
				transition: 0.5s;
			}
			.toevent:hover {
				color: rgba(231, 218, 218, 0.601);
				transition: 0.5s;
			}
			.toevent:focus {
				color: rgba(231, 218, 218, 0.301);
			}
			.profile-box {
				height: 70%;
				width: 60%;
				display: flex;
				flex-direction: row;
				justify-content: center;
				align-items: center;
			}
			.heading-box {
				background-color: none;
				width: 40%;
				height: 60%;
				display: flex;
				flex-direction: column;
				align-items: right;
				justify-content: center;
				padding-right: 20px;
			}
			.p-c {
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
			.profile {
				background-color: none;
				height: 66%;
				width: 60%;
				padding-left: 20px;
				display: flex;
				justify-content: felx-start;
				align-items: center;
				flex-direction: row;
				border-left: 1px solid rgba(231, 218, 218, 0.601);
				outline-left: 1px solid rgba(231, 218, 218, 0.601);
			}
			.label-box {
				background-color: transparent;
				width: 13%;
				height: 60%;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				border-right:1px solid rgba(231, 218, 218, 0.601);
				outline-right: 1px solid rgba(231, 218, 218, 0.601);
			}
			.box1, .box2, .box3, .box4, .box5 {
				display: flex;
				flex-direction: row;
				justify-content: flex-start;
				align-items: center;
				width: 100%;
			}
			.box2, .box3, .box4{
				margin-top: 18px;
			}
			.box5 {
				width: 100%;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				margin-top: 25px;
			}
			.name-l, .uname-l, .email-l, .mobile-l{
				color: rgba(231, 218, 218, 0.901);
				font-size: 14px;
			}
			.back {
				color:white;
				font-size: 13px;
				transition: 0.5s;
				text-decoration: none;
			}
			.back:hover {
				color: rgba(231, 218, 218, 0.601);
				transition: 0.5s;
			}
			.back:focus {
				color: rgba(231, 218, 218, 0.301);
			}
			.content-box {
				background-color: none;
				width: 87%;
				height: 60%;
				padding-left: 14px;
				display: flex;
				flex-direction: row;
				justify-content: flex-start;
				align-items: center;
			}
			.contents {
				width: 60%;
				display: flex;
				flex-direction: column;
				align-items: left;
				justify-content: center;
			}
			.c1, .c2, .c3, .c4 {
				display: flex;
				flex-direction: row;
				justify-content: flex-start;
				align-items: center;
				width: 100%;
				background-color: none;
			}
			.c2, .c3, .c4 {
				margin-top: 18px;
			}
			.name, .uname, .email, .mob{
				color: white;
				font-size: 14px;
				font-weight: bold;
			}
			.buttons {
				width: 40%;
				height: 30%;
				background-color: none;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
			.error-message {
				margin-top: 8px;
				display: flex;
				flex-direction: row;
				justify-content: flex-start;
				align-items: center;
				width: 80%;
				border-bottom: 1px solid red;
				padding: 4px 2px;
				font-size: 13px;
				background-color: transparent;
				color: white;
				outline-bottom: 1px solid red;
			}
			input[type=text], input[type=email]{
				width: 80%;
				border: 1px solid white;
				padding: 8px 7px;
				font-size: 13px;
				background-color: transparent;
				color: white;
				outline: 1px solid white;
				font-weight: bold;
				transition: 0.2s;
			}
			input[type=text]:hover, input[type=email]:hover {
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
				transition: 0.2s;
			}
			input[type=text]:focus, input[type=email]:focus {
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
				margin-top: 18px;
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
		</style>
	</head>
	<body>
		<div class="header">
			<a class="toevent" href="event.jsp">Events</a>
		</div>
		<div class="main-box">
			<div class="profile-box">
				<div class="heading-box">
						<ul class="prof-list">
							<li><h2 class="p-c">Update</h2></li>
							<li><h2 class="p-c">Profile</h2></li>
						</ul>
				</div>
				<div class="profile">
					<div class="content-box">
						<div class = "contents">
							<form action="UpdateProfileServlet" method="post">
								<div class="c1">
                            		<input class="name" type="text" id="name" name="name" value="${name}" required>
                       			 </div>
                        		<div class="c2">
                            		<input class="uname" type="text" id="username" name="username" value="${username}" pattern=".{4,}" title="Username must be more than 3 characters long" required>
                        		</div>
                        		<div id="usernameExistsMessage" class="error-message" style="display: none;">*Username already exists</div>
                        		<div class="c3">
                            		<input class="email" type="email" id="email" name="email" value="${email}" pattern="[^@\s]+@[^@\s]+\.[^@\s]+" required>
                        		</div>
                        		<div class="c4">
                            		<input class="sub" type="text" id="sub" name="mobile" value="${mobile}" maxlength="10" title="Only digits from 0-9,10 characters required" pattern="[0-9]{10}" required>
                        		</div>
                        		<div class="c5">
                            		<input class="sub" type="submit" id="sub" name="mobile" value="Update">
                        		</div>
							</form>
						</div>
						<div class="buttons">
							<div class="box5">
								<a class="back" href="profile.jsp">&#8592; cancel</a>
							</div>
						</div>
					</div>		             
				</div>
			</div>
		</div>
		 <script>
        	document.getElementById("usernameExistsMessage").style.display = "inline";
    	</script>
	</body>
</html>