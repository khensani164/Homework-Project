<%-- 
    Document   : list_employee_outcome
    Created on : 07 May 2025, 3:59:07 PM
    Author     : ndima mhangwani
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page</title>
    </head>
    <body>
        <h1>List of Employees</h1>
        
        <p>
           Here is a list of employee's:   
        </p>
        <%
        
        List<Employee> employees = (List<Employee>)request.getAttribute("employees");
        for (int i = 0; i < employees.size(); i++) {
            Employee emp = employees.get(i);
            Long id = emp.getId();
            String name = emp.getName();
            Integer temp = emp.getTemp();
            String outcome = emp.getOutcome();
            
        %>
        <p>
          
            id:<%=id%><br>
            name:<%=name%><br>
            temp:<%=temp%><br>
            reading:<%=outcome%><br>
            <br>
            <br>
            <br>
        </p>
        <%
        
        }
        %>
        <p>
             <a href="menu.jsp">Menu</a>
             <a href="LogoutServlet.do">Log Out</a>
        </p>
    </body>
</html>
