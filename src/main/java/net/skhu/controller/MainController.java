package net.skhu.controller;


import net.skhu.Service.TypeIdentity;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/main")
public class MainController {

    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    DepartmentMapper departmentMapper;

    @RequestMapping(value = "graduation",method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type ,@RequestParam("id") int id)
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "login/main";
    }

    @RequestMapping("manageClass")
    public String manageClass(Model model, @RequestParam("type") int type , @RequestParam("id") int id )
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/manageClass";
    }

    /*
//    내정보
//     */
    @RequestMapping("myInfo")
    public String myInfo(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        System.out.println(type+" "+id+" "+"myInfo");
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/myInfo";
    }

    @RequestMapping(value = "updateMember")
    public String updateMember(User user, RedirectAttributes redirectAttributes)
    {
        typeIdentity.typeUpdate(user);
        redirectAttributes.addAttribute("type",user.getType());
        redirectAttributes.addAttribute("id",user.getId());
        System.out.println(user.getType()+" "+user.getId()+" "+"updateMember");
        return "redirect:myInfo";
    }

    @RequestMapping("studentManager")
    public String studentManager(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        model.addAttribute("students", studentMapper.findAll());
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/studentManager";
    }

    @RequestMapping("test")
    public String test(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        List<Student> students = studentMapper.findAll();
        model.addAttribute("students", students);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/test";
    }

    @RequestMapping("studentManager2")
    public String studentManager2(Model model,@RequestParam("studentId") int studentId, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/studentManager2";
    }





//
//    @RequestMapping("myInfo")
//    public String myInfo(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/myInfo";
//    }

//    @RequestMapping("member")
//    public String member(Student student) {
//        studentRepository.save(student);
//        return "../login.jsp";
//    }

/*
 * 학생 관리
 */
//    @RequestMapping("studentManager")
//    public String administration(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        model.addAttribute("student", studentRepository.findAll());
//        return "login/studentManager";
//    }

//    @RequestMapping("manager_stu_info")
//    public String manager_stu_info(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/manager_stu_info";
//    }

//    @RequestMapping("graduationInfo")
//    public String graduationInfo(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/graduationInfo";
//    }
//
//    @RequestMapping("before18")
//    public String before18(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/before18";
//    }
//
//    @RequestMapping("after18")
//    public String after18(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/after18";
//    }
//
//    @RequestMapping("grdRegister")
//    public String grdRegister(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/grdRegister";
//    }
//
//    @RequestMapping("grdUpdate")
//    public String grdUpdate(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/grdUpdate";
//    }
//
//    @RequestMapping("majorUpdate")
//    public String majorUpdate(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/majorUpdate";
//    }
//
////    @RequestMapping("noticeBoard")
////    public String notice(Model model, Student student) {
////        model.addAttribute("students", studentRepository.findById(student.getId()));
////        return "login/noticeBoard";
////    }
////
////    @RequestMapping("question")
////    public String question(Model model, Student student) {
////        model.addAttribute("students", studentRepository.findById(student.getId()));
////        return "login/question";
////    }
//
//    @RequestMapping("help")
//    public String help(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/help";
//    }
//
//    @RequestMapping("q&a")
//    public String qna(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/q&a";
//    }
//
//    @RequestMapping("notice")
//    public String notice(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/notice";
//    }
//
//    @RequestMapping("noticeManager")
//    public String noticeManager(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/noticeManager";
//    }
//
//    @RequestMapping("noticeReplace")
//    public String noticeReplace(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
//        model.addAttribute("member", typeIdentity.typeSearch(type, id));
//        return "login/noticeReplace";
//    }
}
