package za.ac.tut.controller;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.EmployeeFacadeLocal;
import za.ac.tut.entities.Employee;

public class ListEmployeeServlet extends HttpServlet {
@EJB
    private EmployeeFacadeLocal efl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Employee> employees = efl.findAll();

        request.setAttribute("employees", employees);
                
        RequestDispatcher disp = request.getRequestDispatcher("list_employee_outcome.jsp");
        disp.forward(request, response);
    }

}
