package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.employee.Employee;
import com.cengenes.configuration.api.entity.employee.EmployeeResponse;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.repository.EmployeeRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@Transactional
@RequestMapping(value="/api", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private AuthService authService;

    @GetMapping(value="/employees")
    public EmployeeResponse getEmployeesByPage(
            @RequestParam(value = "page"  ,  defaultValue="0"   ,  required = false) Integer page,
            @RequestParam(value = "size"  ,  defaultValue="20"  ,  required = false) Integer size,
            @RequestParam(value = "employeeid"  , required = false) Integer employeeId,
            @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response,
            Pageable pageable
    ) {
        authService.authenticate(authorization, response);
        EmployeeResponse resp = new EmployeeResponse();
        if(response.getStatus() == 200){
            Employee qry = new Employee();
            if (employeeId != null)  { qry.setId(employeeId); }

            Page<Employee> pg = employeeRepository.findAll(org.springframework.data.domain.Example.of(qry), pageable);
            resp.setPageStats(pg, true);
            resp.setItems(pg.getContent());
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }

    @PostMapping(value="/employees", produces = {"application/json"})
    public OperationResponse addNewEmployee(@RequestBody Employee employee, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if(response.getStatus() == 200){
            if (this.employeeRepository.findEmployeeById(employee.getId()) != null){
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                resp.setOperationMessage("Unable to add employee - employee allready exist ");
            }
            else{
                Employee addedEmployee = this.employeeRepository.save(employee);
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                resp.setOperationMessage("employee Added");
            }
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }


    @DeleteMapping(value = "/employees/{employeeId}", produces = {"application/json"})
    public OperationResponse deleteEmployee(@PathVariable("employeeId") Integer employeeId, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if(response.getStatus() == 200){
            try {
                if (this.employeeRepository.findEmployeeById(employeeId) != null){
                    this.employeeRepository.deleteEmployeeById(employeeId);
                    resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                    resp.setOperationMessage("employee Deleted");
                }
                else{
                    resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                    resp.setOperationMessage("No employee Exist");
                }
            }
            catch ( Exception ge ){
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
