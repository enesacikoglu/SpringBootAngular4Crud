package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.customer.Customer;
import com.cengenes.configuration.api.entity.customer.CustomerResponse;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.repository.CustomerRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletResponse;

@RestController
@Transactional
@RequestMapping(value = "/api", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private AuthService authService;

    @GetMapping(value = "/customers")
    public CustomerResponse getCustomersByPage(@RequestParam(value = "page", defaultValue = "0", required = false) Integer page,
                                               @RequestParam(value = "size", defaultValue = "20", required = false) Integer size,
                                               @RequestParam(value = "customerid", required = false) Integer customerId,
                                               @RequestParam(value = "company", required = false) String company,
                                               @RequestParam(value = "country", required = false) String country,
                                               @RequestHeader(value = "Authorization") String authorization,
                                               Pageable pageable, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        CustomerResponse customerResponse = new CustomerResponse();
        if (response.getStatus() == 200) {
            Customer qry = new Customer();
            if (customerId != null) {
                qry.setId(customerId);
            }
            if (company != null) {
                qry.setCompany(company);
            }
            if (country != null) {
                qry.setCountry(country);
            }

            Page<Customer> pg = customerRepository.findAll(org.springframework.data.domain.Example.of(qry), pageable);
            customerResponse.setPageStats(pg, true);
            customerResponse.setItems(pg.getContent());
        } else {
            customerResponse.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            customerResponse.setOperationMessage("No access");
        }

        return customerResponse;
    }

    @PostMapping(value = "/customers", produces = {"application/json"})
    public OperationResponse addNewCustomer(@RequestBody() Customer customer, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if (response.getStatus() == 200) {
            if (this.customerRepository.findCustomerById(customer.getId()) != null) {
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                resp.setOperationMessage("Unable to add Customer - Customer already exist ");
            } else {
                Customer addedCustomer = this.customerRepository.save(customer);
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                resp.setOperationMessage("Customer Added");
            }
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }

    @DeleteMapping(value = "/customers/{customerId}", produces = {"application/json"})
    public OperationResponse deleteCustomer(@PathVariable("customerId") Integer customerId, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if (response.getStatus() == 200) {
            try {
                if (this.customerRepository.findCustomerById(customerId) != null) {
                    this.customerRepository.deleteCustomerById(customerId);
                    resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                    resp.setOperationMessage("Customer Deleted");
                } else {
                    resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                    resp.setOperationMessage("No Customer Exist");
                }
            } catch (Exception ge) {
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                resp.setOperationMessage(ge.getMessage());
            }
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }
}
