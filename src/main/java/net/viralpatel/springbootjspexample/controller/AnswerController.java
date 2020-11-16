package net.viralpatel.springbootjspexample.controller;

import net.viralpatel.springbootjspexample.model.Answers;
import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.service.answer.AnswerService;
import net.viralpatel.springbootjspexample.service.user.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@RestController

@RequestMapping("/answer")
public class AnswerController {
    private AnswerService answerService;
    private UserService userService;

    public AnswerController(AnswerService answerService, UserService userService) {
        this.answerService = answerService;
        this.userService = userService;
    }

    @PostMapping("/submit")
    public ResponseEntity<?> saveAnswer(@RequestBody Answers answer){
      try {
          User user = userService.findOne(answer.getUserId());
          user.setAnswers(answerService.save(answer));
          userService.save(user);
          return  ResponseEntity
                  .status(200)
                  .body("successfully submitted your answer !!!");
      } catch (Exception exception){
          return  ResponseEntity
                  .status(500)
                  .body("Unable to submit your answer !!!");
      }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getAnswers(@PathVariable String id) {
        User user = userService.findOne(Long.valueOf(id));
        if(user == null){
            ResponseEntity.status(200).body(null);
        }
        return ResponseEntity.status(200).body(Objects.requireNonNull(user).getAnswers());
    }

}
