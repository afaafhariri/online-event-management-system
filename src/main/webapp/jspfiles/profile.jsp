<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			.box1, .box2, .box3, .box4 {
				display: flex;
				flex-direction: row;
				justify-content: flex-start;
				align-items: center;
				width: 100%;
			}
			.box2, .box3, .box4 {
				margin-top: 18px;
			}
			.name-l, .uname-l, .email-l, .mobile-l{
				color: rgba(231, 218, 218, 0.901);
				font-size: 14px;
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
				height: 100%;
				background-color: none;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				border-left:1px solid rgba(231, 218, 218, 0.601);
				outline-left: 1px solid rgba(231, 218, 218, 0.601);
				padding-left: 14px;
			}
			.out, .del, .edit {
				padding: 8px 12px;
				border: 1px solid white;
				outline: 1px solid white;
				font-size: 15px;
				color: white;
				background-color: transparent;
				cursor: pointer;
				transition: 0.5s;
				text-decoration: none;
			}
			.del, .edit {
				margin-top: 18px;
			}
			.out:hover, .edit:hover, .del:hover{
				transition: 0.5s;
				background-color: rgba(231, 218, 218, 0.601);
				outline: 1px solid rgba(231, 218, 218, 0.601);
				border: 1px solid rgba(231, 218, 218, 0.601);
			}
			.out:focus, .edit:focus, .del:focus{
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
							<li><h2 class="p-c">User</h2></li>
							<li><h2 class="p-c">Profile</h2></li>
						</ul>
				</div>
				<div class="profile">
					<div class="label-box">
						<div class="box1">
							<p class="name-l">Name</p>
						</div>
						<div class="box2">
							<p class="uname-l">Username</p>
						</div>
						<div class="box3">
							<p class="email-l">Email</p>
						</div>
						<div class="box4">
							<p class="mobile-l">Mobile</p>
						</div>
					</div>
					<div class="content-box">
						<div class = "contents">
							<div class="c1">
								<p class="name"><c:out value="${name}" /></p>
							</div>
							<div class="c2">
								<p class="uname"><c:out value="${username}" /></p>
							</div>
							<div class="c3">
								<p class="email"><c:out value="${email}" /></p>
							</div>
							<div class="c4">
								<p class="mob"><c:out value="${mobile}" /></p>
							</div>
						</div>
						<div class="buttons">
							<a class="out" href="SignoutServlet">Sign Out</a>
							<a class="edit" href="EditProfileServlet">Edit</a>
							<a class="del" href="DeleteProfileServlet">Delete</a>
						</div>
					</div>		             
				</div>
			</div>
		</div>
	</body>
</html>