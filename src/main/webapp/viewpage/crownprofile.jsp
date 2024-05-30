<%@ page import="controller.Dao.UserDao" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile page</title>
    	<style>
    	 body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            max-width: 750px;
            margin: 150px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile-heading {
            margin-bottom: 30px;
            text-align: center;
            position: relative;
        }

        .profile-heading::before {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 100%;
            height: 4px;
            background-image: linear-gradient(to right, #0059ff, #0fc41b, #FF6347);
            border-radius: 5px;
        }

        .profile-content {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: flex-start;
        }

        .profile-details {
            flex: 1;
            text-align: left;
        }

        .profile-details h2 {
            margin-bottom: 0;
        }

        .profile-details p {
            margin-bottom: 20px;
        }
        
       .profile-image {
            position: relative;
            width: 150px;
            height: 150px;
            overflow: hidden;
            border: 2px solid #000080;
            border-radius: 5px;
        }

        .profile-image img {
            position: absolute;
            top: 0;
            right: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

		.btn{
			width: 110%;
			margin-bottom:-10px;
			margin-left:40px;
		    display: inline-block;
		    padding: 10px 15px;
		    text-align:center;
		    background: #000080;
		    color: #fff;
		    text-decoration: none;
		    border-radius: 5px;
		    border: none;
		    cursor: pointer;
		    transition: all 0.3s linear;
		
				

		}
		
		.btn:hover{
			cursor:pointer;
		    background-color: #f1350e;
		    transform: translateY(-2px);
		
		}
   		</style>

</head>
<body>
    <%
        // Retrieve user information from the database
        String usermail = (String) session.getAttribute("usermail");
        UserDao userDao = new UserDao();
        String userName = userDao.getuserName(usermail);
        String firstName = userDao.getfirstName(usermail);
        String lastName = userDao.getlastName(usermail);
        String imagePath = "/FileUpload/profile/" + userName + ".png";

        String imageTag = "";

        // Get the current date and time
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");
        String timestamp = now.format(formatter);
        String updatedImagePath = imagePath + "?t=" + timestamp;

        
        // Check profieiamge isthere or not
        java.io.File imageFile = new java.io.File(getServletContext().getRealPath(imagePath));
        if (imageFile.exists()) {
        	imageTag = "<img src='" + request.getContextPath() + updatedImagePath + "' alt='Profile Image'>";
        } else {
            imageTag = "<p>No profile image uploaded</p>";
        } 
 
    %>
    
    <div class="profile-container">
        <h1 class="profile-heading">Profile Page</h1>
        <div class="profile-content">
            <div class="profile-details">
            <h2>User Profile</h2>

			<p><strong>Email:</strong> <%= usermail %></p>
            <p><strong>User Name:</strong> <%= userName %></p>
            <p><strong>First Name:</strong> <%= firstName %></p>
            <p><strong>Last Name:</strong> <%= lastName %></p>
            <a href="crownprofileedit.jsp" class="btn">Edit Profile</a>
            </div>
            <div class="profile-image">
            	<%= imageTag %>
			</div>
    	</div>
  	</div>
</body>
</html>

