package net.viralpatel.springbootjspexample.service.answer;

import net.viralpatel.springbootjspexample.model.Answers;

import java.util.List;

public interface AnswerService {
    Answers findOne(Long id);

    Answers save(Answers u);

    List<Answers> findAll();
}
