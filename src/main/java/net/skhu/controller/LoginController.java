package net.skhu.controller;

import net.skhu.domain.Student;
import net.skhu.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController
{
    @Autowired  StudentRepository studentRepository;

    @RequestMapping("signUp")
    public String singUp(Model model)
    {
        model.addAttribute("Student",new Student());

        return "login/signUp";
    }
    @RequestMapping("main")
    public String login(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/main";
    }
}
