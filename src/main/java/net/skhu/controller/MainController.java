package net.skhu.controller;


import net.skhu.Service.LectureService;
import net.skhu.Service.ReplaceService;
import net.skhu.Service.TypeIdentity;
import net.skhu.domain.*;
import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.ReplaceLectureMapper;
import net.skhu.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
    @Autowired
    LectureService lectureService;
    @Autowired
    ReplaceLectureMapper replaceLectureMapper;
    @Autowired
    ReplaceService replaceService;


    @RequestMapping(value = "graduation",method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type ,@RequestParam("id") int id)
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "login/main";
    }

    /* 수업관리 페이지*/

    @RequestMapping("manageClass")
    public String manageClass(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("id") int id )
    {
        pagination.setRecordCount(lectureService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/manageClass";
    }

    /* 수업수정 페이지*/
    @RequestMapping("classEdit")
    public String edit(Model model,@RequestParam("year") int year,@RequestParam("semester") String semester,@RequestParam("lecId") String lecId,
                       @RequestParam("adminId") int adminId,  @RequestParam("type") int type , @RequestParam("userId") int id )
    {
        model.addAttribute("lecture",lectureService.findLecture(year,semester,lecId,adminId));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/classEdit";
    }


    /* 수업등록 페이지*/
    @RequestMapping("classCreate")
    public String create(Model model,@RequestParam("type") int type , @RequestParam("id") int id )
    {
        Lecture lecture =new Lecture();
        model.addAttribute("lecture",lecture);

        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/classEdit";
    }


    /* 대체과목 페이지*/
    @RequestMapping("showReplaceLecture")
    public String showReplaceLecture(Model model,Pagination pagination)
    {
        pagination.setRecordCount(replaceService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("replaceLecture",replaceService.replaceLectureList());

        return "main/replaceLecture";
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
    public String studentManager(Model model, Pagination pagination, @RequestParam("type") int type , @RequestParam("id") int id )
    {
        pagination.setRecordCount(studentMapper.selectCount());
        model.addAttribute("listes",studentMapper.selectPage(pagination));
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

    @RequestMapping("studentEdit")
    public String edit(Model model, Student student ,@RequestParam("type") int type ,@RequestParam("id") int id)
    {
        model.addAttribute("member",studentMapper.findByStudent(id));
        model.addAttribute("departments",departmentMapper.findAll());
        return "main/studentEdit";
    }

    @RequestMapping(value="studentManager2", method=RequestMethod.GET)
    public String studentManager2(Model model,@RequestParam("studentId") int studentId, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        Student student = studentMapper.findById(studentId);
        model.addAttribute("student", student);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/studentManager2";
    }


}
