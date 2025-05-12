<%-- 
    Document   : removeEmployee
    Created on : 07 May 2025, 3:31:22 PM
    Author     : ndima mhangwani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Employee Page</title>
    </head>
    <body>
        <h1>Remove employee</h1>
        <form action="removeEmployeeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Employee ID:</td>
                    <td><input type="text" name="employeeId" required=""/></td>
                    
                         </tr>  
                          <tr>
                                <td></td>
                                <td><input type="submit" value="REMOVE EMPLOYEE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
