<%-- 
    Document   : editEmployee_outcome
    Created on : 10 May 2025, 8:22:34 PM
    Author     : Maredi Hunadi
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee Outcome</title>
    </head>
    <body>
        <h1>Edit Employee Outcome</h1>
        <%
        Employee emp=(Employee)request.getAttribute("emp");
        Long id=emp.getId();
        Integer temp=emp.getTemp();
        %>
        <p>
           The Temperature of <%=id%> was updated to <%=temp%>
            
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to go back to menu page.
            <br>
             Click <a href="index.html">here</a> to go back to home page.   
        </p>
    </body>
</html>
