<%-- 
    Document   : customer-confirmation
    Created on : 11-Mar-2019, 17:42:46
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Page</title>
    </head>
    <body>
        <h1>Hello Customer!</h1>
        <br>
        The Customer ${customer.firstname} ${customer.lastname} is confirmed! 
    </body>
</html>
