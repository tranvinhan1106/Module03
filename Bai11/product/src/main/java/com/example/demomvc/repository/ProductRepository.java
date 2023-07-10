package com.example.demomvc.repository;

import com.example.demomvc.model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();
    void  add (Product product);
    void update(Product product);
    void delete(int id);
    Product findByName(String name );
    Product findById(int id);

}
