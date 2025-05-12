<%-- 
    Document   : menu
    Created on : May 2, 2025, 3:14:38 PM
    Author     : khens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <ul>
            <li><a href="add.jsp">Add Employee</a></li>
            <li><a href="static.jsp">List of with Employees high/acceptable temp reading</a></li>
            <li> <a href="removeEmployee.jsp">Remove employee</a></li>
            <li><a href="ListEmployeeServlet.do">List Employees</a></li>
            <li><a href="editEmployee.jsp">Edit Employee</a></li>
            <a href="EmployeeReportServlet.do">View Employee Temperature Statistics</a>
        </ul>
        <p>
             <a href="LogoutServlet.do">Log Out</a>
        </p>
    </body>
</html>
