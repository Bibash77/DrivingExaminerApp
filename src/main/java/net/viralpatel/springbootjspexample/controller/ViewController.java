package net.viralpatel.springbootjspexample.controller;

import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import net.viralpatel.springbootjspexample.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class ViewController {


    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String welcome(ModelMap modelMap) {

        modelMap.put("message", "helloMessage");

        return "index";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username , @RequestParam String password , ModelMap modelMap, HttpServletResponse response,HttpServletRequest request) {
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
        Cookie name = new Cookie("username",user.getUserName());
        Cookie userId = new Cookie("userId",user.getId().toString());
        Cookie userType = new Cookie("userType",user.getUserType().toString());
//        Cookie email = new Cookie("email", "rockaygmail.com");
        name.setMaxAge(7*24*60*60);
        // Add both the cookies in the response header.
        response.addCookie(name);
        response.addCookie(userId);
        response.addCookie(userType);
        return "admin-dashboard";
    }

    @GetMapping("/exam")
    public String takeExam(ModelMap modelMap , @RequestParam String userId) {
        modelMap.put("userId" , userId);
        return "exam-form";
    }

    @GetMapping("/index")
    public String logout() {
        return "index";
    }

    @GetMapping("/home")
    public String home(HttpServletRequest httpServletRequest , ModelMap modelMap) {
        Map<String, Cookie> cookieMap = new HashMap<>();
        for (Cookie cookie : httpServletRequest.getCookies()) {
            cookieMap.put(cookie.getName(), cookie);
        }
        if(ObjectUtils.isEmpty(cookieMap)){
            return "index";
        }

        modelMap.put("user" , cookieMap);
        return "admin-dashboard";
    }

    @GetMapping("/view-answers")
    public String viewUserAnswers(ModelMap modelMap){
        List<User> users = userService.findAll();
        modelMap.put("userList" , users);
        return "view-answer";
    }
}
