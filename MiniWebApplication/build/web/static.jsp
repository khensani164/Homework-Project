<%-- 
    Document   : static
    Created on : May 2, 2025, 4:00:59 PM
    Author     : khens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Static Page</title>
    </head>
    <body>
        <h1>Choose</h1>
        <form action="ListServlet.do" method="POST">
            <table>
                <tr>
                <select name="option">
                    <option value="high">High</option> 
                    <option value="acceptable">Acceptable</option> 
                </select>
                
                
                 <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="GET LIST OF EMPlOYEE"/>
                    </td>
                </tr>
            </table>   
        </form>
    </body>
</html>
