<%-- 
    Document   : high
    Created on : May 2, 2025, 4:14:07 PM
    Author     : khens
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page</title>
    </head>
    <body>
        <h1>List</h1>
        
        
        
        <p>
           List of employee's with high temp.   
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
          
            id:<%=id%>
            name:<%=name%>
            temp:<%=temp%>
            reading:<%=outcome%>
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
