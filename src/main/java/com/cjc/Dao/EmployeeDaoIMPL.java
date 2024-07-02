package com.cjc.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjc.Model.Employee;

@Repository
public class EmployeeDaoIMPL implements EmployeeDao {

	@Autowired
	private SessionFactory factory;

	public void registerEmployee(Employee employee) {
		System.out.println("dao layer");
		Session session = factory.openSession();
		session.save(employee);
		session.beginTransaction().commit();
		System.out.println("Data Save");
	}

	public List<Employee> getAllEmployeeDetails() {
		Session session = factory.openSession();
		Query query = session.createQuery("from Employee");
		List<Employee> list = query.getResultList();
		session.close();
		return list;
	}

	public List<Employee> deleteEmployee(int eid) {
		Session session = factory.openSession();
		Employee employee = session.get(Employee.class, eid);
		Transaction tx = session.beginTransaction();
		session.delete(employee);
		tx.commit();
		return getAllEmployeeDetails();
	}

	public Employee editeEmployee(int eid) {

		return factory.openSession().get(Employee.class, eid);
	}

	public void updateEmployee(Employee employee) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(employee);
		tx.commit();

	}

}
