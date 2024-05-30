<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - Feedback</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #f4f4f4;
            padding: 10px;
        }
        nav a {
            margin-right: 20px;
            color: #333;
            text-decoration: none;
        }
        .container {
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<header>
    <h1>Admin Panel - Feedback</h1>
</header>


<div class="container">
    <h2>Feedback List</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Comment</th>
            
        </tr>
        <%@ page import="java.sql.*, model.UserFeedback, controller.Dao.feedbackDao" %>
        <%
            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet rs = null;
            try {

                // Create an instance of feedbackDao
                feedbackDao dao = new feedbackDao();

                connection = dao.getConnection();
                statement = connection.prepareStatement("SELECT * FROM feedback");
                rs = statement.executeQuery();

                // Iterate through the result set and display feedback data in table rows
                while (rs.next()) {
                    String name = rs.getString("name");
                    String email = rs.getString("mail");
                    String comment = rs.getString("comment");
                    
                    
                    // Display feedback data in table rows
                    out.println("<tr>");
                    out.println("<td>" + name + "</td>");
                    out.println("<td>" + email + "</td>");
                    out.println("<td>" + comment + "</td>");

                    out.println("</tr>");
                }

                // Close JDBC objects
                rs.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        
    </table>
</div>


</body>

</html>


