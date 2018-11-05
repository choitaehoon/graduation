package net.skhu.controller;


import net.skhu.Service.LectureService;
import net.skhu.Service.ReplaceService;
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
    @Autowired
    LectureService lectureService;
    @Autowired
    ReplaceLectureMapper replaceLectureMapper;
    @Autowired
//    ReplaceService replaceService;


    @RequestMapping(value = "graduation",method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type ,@RequestParam("id") int id)
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "login/main";
    }


    @RequestMapping("manageClass")
    public String manageClass(Model model,Pagination pagination, @RequestParam("type") int type , @RequestParam("id") int id )
    {

        pagination.setRecordCount(lectureService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/manageClass";
    }

    @RequestMapping(value = "manageClass",method = RequestMethod.POST)
    public String manageClass(Model model,Pagination pagination,@RequestParam(value = "choice", defaultValue = "0") int choice,
                              @RequestParam(value = "srch",defaultValue = "") String srch, @RequestParam("type") int type , @RequestParam("userId") int id )
    {
        pagination.setRecordCount(lectureService.pageSrchCount(choice,srch));

        model.addAttribute("lectures",lectureService.srchByLecList(pagination.getPg(),pagination.getPageSize(),choice,srch));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        model.addAttribute("selected",lectureService.selectCheck(choice));
        return "main/manageClass";
    }

//    /* 수업수정 페이지*/
    @RequestMapping("classEdit")
    public String edit(Model model,Pagination pagination,@RequestParam("year") int year,@RequestParam("semester") String semester,@RequestParam("lecId") String lecId,
                       @RequestParam("adminId") int adminId,  @RequestParam("type") int type , @RequestParam("userId") int id )
    {
        model.addAttribute("lecture",lectureService.findLecture(year,semester,lecId,adminId));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/classEdit";
    }

    /* 수업수정*/
    @RequestMapping(value="classEdit",method = RequestMethod.POST)
    public String edit(Model model,Lecture lecture,Pagination pagination, @RequestParam("type") int type , @RequestParam("userId") int id
                        ,RedirectAttributes redirectAttributes)
    {
        lectureService.lecUpdate(lecture);
        redirectAttributes.addAttribute("type",type);
        redirectAttributes.addAttribute("id",id);
        return "redirect:manageClass";
    }


    /* 수업등록 페이지*/
    @RequestMapping("classCreate")
    public String create(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("userId") int id )
    {
        Lecture lecture =new Lecture();
        model.addAttribute("lecture",lecture);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/classEdit";
    }

    /* 수업등록*/
    @RequestMapping(value = "classCreate",method = RequestMethod.POST)
    public String create(Lecture lecture,@RequestParam("type") int type , @RequestParam("userId") int id,RedirectAttributes redirectAttributes )
    {

        lectureService.lecInsert(lecture);
        redirectAttributes.addAttribute("type",type);
        redirectAttributes.addAttribute("id",id);
        return "redirect:manageClass";
    }



//    /* 대체과목 메인 페이지*/
//    @RequestMapping("replaceLecture")
//    public String showReplaceLecture(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("id") int id )
//    {
//        pagination.setRecordCount(replaceService.pageCount());
//        model.addAttribute("lectures",lectureService.lectureList(pagination));
//        model.addAttribute("replacelectures",replaceService.replaceLectureList(pagination));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//
//        return "main/replaceLecture";
//    }

//    /* 대체과목 메인 페이지*/
//    @RequestMapping("replaceLecture")
//    public String showReplaceLecture(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("id") int id )
//    {
//        pagination.setRecordCount(replaceService.pageCount());
//        model.addAttribute("lectures",lectureService.lectureList(pagination));
//        model.addAttribute("replacelectures",replaceService.replaceLectureList(pagination));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/replaceLecture";
//    }

//
//    /* 대체과목 페이지*/
//    @RequestMapping("replaceCreate")
//    public String createReplace(Model model,Pagination pagination,@RequestParam("type") int type , @RequestParam("userId") int id )
//    {
//        Lecture lecture =new Lecture();
//        model.addAttribute("lecture",lecture);
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/classEdit";
//    }
//    /* 대체 과목 등록*/
//    @RequestMapping(value = "replaceCreate",method = RequestMethod.POST)
//    public String createReplace(Model model,Pagination pagination,ReplaceLecture replaceLecture,@RequestParam("type") int type , @RequestParam("userId") int id )
//    {
//
//        replaceService.replaceInsert(replaceLecture);
//
//        pagination.setRecordCount(replaceService.pageCount());
//        model.addAttribute("lectures",replaceService.lectureList(pagination));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/manageClass";
//    }
//
//    //  대체 과목 수정  페이지*/
//    @RequestMapping("replaceEdit")
//    public String editReplace(Model model,Pagination pagination,@RequestParam("year") int year,@RequestParam("semester") String semester,@RequestParam("lecId") String lecId,
//                       @RequestParam("adminId") int adminId,  @RequestParam("type") int type , @RequestParam("userId") int id )
//    {
//        model.addAttribute("lecture",lectureService.findLecture(year,semester,lecId,adminId));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/classEdit";
//    }
//
//    /* 대체 과목 수정*/
//    @RequestMapping(value="replaceEdit",method = RequestMethod.POST)
//    public String editReplace(Model model,ReplaceLecture replaceLecture,Pagination pagination, @RequestParam("type") int type , @RequestParam("userId") int id)
//    {
//        ReplaceService.replaceUpdate(replaceLecture);
//
//        pagination.setRecordCount(replaceService.pageCount());
//        model.addAttribute("lectures",replaceService.lectureList(pagination));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        return "main/manageClass";
//    }
/*
        model.addAttribute("replaceLecture",replaceService.replaceLectureList());
        return "main/replaceLecture";
    }*/


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
    public String studentManager(Model model, Pagination pagination, @RequestParam("type") int type , @RequestParam("id") int id , @RequestParam(value = "choice", defaultValue = "0") int choice,
                                 @RequestParam(value = "search", defaultValue = "") String search)
    {
        pagination.setRecordCount(studentMapper.selectCount(choice,search));
        model.addAttribute("listes",studentMapper.selectPage(pagination.getPg(), pagination.getPageSize(), choice, search));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        model.addAttribute("search",search);
        model.addAttribute("selected",typeIdentity.selectCheck(choice));
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
        model.addAttribute("totalSemester",studentMapper.totalSemester(studentId));
        model.addAttribute("totalCredit",studentMapper.totalCredit(studentId));
        model.addAttribute("avgGrade",studentMapper.avgGrade(studentId));
        return "main/studentManager2";
    }

    @RequestMapping(value="studentManager2", method=RequestMethod.POST)
    public String studentManager2(Model model,@RequestParam("studentId") int studentId, @RequestParam("type") int type ,@RequestParam("id") int id, @RequestParam("btn") int btn)
    {
        Student student = studentMapper.findById(studentId);
        if(btn==2){
            student = studentMapper.findByIdMajor(studentId);
        }
        else if(btn==3){
            student = studentMapper.findByIdCulture(studentId);
        }
        else if(btn==4){
            student = studentMapper.findByIdF(studentId);
        }
        model.addAttribute("student", student);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        model.addAttribute("totalSemester",studentMapper.totalSemester(studentId));
        model.addAttribute("totalCredit",studentMapper.totalCredit(studentId));
        model.addAttribute("avgGrade",studentMapper.avgGrade(studentId));
        return "main/studentManager2";
    }

    @RequestMapping("after18")
    public String after18(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/after18";
    }
    @RequestMapping("before18")
    public String before18(Model model, @RequestParam("type") int type ,@RequestParam("id") int id )
    {
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/before18";
    }


}
