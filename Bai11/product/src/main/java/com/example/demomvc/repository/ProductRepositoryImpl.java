package com.example.demomvc.repository;

import com.example.demomvc.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository {
    private static Map<Integer, Product> productMap;

    static {
        productMap = new HashMap<>();
        productMap.put(1, new Product(1, "LapTop", 20000000, "Mô tả 1", "Asus"));
        productMap.put(2, new Product(2, "Iphone", 1000000, "Mô tả 2", "Apple"));
        productMap.put(3, new Product(3, "Tivi", 30000000, "Mô tả 3", "LG"));
        productMap.put(4, new Product(4, "Ipad", 15000000, "Mô tả 4", "Apple"));
        productMap.put(5, new Product(5, "PS4", 5000000, "Mô tả 5", "Sony"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void add(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void update(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void delete(int id) {
       productMap.remove(id);
    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }
}
