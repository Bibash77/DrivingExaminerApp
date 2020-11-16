package net.viralpatel.springbootjspexample;

import net.viralpatel.springbootjspexample.core.UserConst;
import net.viralpatel.springbootjspexample.core.UserType;
import net.viralpatel.springbootjspexample.model.User;
import net.viralpatel.springbootjspexample.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.util.ObjectUtils;

import javax.annotation.PostConstruct;

@SpringBootApplication
public class SpringBootJspExampleApplication  extends SpringBootServletInitializer {
	@Autowired
	private UserRepository userRepository;

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SpringBootJspExampleApplication.class);
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(SpringBootJspExampleApplication.class, args);
	}

	@PostConstruct
	public void defaultAdmin(){
		User prevUser = userRepository.findUserByUserName(UserConst.DEFAULT_USERNAME);
		if(ObjectUtils.isEmpty(prevUser)){
			User user = new User();
			user.setUserName(UserConst.DEFAULT_USERNAME);
			user.setPassword(UserConst.DEFAULT_PASSWORD);
			user.setUserType(UserType.ADMIN);
			userRepository.save(user);
		}
	}

}