<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  /* CSS styles */
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }
  form {
    max-width: 500px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
  input[type="text"],
  input[type="email"],
  textarea {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>

<h2>Feedback Form</h2>

<form id="feedbackForm" action="${pageContext.request.contextPath}/FeedbackServlet" method="post">
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br>
  <label for="email">Email:</label><br>
  <input type="email" id="mail" name="mail" required><br>
  <label for="feedback">Feedback:</label><br>
  <textarea id="comment" name="comment" rows="4" cols="50" required></textarea><br>
  <input type="submit" value="Submit">
</form>

<script>
  // JavaScript code for form validation
  document.getElementById("feedbackForm").addEventListener("submit", function(event) {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var feedback = document.getElementById("feedback").value;

    if (name === '' || email === '' || feedback === '') {
      alert("Please fill in all fields");
      event.preventDefault();
    }
  });
</script>

</body>
</html>
