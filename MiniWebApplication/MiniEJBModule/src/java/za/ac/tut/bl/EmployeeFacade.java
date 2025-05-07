/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Employee;

/**
 *
 * @author khens
 */
@Stateless
public class EmployeeFacade extends AbstractFacade<Employee> implements EmployeeFacadeLocal {

    @PersistenceContext(unitName = "MiniEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeeFacade() {
        super(Employee.class);
    }
    @RolesAllowed("manager")
    @Override
    public List<Employee> highTemORaccebtable(String outcome) {
      Query query = em.createQuery("SELECT e from Employee e where e.outcome =?1");
       query.setParameter(1,outcome);
       List<Employee> employees = query.getResultList();
        return employees;
    }
    
}
