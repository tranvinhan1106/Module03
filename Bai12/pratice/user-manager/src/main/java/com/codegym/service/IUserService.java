package com.codegym.service;

import com.codegym.model.User;

import java.util.List;

public interface IUserService {
    void insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUser();
    List<User> selectCountry(String country);

    boolean deleteUser(int id);

    boolean updateUser(User user);
}
