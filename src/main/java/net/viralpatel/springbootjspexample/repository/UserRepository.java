package net.viralpatel.springbootjspexample.repository;

import net.viralpatel.springbootjspexample.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User , Long> {
    User findUserByUserName(String userName);
}
