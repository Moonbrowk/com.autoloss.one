package com.autoloss.one.service;

import com.autoloss.one.model.User;



public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
