package net.skhu.controller;


<<<<<<< HEAD
=======
import net.skhu.Service.LectureService;
import net.skhu.Service.ReplaceService;
>>>>>>> ea1c33902b304f8da354dce739cb82d662721e7f
import net.skhu.Service.TypeIdentity;
import net.skhu.domain.*;
import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.ReplaceLectureMapper;
import net.skhu.mapper.StudentMapper;
import org.slf4j.LoggerFactory;
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
    private static org.slf4j.Logger logger =  LoggerFactory.getLogger(MainController.class);

    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    DepartmentMapper departmentMapper;
<<<<<<< HEAD
//    @Autowired
//    LectureService lectureService;
=======
    @Autowired
    LectureService lectureService;
    @Autowired
    ReplaceLectureMapper replaceLectureMapper;
    @Autowired
    ReplaceService replaceService;
>>>>>>> ea1c33902b304f8da354dce739cb82d662721e7f


    @RequestMapping(value = "graduation",method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type ,@RequestParam("id") int id)
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "login/main";
    }

    /* 수업관리 페이지*/
<<<<<<< HEAD
//    @RequestMapping("manageClass")
//    public String manageClass(Model model, @RequestParam("type") int type , @RequestParam("id") int id )
//    {
//
//        model.addAttribute("lectures",lectureService.lectureList());
//
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/manageClass";
//    }
//
//    /* 수업관리 페이지*/
//    @RequestMapping("classEdit")
//    public String edit(Model model,Lecture lecture, @RequestParam("type") int type , @RequestParam("id") int id )
//    {
//
//        model.addAttribute("lecture",lectureService.findLecture(lecture.getYear(), lecture.getId(),lecture.getAdmin_id()));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/classEdit";
//    }
=======

    @RequestMapping("manageClass")
    public String manageClass(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("id") int id )
    {
        pagination.setRecordCount(lectureService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/manageClass";
    }
>>>>>>> ea1c33902b304f8da354dce739cb82d662721e7f

//    @RequestMapping("manageClass")
//    public String manageClass(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("id") int id )
//    {
//        pagination.setRecordCount(lectureService.pageCount());
//        model.addAttribute("lectures",lectureService.lectureList(pagination));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/manageClass";
//    }
//
//    /* 수업수정 페이지*/
//    @RequestMapping("classEdit")
//    public String edit(Model model,@RequestParam("year") int year,@RequestParam("semester") String semester,@RequestParam("lecId") String lecId,
//                       @RequestParam("adminId") int adminId,  @RequestParam("type") int type , @RequestParam("userId") int id )
//    {
//        model.addAttribute("lecture",lectureService.findLecture(year,semester,lecId,adminId));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/classEdit";
//    }


    /* 수업등록 페이지*/
    @RequestMapping("classCreate")
    public String create(Model model,@RequestParam("type") int type , @RequestParam("id") int id )
    {
        Lecture lecture =new Lecture();
        model.addAttribute("lecture",lecture);

        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/classEdit";
    }
<<<<<<< HEAD
=======


    /* 대체과목 페이지*/
    @RequestMapping("showReplaceLecture")
    public String showReplaceLecture(Model model,Pagination pagination)
    {
        pagination.setRecordCount(replaceService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("replaceLecture",replaceService.replaceLectureList());

        return "main/replaceLecture";
    }


>>>>>>> ea1c33902b304f8da354dce739cb82d662721e7f


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

    /*
      student.getType을 지정한이유
      student로 바인딩 되서 타입을 담고있다.그래서 type이 2가 되어서 교수 정보를 가져올 수 있다.
     */

    @RequestMapping(value = "studentEdit", method = RequestMethod.GET)
    public String edit(Model model, Student student , Pagination pagination ,@RequestParam("adminId")  int adminId)
    {
        model.addAttribute("student",studentMapper.findByStudent(student.getId()));
        model.addAttribute("member",typeIdentity.typeCheck(student.getType(),adminId));
        model.addAttribute("departments",departmentMapper.findAll());
        return "main/studentEdit";
    }


    @RequestMapping(value = "studentEdit", method = RequestMethod.POST)
    public String edit(Student student,RedirectAttributes redirectAttributes,@RequestParam("adminId")  int adminId)
    {
        studentMapper.updateNameAndDepartment(student);
        redirectAttributes.addAttribute("type",student.getType());
        redirectAttributes.addAttribute("id",adminId);
        return "redirect:studentManager";
    }

    @RequestMapping(value="studentManager2", method=RequestMethod.GET)
    public String studentManager2(Model model,@RequestParam("studentId") int studentId, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        Student student = studentMapper.findById(studentId);
        model.addAttribute("student", student);
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
