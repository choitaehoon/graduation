package net.skhu.controller;

import net.skhu.Service.TypeIdentity;
import net.skhu.domain.*;
import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.NoticeMapper;
import net.skhu.mapper.QnaMapper;
import net.skhu.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class LoginController {
    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    DepartmentMapper departmentMapper;
    @Autowired
    NoticeMapper noticeMapper;
    @Autowired
    QnaMapper qnaMapper;
/*
회원가입 페이지
 */
    @RequestMapping(value="signUp",method=RequestMethod.GET)
    public String signUp(Model model,Student student) {
        List<Department> departments = departmentMapper.findAll();
        model.addAttribute("departments",departments);
        model.addAttribute("student",student);
        return "login/signUp";

    }

    /*회원가입, 등록할때*/
    @RequestMapping(value="signUp", method=RequestMethod.POST)
    public String create(Student student) {
        studentMapper.insert(student);
        return "../../login";
    }

   /* 추가 중복 아이디 체크*/
    /*학번 중복체크*/
   @ResponseBody
   @RequestMapping(value="checkSignup", method=RequestMethod.POST)
   public  String  checkSignup(Student student,Model model)
   {
       int rowCount = studentMapper.selectByLoginIdCheck(student.getId());
       return String.valueOf(rowCount);
   }
/*
* 비밀번호 찾기페이지, 비밀번호 찾기 질문을 통한 비밀번호찾기
* */
    @RequestMapping("findPassword")
    public String findPassword() {
        return "login/findPassword";
    }

    @RequestMapping(value = "password", method = RequestMethod.POST)
    @ResponseBody
    public String password(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("answer") String answer)
    {
        return studentMapper.findByPassword(id, name, answer);
    }

    /*
    게스트로그인, 학교 학생이 아닐때
     */
    @RequestMapping("guest")
    public String guestMain(Model model) {
        User member =new User();
        member.setType(0);
        member.setId(0);
        model.addAttribute("member",member);
        return "login/main";

    }


    @RequestMapping(value = "graduation",method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type ,@RequestParam("id") int id) {

        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "login/main";
    }
    /*
    로그인햇을때
     */
    @RequestMapping(value = "graduation",method = RequestMethod.POST)
    public String login(Model model, User user) {
        Object check=typeIdentity.distinct(user);
        if(check == null) {
            model.addAttribute("id",user.getId());
            model.addAttribute("error","fail");
            return "../../login";
        }
        else{
            List<Notice> notices = noticeMapper.findNew();
            List<Qna> qnas = qnaMapper.findNew();
            model.addAttribute("notices", notices);
            model.addAttribute("qnas",qnas);
            model.addAttribute("member", check);
            return "login/main";
        }
    }
    /*공지사항(클릭시 보여주는 것)*/
    @RequestMapping("noticeShow")
    public String noticeShow(Model model,@RequestParam("noticeId") int noticeId, @RequestParam("type") int type, @RequestParam("id") int id) {

        Notice notice=noticeMapper.findOne(noticeId);
        model.addAttribute("notice",notice);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));

        return "main/noticeShow";
    }
    //공지사항 list
    @RequestMapping("notice")
    public String notice(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("id") int id) {

        pagination.setRecordCount(noticeMapper.count());

        List<Notice> notices = noticeMapper.findAll(pagination);
        model.addAttribute("notices", notices);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/notice";
    }


    /*qna 클릭시 보여주는 페이지*/
    @RequestMapping("qnaShow")
    public String qnaShow(Model model,@RequestParam("qnaId") int qnaId,@RequestParam("type") int type, @RequestParam("id") int id) {

        Qna qna = qnaMapper.findOne(qnaId);
        model.addAttribute("qna", qna);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaShow";
    }

    //qna list
    @RequestMapping("qna")
    public String qna(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("id") int id) {

        pagination.setRecordCount(qnaMapper.count());

        List<Qna> qnas = qnaMapper.findAll(pagination);
        model.addAttribute("qnas", qnas);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qna";
    }
}
