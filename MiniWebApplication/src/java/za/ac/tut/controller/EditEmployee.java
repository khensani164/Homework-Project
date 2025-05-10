
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.entities.Employee;


public class EditEmployee extends HttpServlet {
@EJB EmployeeFacadeLocal efl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        Long id=Long.parseLong(request.getParameter("id"));
        Integer temp=Integer.parseInt(request.getParameter("temp"));
        Employee emp=createEmployee(id,temp);
        request.setAttribute("emp", emp);
        RequestDispatcher disp=request.getRequestDispatcher("editEmployee_outcome.jsp");
        disp.forward(request, response);
    }

    private Employee createEmployee(Long id, Integer temp) {
        Employee emp=efl.find(id);
        emp.setTemp(temp);
        return emp;
    }


}
