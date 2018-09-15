package net.skhu.controller;

import net.skhu.domain.Student;
import net.skhu.repository.DepartmentRepository;
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
    @Autowired  DepartmentRepository departmentRepository;

    @RequestMapping("signUp")
    public String singUp(Model model,Student student)
    {
        model.addAttribute("departments",departmentRepository.findAll());
        model.addAttribute("student",new Student());

        return "login/signUp";
    }
    @RequestMapping("main")
    public String login(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/main";
    }

    @RequestMapping("software")
    public String graduationSoftware(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/software";
    }

    @RequestMapping("noticeBoard")
    public String notice(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/noticeBoard";
    }
}
