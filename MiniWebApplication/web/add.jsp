<%-- 
    Document   : add
    Created on : May 2, 2025, 3:25:15 PM
    Author     : khens
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Page</title>
    </head>
    <body>
        <h1>Add Employee</h1>
        <form action="AddServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                <input type="text" name="name" required=""/>
                    </td>
                </tr>
                
                 <tr>
                    <td>Temparature</td>
                    <td>
                <input type="text" name="temp" required=""/>
                    </td>
                </tr>
                
                 <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="ADD EMPlOYEE"/>
                    </td>
                </tr>
            </table>   
        </form>
    </body>
</html>
