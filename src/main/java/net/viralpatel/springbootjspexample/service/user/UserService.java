package net.viralpatel.springbootjspexample.service.user;

import net.viralpatel.springbootjspexample.model.User;

import java.util.List;

public interface UserService {

    User findOne(Long id);

    User save(User u);

    List<User> findAll();
}
