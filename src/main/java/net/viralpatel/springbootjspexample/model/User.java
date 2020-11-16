package net.viralpatel.springbootjspexample.model;
import com.sun.istack.internal.NotNull;
import net.viralpatel.springbootjspexample.core.UserType;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
    // defining id
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    public Answers getAnswers() {
        return answers;
    }

    public void setAnswers(Answers answers) {
        this.answers = answers;
    }

    @NotNull
    private String userName;

    @OneToOne
    private Answers answers;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    @NotNull
    private String password;

    public User(Long id, String userName, String password, UserType userType , Answers answers) {
        this.id = id;
        this.answers = answers;
        this.userName = userName;
        this.password = password;
        this.userType = userType;
    }
    public User() {

    }

    private UserType userType;
}
