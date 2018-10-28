package net.skhu.controller;

import net.skhu.Service.TypeIdentity;
import net.skhu.domain.Department;
import net.skhu.domain.Student;
import net.skhu.domain.User;
import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

<<<<<<< HEAD
=======
import java.util.List;
import java.util.logging.Logger;

>>>>>>> 36602b827b07dabb68a90b5d53c0fdf8d18787cf

@Controller
@RequestMapping("/")
public class LoginController {
    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    DepartmentMapper departmentMapper;

    @RequestMapping(value="signUp",method=RequestMethod.GET)
    public String signUp(Model model,Student student) {
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("departments",departments);
        model.addAttribute("student",student);
        return "login/signUp";

    }

    /*김지은 추가 insert*/
    @RequestMapping(value="signUp", method=RequestMethod.POST)
    public String create(Student student) {
        studentMapper.insert(student);
        return "../../login";
    }
   /* 김지은 추가 중복 아이디 체크*/
    /*학번 중복체크*/
   @ResponseBody
   @RequestMapping(value="checkSignup", method=RequestMethod.POST)
   public  String  checkSignup(Student student,Model model)
   {
       int rowCount = studentMapper.selectByLoginIdCheck(student.getId());
       return String.valueOf(rowCount);
   }
    @RequestMapping("findPassword")
    public String findPassword() {
        return "login/findPassword";
    }


    @RequestMapping("guest")
    public String guestMain(Model model) {
        model.addAttribute("type", 0);
        return "login/main";

    }

    @RequestMapping(value = "graduation")
    public String login(Model model, User user) {
        Object check=typeIdentity.distinct(user);
        if(check == null) {
            model.addAttribute("id",user.getId());
            model.addAttribute("error","fail");
            return "../../login";
        }
        else{
            model.addAttribute("member", check);
            return "login/main";
        }
<<<<<<< HEAD
//        model.addAttribute("member", typeIdentity.distinct(user));
//        model.addAttribute("type", user.getType());
//        return "login/main";
    }

    @RequestMapping("myInfo")
    public String myInfo(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/myInfo";
=======

>>>>>>> 36602b827b07dabb68a90b5d53c0fdf8d18787cf
    }

    @RequestMapping(value = "password", method = RequestMethod.POST)
    @ResponseBody
    public String password(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("answer") String answer)
    {
        return studentMapper.findByPassword(id, name, answer);
    }




}
