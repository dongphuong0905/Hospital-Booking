<%-- 
    Document   : test
    Created on : Aug 19, 2019, 7:24:47 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="calendar" items="${calendar}">
            <h2>${calendar.id}</h2>
        </c:forEach>
        <c:forEach var="calendarTime" items="${calendarTime}">
            <h2>${calendarTime.time}</h2>
        </c:forEach>
    </body>
</html>
