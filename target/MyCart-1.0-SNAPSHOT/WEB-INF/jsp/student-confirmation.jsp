<%-- 
    Document   : student-confirmation
    Created on : 11-Mar-2019, 12:34:53
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- einai gia n mporw na kalesw thn foreach -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Confirmation</title>
    </head>
    <body>
        <h1>Hello Student!</h1>
        <br>
        The student is confirmed: ${student.firstname} ${student.lastname}
        <br>
        Country: ${student.country}
        <br>
        <ul>
            <c:forEach var="temp" items="${student.operatingSystems}">
                
                <li>${temp}</li>
                
            </c:forEach>

        </ul>
        <hr>
        <a href="showForm">Home</a>
    </body>
</html>
