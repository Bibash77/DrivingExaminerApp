package net.viralpatel.springbootjspexample.controller;


import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    private UserRepository userRepository;

    @PostMapping("/register")
    public ResponseEntity<?>  register(@RequestBody User user){
        User user1 = userRepository.findUserByUserName(user.getUserName());
        if(user1 != null) {
            return ResponseEntity
                    .status(401)
                    .body("user already taken");
        }
        User saveUser = userRepository.save(user);
        if(saveUser == null) {
            return ResponseEntity
                    .status(401)
                    .body("failed to save user");
        }
        return ResponseEntity
                .status(200)
                .body("successfully saved !!!");
    }
}
