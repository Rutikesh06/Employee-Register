package com.cjc.Dao;

import java.util.List;

import com.cjc.Model.Employee;

public interface EmployeeDao {

	List<Employee> getAllEmployeeDetails();

	void registerEmployee(Employee employee);

	void updateEmployee(Employee employee);

	List<Employee> deleteEmployee(int rollno);

	Employee editeEmployee(int eid);

}
