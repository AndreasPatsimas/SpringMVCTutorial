<%-- 
    Document   : helloworld
    Created on : 11-Mar-2019, 09:52:44
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submit Form</title>
    </head>
    <body>
        <h1>Yeah!</h1>
        <br>
        Student name: ${param.studentName} <!-- pairnei to name tou input me name=studentName apo thn view page helloworld-form.jsp --> 
        <hr style="color: black">
        <b>${msg}</b>
        <br>
        <a href="../">Home</a>
    </body>
</html>
