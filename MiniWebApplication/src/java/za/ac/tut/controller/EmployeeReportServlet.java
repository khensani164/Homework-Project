package za.ac.tut.controller;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.model.EmployeeFacade;

public class EmployeeReportServlet extends HttpServlet {

    @EJB
    private EmployeeFacade employeeFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        long highCount = employeeFacade.countHighTempEmployees();
        long lowCount = employeeFacade.countLowTempEmployees();
        
        request.setAttribute("highCount", highCount);
        request.setAttribute("lowCount", lowCount);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("temperature_report.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Employee Temperature Report Servlet";
    }
}