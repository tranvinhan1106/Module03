package com.codegym.util;

public class constants {
    public static final String INSERT_USERS_SQL = "Insert into users " +
            "(name , email , country) values (?,?,?)";
    public static final String SELECT_USER_BY_ID = "select id , name , email , country " +
            "from user where id = ?";
    public static final String SELECT_ALL_USERS = "Select * from users";
    public static final String DELETE_USERS_SQL = "delete from users where id =?;";
    public static final String UPDATE_USERS_SQL = "update users set name =?, email=?,country=? " +
            "where id =?;";
    public static final String SELECT_USER_BY_COUNTRY="select id , name , email , country " +
            "from users where country like ?";
}
