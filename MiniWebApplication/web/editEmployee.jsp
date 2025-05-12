<%-- 
    Document   : editEmployee
    Created on : 10 May 2025, 7:59:34 PM
    Author     : Maredi Hunadi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee Page</title>
    </head>
    <body>
        <h1>Edit Employee</h1>
        <form action="EditEmployee.do" method="post">
            <table>
                <tr>
                    <td>Employee ID:</td>
                    <td><input type="text" name="id" required=""/></td>
                </tr>
                <tr>
                    <td>Updated Name</td>
                    <td><input type="text" name="name" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE NAME"/></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
