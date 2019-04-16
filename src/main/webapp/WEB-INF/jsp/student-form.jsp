<%-- 
    Document   : student-form
    Created on : 11-Mar-2019, 12:14:37
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
    </head>
    <body>
        <h1>Hello Candidate Student!</h1>

        <form:form action="processForm" modelAttribute="student"> <!-- prosoxh to "student" prepei na nai to idio grammeno opws einai mesa ston controller sto model.addAttribute("student",..) -->

            Firstname: <form:input path="firstname"/>
            <br>
            Lastname(*): <form:input path="lastname"/>
            <form:errors path="lastname" cssClass="error"/>
            <br>
            <!-- When form is loaded Spring MVC will call student.getFirstname() and student.getLastname() -->
            Select Country: <form:select path="country">
                <form:option value="Greece" label="Greece"/>
                <form:option value="England" label="England"/>
                <form:option value="France" label="France"/>
                <form:option value="Germany" label="Germany"/>

            </form:select>
            <br>
           Windows <form:checkbox path="operatingSystems" value="Windows"/>
           Mac <form:checkbox path="operatingSystems" value="Mac"/>
           Linux <form:checkbox path="operatingSystems" value="Linux"/>
            <br>
            <input type="submit" value="submit">
            <!-- When form is submited Spring MVC will call student.setFirstname() and student.setLastname() -->
        </form:form>
        <hr>
        <a href="../">Home</a>

    </body>
</html>
