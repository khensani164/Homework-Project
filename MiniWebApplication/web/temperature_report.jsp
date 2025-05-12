<%-- 
    Document   : temperature_report
    Created on : 12 May 2025, 14:08:12
    Author     : mikendlovu
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Temperature Report</title>
</head>
<body>

<h2>Employee Temperature Report</h2>

<table border="1">
    <tr>
        <th>Category</th>
        <th>Count</th>
    </tr>
    <tr>
        <td>Employees with High Temperature (&gt; 37.5°C)</td>
        <td>${highCount}</td>
    </tr>
    <tr>
        <td>Employees with Normal/Low Temperature (≤ 37.5°C)</td>
        <td>${lowCount}</td>
    </tr>
</table>

<br>
<a href="index.html">Back to Home</a>

</body>
</html>