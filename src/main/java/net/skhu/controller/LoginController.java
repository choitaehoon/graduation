package net.skhu.controller;

import net.skhu.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController
{
    @Autowired  StudentRepository studentRepository;

    @RequestMapping("main")
    public String login(Model model, @Param("id") int id)
    {
        System.out.println(studentRepository.findById(id));
        model.addAttribute("informations",studentRepository.findById(id));
        return "login/main";
    }
}
