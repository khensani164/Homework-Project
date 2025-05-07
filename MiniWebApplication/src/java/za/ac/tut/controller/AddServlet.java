/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.bl.Outcome;
import za.ac.tut.entities.Employee;

/**
 *
 * @author khens
 */
public class AddServlet extends HttpServlet {
   
   private Outcome out = new Outcome();
   @EJB
   private EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        Integer temp =Integer.parseInt(request.getParameter("temp"));
        String outcome = out.outcomeTemp(temp);
        Employee emp = createEmployee(name, temp, outcome);
        efl.create(emp);
        request.setAttribute("name", name);
        RequestDispatcher disp = request.getRequestDispatcher("result.jsp");
        disp.forward(request, response);
    }

   private Employee createEmployee(String name,int temp,String outcome){
       
       Employee emp = new Employee();
      
       emp.setName(name);
       emp.setTemp(temp);
       emp.setOutcome(outcome);
       emp.setCreationDate(new Date());
        return emp;
       
   }
           

}
