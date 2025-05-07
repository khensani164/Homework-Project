/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.entities.Employee;

/**
 *
 * @author ndima mhangwani
 */
public class removeEmployeeServlet extends HttpServlet {

 @EJB
 private EmployeeFacadeLocal fl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      Long employeeID = Long.parseLong(request.getParameter("employeeID"));
      Employee employee = fl.find(employeeID);
      fl.remove(employee);
      request.setAttribute("employee",employee);
      
      RequestDispatcher rd = request.getRequestDispatcher("remove_employee_outcome.jsp");
      rd.forward(request, response);
      
    }

}