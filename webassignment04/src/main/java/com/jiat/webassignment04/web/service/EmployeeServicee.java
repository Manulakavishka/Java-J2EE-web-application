package com.jiat.webassignment04.web.service;


import com.jiat.webassignment04.web.dto.UpdateDTO;
import com.jiat.webassignment04.web.entity.Employee;
import jakarta.persistence.Tuple;

import java.util.List;

public interface EmployeeServicee {
    List<Tuple> getAllEmployees();
    public Employee getById(Long id);
    public Employee getByNIC(String nic);
    public void save(Employee employee);
    public void updateEmployee(Employee employee);
    public void deleteEmployee(Long id);
}
