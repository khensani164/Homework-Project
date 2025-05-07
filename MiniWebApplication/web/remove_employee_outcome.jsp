<%-- 
    Document   : remove_employee_outcome
    Created on : 07 May 2025, 3:41:25 PM
    Author     : ndima mhangwani
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Employee Outcome Page</title>
    </head>
    <body>
        <h1>Remove employee outcome</h1>
        <%
            Employee emp = (Employee) request.getAttribute("employee");
            String name = emp.getName();
        %>
        <p>
          You have successfully removed  <%=name%> from the database.
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to go back to menu.
        </p>
    </body>
</html>
