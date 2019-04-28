package com.cengenes.configuration.api.controller;

import com.cengenes.configuration.api.entity.book.Book;
import com.cengenes.configuration.api.entity.book.BookResponse;
import com.cengenes.configuration.api.entity.response.OperationResponse;
import com.cengenes.configuration.api.repository.BookRepository;
import com.cengenes.configuration.api.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping(value = "/api", produces = MediaType.APPLICATION_JSON_VALUE)
@CrossOrigin(origins = "http://localhost:4200", allowedHeaders = "*")
public class BookController {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private AuthService authService;

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public BookResponse getProductsByPage(
            @RequestParam(value = "page", defaultValue = "0", required = false) Integer page,
            @RequestParam(value = "size", defaultValue = "20", required = false) Integer size,
            @RequestParam(value = "bookId", required = false) Integer bookId,
            @RequestParam(value = "category", required = false) String category,
            @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response,
            Pageable pageable
    ) {
        authService.authenticate(authorization, response);
        BookResponse resp = new BookResponse();
        if (response.getStatus() == 200) {
            Book qry = new Book();
            if (bookId != null) {
                qry.setId(bookId);
            }
            if (category != null) {
                qry.setCategory(category);
            }

            Page<Book> productPage = bookRepository.findAll(org.springframework.data.domain.Example.of(qry), pageable);
            resp.setPageStats(productPage, true);
            resp.setItems(productPage.getContent());
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }

    @PostMapping(value = "/books", produces = {"application/json"})
    public OperationResponse addNewProduct(@RequestBody Book book, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if (response.getStatus() == 200) {
            if (this.bookRepository.findBookById(book.getId()) != null) {
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                resp.setOperationMessage("Unable to add Product - Product already exist ");
            } else {
                //Product addedProduct = this.productRepo.save(product);
                this.bookRepository.save(book);
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                resp.setOperationMessage("Product Added");
            }
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }

    @RequestMapping(value = "/books/{bookId}", method = RequestMethod.DELETE, produces = {"application/json"})
    public OperationResponse deleteProduct(@PathVariable("bookId") Integer bookId, @RequestHeader(value = "Authorization") String authorization, HttpServletResponse response) {
        authService.authenticate(authorization, response);
        OperationResponse resp = new OperationResponse();
        if (response.getStatus() == 200) {
            if (this.bookRepository.findBookById(bookId) != null) {
                this.bookRepository.deleteById(bookId);
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.SUCCESS);
                resp.setOperationMessage("Product Deleted");
            } else {
                resp.setOperationStatus(OperationResponse.ResponseStatusEnum.ERROR);
                resp.setOperationMessage("No Product Exist");
            }
        } else {
            resp.setOperationStatus(OperationResponse.ResponseStatusEnum.NO_ACCESS);
            resp.setOperationMessage("No access");
        }

        return resp;
    }
}
