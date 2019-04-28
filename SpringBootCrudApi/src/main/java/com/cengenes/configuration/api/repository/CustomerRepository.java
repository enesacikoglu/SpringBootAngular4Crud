package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.customer.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    List<Customer> findAll();
    Page<Customer> findAll(Pageable p);
    Customer save(Customer c);
    void deleteCustomerById(Integer id);
    Customer findCustomerById( Integer id);
}
