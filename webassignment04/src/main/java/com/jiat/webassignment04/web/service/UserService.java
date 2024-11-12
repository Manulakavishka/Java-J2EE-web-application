package com.jiat.webassignment04.web.service;

import com.jiat.webassignment04.web.dto.UpdateDTO;
import jakarta.persistence.NoResultException;
import com.jiat.webassignment04.web.entity.Employee;
import com.jiat.webassignment04.web.util.HibernateUtil;
import jakarta.persistence.Tuple;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class UserService implements EmployeeServicee {
    @Override
    public Employee getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Employee.class, id);
    }
    @Override
    public Employee getByNIC(String nic){
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            return session.createQuery("SELECT u FROM Employee u WHERE u.nic=:nic", Employee.class)
                    .setParameter("nic", nic)
                    .uniqueResult();
        }catch (NoResultException e){
            return null;
        }

    }
@Override
    public void save(Employee user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
//        System.out.println(user.getNic());
//        System.out.println(user.getPassword());
        session.persist(user);
        transaction.commit();
        session.close();
        System.out.println("success");
    }

    @Override
    public List<Tuple> getAllEmployees() {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
//            List<Employee> employees = session.createQuery("SELECT u FROM Employee u", Employee.class).getResultList();
//            session.close();
//            return employees;
            CriteriaBuilder cb = session.getCriteriaBuilder();
            CriteriaQuery<Tuple> tupleQuery = cb.createTupleQuery();
            Root<Employee> root5 = tupleQuery.from(Employee.class);
            tupleQuery.multiselect(
                    root5.get("firstName").alias("fn"), //as
                    root5.get("lastName").alias("ln"),
                    root5.get("department").alias("dep"),
                    root5.get("education").alias("ed"),
                    root5.get("gender").alias("gender"),
                    root5.get("nic").alias("nic"),
                    root5.get("password").alias("pw"),
                    root5.get("salary").alias("salary"),
                    root5.get("position").alias("pos"),
                    root5.get("hireDate").alias("hire"),
                    root5.get("id").alias("id")
                    );

            List<Tuple> list = session.createQuery(tupleQuery).getResultList();
            return list;
        }catch (Exception e){
            return null;
        }
    }

    @Override
    public void updateEmployee(Employee employee) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.update(employee);
        transaction.commit();
        session.close();
        System.out.println("success");
    }

    @Override
    public void deleteEmployee(Long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();

        Employee employee = session.createQuery("SELECT u FROM Employee u WHERE u.id=:id", Employee.class)
                .setParameter("id", id)
                .uniqueResult();
        session.remove(employee);
        transaction.commit();
        session.close();
        System.out.println("success");
    }
}
