package net.viralpatel.springbootjspexample.controller;

import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ViewController {


    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public String welcome(ModelMap modelMap) {

        modelMap.put("message", "helloMessage");

        return "index";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username , @RequestParam String password , ModelMap modelMap) {
        // todo find user type and return view according to it

        User user = userRepository.findUserByUserName(username);
        if (user == null) {
            modelMap.put("error" , "user not found");
            return "index";
        }
        if(!user.getPassword().equals(password)){
            modelMap.put("error" , "Incorrect Password!!");
            return "index";
        }
        modelMap.put("user" , user);

        return "admin-dashboard";
    }

    @GetMapping("/exam")
    public String takeExam() {
        return "exam-form";
    }
}
