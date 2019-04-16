<%-- 
    Document   : helloworld-form
    Created on : 11-Mar-2019, 09:38:14
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Form</title>
    </head>
    <body>
        <h1>Hello Man!</h1>
        <form action="processFormVersion2" method="GET"> <!-- το action kalei ton controller -->
            <input type="text" name="studentName" placeholder="What's your name?">
            <input type="submit" value="submit">
        </form>
        <br>
        <a href="../">Home</a>
    </body>
</html>
