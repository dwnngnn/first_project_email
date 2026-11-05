<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body>
    <h1>Thanks for joining our email list</h1>
    <p>Here is the information that you entered:</p>
    
    <p><strong>Email:</strong> ${user.email}</p>
    <p><strong>First Name:</strong> ${user.firstName}</p>
    <p><strong>Last Name:</strong> ${user.lastName}</p>
    
    <p>To enter another email address, click on the Back button in your browser or the Return button below.</p>
    <form action="index.html" method="get">
        <input type="submit" value="Return">
    </form>
</body>
</html>