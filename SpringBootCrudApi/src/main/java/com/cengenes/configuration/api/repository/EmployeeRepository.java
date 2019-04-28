package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.employee.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    List<Employee> findAll();
    Page<Employee> findAll(Pageable p);
    Employee save(Employee e);
    void deleteEmployeeById(Integer id);
    Employee findEmployeeById( Integer id);
}