/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
 * @author khens
 */
public class ListServlet extends HttpServlet {
@EJB
private  EmployeeFacadeLocal efl;
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String option = request.getParameter("option");
        String url ="";
        if(option.equals("high")){
         List<Employee> employees = efl.highTemORaccebtable(option);
          request.setAttribute("employees",employees);
         url = "high.jsp";
        }
         if (option.equals("acceptable")){
          List<Employee> employees = efl.highTemORaccebtable(option); 
          request.setAttribute("employees",employees);
          url = "accep.jsp";
        }
         
          RequestDispatcher disp = request.getRequestDispatcher(url);
        disp.forward(request, response);
    }
}
