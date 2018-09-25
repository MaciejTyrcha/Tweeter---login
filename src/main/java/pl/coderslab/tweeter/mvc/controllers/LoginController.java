package pl.coderslab.tweeter.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.tweeter.entities.User;
import pl.coderslab.tweeter.repositories.UserRepository;

@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user) {
        String username = user.getUsername();
        String email = user.getEmail();
        User alreadyRegisterUser = userRepository.
                findFirstByUsernameOrEmailAllIgnoreCase(username, email);
        if (alreadyRegisterUser != null) {
            return "redirect:/register?alreadyExists=true";
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));


        String password = "123";
        passwordEncoder.matches(password, user.getPassword());
        userRepository.save(user);
        return "redirect:/";
    }
}
