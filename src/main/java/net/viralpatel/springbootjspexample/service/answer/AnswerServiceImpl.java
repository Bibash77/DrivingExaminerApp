package net.viralpatel.springbootjspexample.service.answer;

import net.viralpatel.springbootjspexample.model.Answers;
import net.viralpatel.springbootjspexample.repository.AnswerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnswerServiceImpl implements AnswerService{

    @Autowired
    private AnswerRepository answerRepository;

    @Override
    public Answers findOne(Long id) {
        return answerRepository.getOne(id);
    }

    @Override
    public Answers save(Answers u) {
        return answerRepository.save(u);
    }

    @Override
    public List<Answers> findAll() {
        return answerRepository.findAll();
    }
}
