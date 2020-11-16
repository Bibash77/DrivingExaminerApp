package net.viralpatel.springbootjspexample.model;

import javax.persistence.*;

@Entity  // defines as persistable entity
@Table(name = "answers")
public class Answers {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    // lob annotation creates column as long text
    @Lob
    private String userAnswers;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Transient  // wont be saved in db
    private Long userId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserAnswers() {
        return userAnswers;
    }

    public void setUserAnswers(String userAnswers) {
        this.userAnswers = userAnswers;
    }

    public Answers(Long id, String userAnswers) {
        this.id = id;
        this.userAnswers = userAnswers;
    }

    public Answers() {

    }
}
