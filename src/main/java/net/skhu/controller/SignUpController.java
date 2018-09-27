package net.skhu.controller;

import net.skhu.domain.Student;
import net.skhu.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController
{

    @Autowired
    StudentRepository studentRepository;

    @RequestMapping("member")
    public String member(Student student)
    {
        studentRepository.save(student);
        return "redirect:login.jsp";
    }
}
