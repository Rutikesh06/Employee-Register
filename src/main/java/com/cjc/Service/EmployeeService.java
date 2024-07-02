package com.cjc.Service;

import java.util.List;

import com.cjc.Model.Employee;

public interface EmployeeService {

	void registerEmployee(Employee employee);

	List<Employee> getAllEmployeeDetails();

	 void updateEmployee(Employee employee);

	List<Employee> deleteEmployee(int eid);

	Employee editeEmployee(int eid); 
	
}
