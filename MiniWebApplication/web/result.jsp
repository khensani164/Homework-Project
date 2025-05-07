<%-- 
    Document   : result
    Created on : May 2, 2025, 3:57:01 PM
    Author     : khens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <h1>Confirmation</h1>
        <%
        String name = (String)request.getAttribute("name");
       
        %>
        <p>
            <%=name%> added successfully
            <a href="menu.jsp">Menu</a>
             <a href="LogoutServlet.do">Log Out</a>
        </p>
    </body>
</html>
