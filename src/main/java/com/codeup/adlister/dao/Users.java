package com.codeup.adlister.dao;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
}
