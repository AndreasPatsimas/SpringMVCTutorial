<%-- 
    Document   : customer-form
    Created on : 11-Mar-2019, 17:25:02
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Form</title>
        <style>
            .errors{
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Hello Possible Customer!</h1>
        <br>
        <form:form action="processForm" modelAttribute="customer">
           Firstname: <form:input path="firstname"/>
            <br>
           Lastname(*): <form:input path="lastname"/>
           <form:errors path="lastname" cssClass="errors"/>
            <br>
            <input type="submit" value="submit">
        </form:form>
    </body>
</html>
