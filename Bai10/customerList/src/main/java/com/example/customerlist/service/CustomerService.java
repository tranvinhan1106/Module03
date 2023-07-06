package com.example.customerlist.service;

import com.example.customerlist.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService {
    private static Map<Integer, Customer> customerMap;

    static {
        customerMap = new HashMap<>();
        String img1 = "/img/1.jpg";
        customerMap.put(1, new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", img1));
        String img2 = "/img/2.jpg";
        customerMap.put(2, new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", img2));
        String img3 = "/img/3.jpg";
        customerMap.put(3, new Customer("Nguyễn Thái  Hòa", "1983-08-22", "Nam Định", img3));
        String img4 = "/img/4.jpg";
        customerMap.put(4, new Customer("Trần Đăng  Khoa", "1983-08-17", "Hà Tây", img4));
        String img5 = "/img/5.jpg";
        customerMap.put(5, new Customer("Nguyễn  Đình Thi", "1983-08-19", "Hà Nội", img5));
    }

    public List<Customer> findAll() {
        return new ArrayList<>(customerMap.values());
    }
}
