package com.cengenes.configuration.api.repository;

import com.cengenes.configuration.api.entity.book.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> findAll();
    Page<Book> findAll(Pageable p);
    Optional<Book> findOneById(Integer id);
    Book findBookById(Integer id);

    //Product deleteById(Integer id);
    //void delete(Product p) ;
    //void delete(Integer id);
    //boolean exists( Integer id);
    //Product save(Product p);
}