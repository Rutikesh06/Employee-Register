package com.cjc.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.Dao.EmployeeDao;
import com.cjc.Model.Employee;

@Service
public class EmployeeServiceIMPL implements EmployeeService {

	@Autowired
	private EmployeeDao dao;

	public void registerEmployee(Employee employee) {

		dao.registerEmployee(employee);

	}

	public List<Employee> getAllEmployeeDetails() {
	
		return dao.getAllEmployeeDetails();
	}

	
	  public void updateEmployee(Employee employee) {
	  
	  dao.updateEmployee(employee); }

	public List<Employee> deleteEmployee(int eid) {
	
		return dao.deleteEmployee(eid);
	}

	public Employee editeEmployee(int eid) {
	
		return dao.editeEmployee(eid);
	}
	 

}
