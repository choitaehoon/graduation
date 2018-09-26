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

//    @RequestMapping("signUp")
//    public String singUp(Model model,Student student)
//    {
//        model.addAttribute("departments",departmentRepository.findAll());
//        model.addAttribute("student",new Student());
//
//        return "login/signUp";
//    }
    @RequestMapping("main")
    public String login(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/main";
    }

    @RequestMapping("signUp")
    public String signUp()
    {
        return "login/signUp";
    }

    @RequestMapping("before18")
    public String graduationSoftware(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/before18";
    }

    @RequestMapping("after18")
    public String after18(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/after18";
    }

    @RequestMapping("grdRegister")
    public String grdRegister(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/grdRegister";
    }
    @RequestMapping("grdUpdate")
    public String grdUpdate(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/grdUpdate";
    }

    @RequestMapping("majorUpdate")
    public String majorUpdate(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/majorUpdate";
    }

    @RequestMapping("noticeBoard")
    public String notice(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/noticeBoard";
    }
    @RequestMapping("question")
    public String question(Model model, Student student)
    {
        model.addAttribute("students",studentRepository.findById(student.getId()));
        return "login/question";
    }
}
