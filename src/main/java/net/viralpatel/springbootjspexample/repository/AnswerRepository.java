package net.viralpatel.springbootjspexample.repository;

import net.viralpatel.springbootjspexample.model.Answers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnswerRepository extends JpaRepository<Answers, Long> {
}
