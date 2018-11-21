package net.skhu.controller;


import net.skhu.Service.LectureService;
import net.skhu.Service.MyLecService;
import net.skhu.Service.ReplaceService;
import net.skhu.Service.TypeIdentity;
import net.skhu.domain.*;
import net.skhu.mapper.*;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/main")
public class MainController {
    private static org.slf4j.Logger logger = LoggerFactory.getLogger(MainController.class);

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
    @Autowired
    LectureMapper lectureMapper;
    @Autowired
    MyLectureMapper myLectureMapper;
    @Autowired
    MyLecService myLecService;
    @Autowired
    GraduationRuleMapper graduationRuleMapper;
    @Autowired
    NoticeMapper noticeMapper;
    @Autowired
    QnaMapper qnaMapper;
    @Autowired
    QnaanswerMapper qnaaMapper;


    /* 로그인되면, 메인페이지 이동*/

    @RequestMapping(value = "graduation", method = RequestMethod.GET)
    public String main(Model model, @RequestParam("type") int type, @RequestParam("id") int id) {
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "login/main";
    }

    /*
    수업관리, 수업리스트 get, 초기페이지
     */
    @RequestMapping("manageClass")
    public String manageClass(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("id") int id) {

        pagination.setRecordCount(lectureService.pageCount());
        model.addAttribute("lectures", lectureService.lectureList(pagination));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/manageClass";
    }

    /*
    수업관리, 수업리스트(검색할시)
     */
    @RequestMapping(value = "manageClass", method = RequestMethod.POST)
    public String manageClass(Model model, Pagination pagination, @RequestParam("choice") int choice, @RequestParam("srch") String srch, @RequestParam("type") int type, @RequestParam("userId") int id) {
        if (srch == null)
            srch = "";
        pagination.setRecordCount(lectureService.pageSrchCount(choice, srch));
        model.addAttribute("lectures", lectureService.srchByLecList(pagination.getPg(), pagination.getPageSize(), choice, srch));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("srch", srch);

        model.addAttribute("selected", lectureService.selectCheck(choice));
        return "main/manageClass";
    }
//    @RequestMapping(value = "manageClass",method = RequestMethod.POST)
//    public String manageClass(Model model,Pagination pagination,@RequestParam(value = "choice", defaultValue = "0") int choice,
//                              @RequestParam(value = "srch",defaultValue = "") String srch, @RequestParam("type") int type , @RequestParam("userId") int id )
//    {
//        pagination.setRecordCount(lectureService.pageSrchCount(choice,srch));
//        model.addAttribute("lectures",lectureService.srchByLecList(pagination.getPg(),pagination.getPageSize(),choice,srch));
//        model.addAttribute("member",typeIdentity.typeCheck(type,id));
//        model.addAttribute("selected",lectureService.selectCheck(choice));
//        return "main/manageClass";
//    }

    /* 수업수정 페이지*/
    @RequestMapping("classEdit")
    public String edit(Model model, Pagination pagination, @RequestParam("year") int year, @RequestParam("semester") String semester, @RequestParam("lecId") String lecId,
                       @RequestParam("adminId") int adminId, @RequestParam("type") int type, @RequestParam("userId") int id) {
        model.addAttribute("lecture", lectureService.findLecture(year, semester, lecId, adminId));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/classEdit";
    }

    /* 수업관리
       수업수정*/
    @RequestMapping(value = "classEdit", method = RequestMethod.POST)
    public String edit(Model model, Lecture lecture, Pagination pagination, @RequestParam("type") int type, @RequestParam("userId") int id
            , RedirectAttributes redirectAttributes) {
        logger.info(lecture.getTitle());

        lectureService.lecUpdate(lecture);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:manageClass";
    }
    /*
     *수업관리, 수업 삭제
     * */

    @RequestMapping("delete")
    public String delete(Model model, @RequestParam("year") int year, @RequestParam("semester") String semester, @RequestParam("lecId") String lecId
            , @RequestParam("split") int split, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        Lecture deleteLec = lectureService.deleteSet(year, semester, lecId, split);

        logger.info(deleteLec.getId());
        lectureService.lectureDelete(deleteLec);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:manageClass";
    }

    /* 수업등록 페이지*/
    @RequestMapping("classCreate")
    public String create(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Lecture lecture = new Lecture();
        model.addAttribute("lecture", lecture);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/classEdit";
    }

    /* 수업등록*/
    @RequestMapping(value = "classCreate", method = RequestMethod.POST)
    public String create(Lecture lecture, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {

        lectureService.lecInsert(lecture);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:manageClass";
    }

    /*엑셀업로드 수업등록 업로드전 페이지 */
    @RequestMapping("classExcel")
    public String classExcel(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("userId") int id) {
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/classExcel";
    }

    /*
    엑셀업로드, 등록
     */
    @ResponseBody
    @RequestMapping(value = "/excelUploadAjax", method = RequestMethod.POST)
    public String excelUploadAjax(MultipartHttpServletRequest request, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) throws Exception {
        MultipartFile excelFile = request.getFile("excelFile");
        System.out.println("엑셀 파일 업로드 컨트롤러");
        if (excelFile == null || excelFile.isEmpty()) {
            throw new RuntimeException("엑셀파일을 선택 해 주세요.");
        }

//        엑셀파일이 c 디스크에 있어야함
        File destFile = new File("C:\\upload\\" + excelFile.getOriginalFilename());

        try {
            excelFile.transferTo(destFile);
        } catch (IllegalStateException | IOException e) {

            throw new RuntimeException(e.getMessage(), e);
        }

        //관리자일때,수업리스트 업로드
        if (type == 2) {
            lectureService.excelUpload(destFile);
        }
        //학생일때, 내가 수강한 과목 업로드
        else if (type == 1) {
            myLecService.excelUpload(destFile, id);
        }


//        destFile.delete();


        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "수강과목 엑셀파일이 업로드 되었습니다.새로고침 눌러주세요!";
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

    /* 공지사항 등록페이지*/
    @RequestMapping("noticeRegister")
    public String noticeR(Model model, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Notice notice = new Notice();
        model.addAttribute("notice", notice);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/noticeRegister";
    }

    /* 공지사항 등록*/
    @RequestMapping(value = "noticeRegister", method = RequestMethod.POST)
    public String noticeR(Notice notice, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        noticeMapper.insert(notice);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:notice";
    }

    //공지사항 수정 페이지*/
    @RequestMapping("noticeUpdate")
    public String updateN(Model model, @RequestParam("id") int noticeId, @RequestParam("admin_id") int adminId, @RequestParam("type") int type, @RequestParam("userId") int id) {
        model.addAttribute("notice", noticeMapper.findNotice(noticeId, adminId));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/noticeUpdate";
    }

    /* 공지사항 수정*/
    @RequestMapping(value = "noticeUpdate", method = RequestMethod.POST)
    public String updateN(Model model, Notice notice, @RequestParam("type") int type, @RequestParam("userId") int id
            , RedirectAttributes redirectAttributes) {
        noticeMapper.update(notice);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:notice";
    }

    //공지사항 삭제
    @RequestMapping("deleteN")
    public String deleteN(Model model, @RequestParam("noticeId") int noticeId,
                          @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        noticeMapper.delete(noticeId);

        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:notice";
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

    /* qna 등록페이지*/
    @RequestMapping("qnaQuestion")
    public String qnaQ(Model model, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Qna qna = new Qna();
        model.addAttribute("qna", qna);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaQuestion";
    }

    /* qna 등록*/
    @RequestMapping(value = "qnaQuestion", method = RequestMethod.POST)
    public String qnaQ(Qna qna, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        qnaMapper.insert(qna);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    //qna 수정 페이지*/
    @RequestMapping("qnaUpdate")
    public String updateQ(Model model, @RequestParam("id") int qnaId, @RequestParam("student_id") int studentId, @RequestParam("type") int type, @RequestParam("userId") int id) {
        model.addAttribute("qna", qnaMapper.findQna(qnaId, studentId));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaUpdate";
    }

    /*qna 수정*/
    @RequestMapping(value = "qnaUpdate", method = RequestMethod.POST)
    public String updateQ(Model model, Qna qna, @RequestParam("type") int type, @RequestParam("userId") int id
            , RedirectAttributes redirectAttributes) {
        qnaMapper.update(qna);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    /* 답변 등록페이지*/
    @RequestMapping("qnaaQuestion")
    public String qnaQa(Model model, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Qnaanswer qnaa = new Qnaanswer();
        model.addAttribute("qnaa", qnaa);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaaQuestion";
    }

    /* 답변 등록*/
    @RequestMapping(value = "qnaaQuestion", method = RequestMethod.POST)
    public String qnaQa(Qnaanswer qnaa, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        qnaaMapper.insert(qnaa);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

        /*내정보 페이지*/
        @RequestMapping("myInfo")
        public String myInfo (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
        {
            System.out.println(type + " " + id + " " + "myInfo");
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/myInfo";
        }

        @RequestMapping(value = "updateMember")
        public String updateMember (User user, RedirectAttributes redirectAttributes)
        {
            typeIdentity.typeUpdate(user);
            redirectAttributes.addAttribute("type", user.getType());
            redirectAttributes.addAttribute("id", user.getId());
            System.out.println(user.getType() + " " + user.getId() + " " + "updateMember");
            return "redirect:myInfo";
        }

        @RequestMapping("studentManager")
        public String studentManager (Model model, Pagination pagination,@RequestParam("type") int type,
        @RequestParam("id") int id, @RequestParam(value = "choice", defaultValue = "0") int choice,
        @RequestParam(value = "search", defaultValue = "") String search)
        {
            pagination.setRecordCount(studentMapper.selectCount(choice, search));
            model.addAttribute("listes", studentMapper.selectPage(pagination.getPg(), pagination.getPageSize(), choice, search));
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            model.addAttribute("search", search);
            model.addAttribute("selected", lectureService.selectChecKAndSearch(choice));
            return "main/studentManager";
        }

    /*
      student.getType을 지정한이유
      student로 바인딩 되서 타입을 담고있다.그래서 type이 2가 되어서 교수 정보를 가져올 수 있다.
     */

        @RequestMapping(value = "studentEdit", method = RequestMethod.GET)
        public String edit (Model model, Student student, Pagination pagination ,@RequestParam("adminId") int adminId)
        {
            model.addAttribute("student", studentMapper.findByStudent(student.getId()));
            model.addAttribute("member", typeIdentity.typeCheck(student.getType(), adminId));
            model.addAttribute("departments", departmentMapper.findAll());
            return "main/studentEdit";
        }


        @RequestMapping(value = "studentEdit", method = RequestMethod.POST)
        public String edit (Student student, RedirectAttributes redirectAttributes,@RequestParam("adminId") int adminId)
        {
            studentMapper.updateNameAndDepartment(student);
            redirectAttributes.addAttribute("type", student.getType());
            redirectAttributes.addAttribute("id", adminId);
            return "redirect:studentManager";
        }

        @RequestMapping(value = "studentManager2", method = RequestMethod.GET)
        public String studentManager2 (Model model,@RequestParam("studentId") int studentId,
        @RequestParam("type") int type, @RequestParam("id") int id )
        {
            Student student = studentMapper.findById(studentId);
            model.addAttribute("student", student);
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            model.addAttribute("totalSemester", studentMapper.totalSemester(studentId));
            model.addAttribute("totalCredit", studentMapper.totalCredit(studentId));
            model.addAttribute("avgGrade", studentMapper.avgGrade(studentId));
            return "main/studentManager2";
        }

        @RequestMapping(value = "studentManager2", method = RequestMethod.POST)
        public String studentManager2 (Model model,@RequestParam("studentId") int studentId,
        @RequestParam("type") int type, @RequestParam("id") int id, @RequestParam("btn") int btn)
        {
            Student student = studentMapper.findById(studentId);
            if (btn == 2) {
                student = studentMapper.findByIdMajor(studentId);
                if (student == null)
                    student = studentMapper.findByStudent(studentId);
            } else if (btn == 3) {
                student = studentMapper.findByIdCulture(studentId);
                if (student == null)
                    student = studentMapper.findByStudent(studentId);
            } else if (btn == 4) {
                student = studentMapper.findByIdF(studentId);
                if (student == null)
                    student = studentMapper.findByStudent(studentId);
            }
            model.addAttribute("student", student);
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            model.addAttribute("totalSemester", studentMapper.totalSemester(studentId));
            model.addAttribute("totalCredit", studentMapper.totalCredit(studentId));
            model.addAttribute("avgGrade", studentMapper.avgGrade(studentId));
            return "main/studentManager2";
        }

        @RequestMapping("after18")
        public String after18 (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
        {
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/after18";
        }
        @RequestMapping("before18")
        public String before18 (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
        {
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/before18";
        }
/*
나의 졸업요건페이지
 */
        @RequestMapping("graduationInfo")
        public String graduationInfo (Model model, Pagination pagination,@RequestParam("type") int type,
        @RequestParam("id") int id, @RequestParam(value = "choice", defaultValue = "0") int choice,
        @RequestParam(value = "search", defaultValue = "") String search)
        {
            pagination.setRecordCount(myLectureMapper.courseCount(choice, search, id));
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            model.addAttribute("student", studentMapper.findById(id));
            model.addAttribute("graduationRules", graduationRuleMapper.findBy18(id));
            model.addAttribute("totalSemester", studentMapper.totalSemester(id));
            model.addAttribute("avgGrade", studentMapper.avgGrade(id));
            model.addAttribute("totalCredit", studentMapper.totalCredit(id));
            model.addAttribute("totalCreditMajor", studentMapper.totalCreditMajor(id));
            model.addAttribute("totalCreditCulture", studentMapper.totalCreditCulture(id));
            model.addAttribute("creditPercent", studentMapper.creditPercent(id));
            model.addAttribute("creditPercentMajor", studentMapper.creditPercentMajor(id));
            model.addAttribute("creditPercentCulture", studentMapper.creditPercentCulture(id));
            model.addAttribute("chapelCount", studentMapper.chapelCount(id));
            model.addAttribute("chapelPercent", studentMapper.chapelPercent(id));
            model.addAttribute("volunteerCount", studentMapper.volunteerCount(id));
            model.addAttribute("volunteerPercent", studentMapper.volunteerPercent(id));
            model.addAttribute("myLecture", myLectureMapper.findByIdPage(pagination.getPg(), pagination.getPageSize(), id, choice, search));
            model.addAttribute("selected", lectureService.selectCheckAndTwo(choice));
            model.addAttribute("search", search);
            model.addAttribute("choice", choice);
            model.addAttribute("departments", departmentMapper.findAll());
            model.addAttribute("essentialMajor", lectureMapper.findEssentialMajor(id));
            model.addAttribute("essentialCulture", lectureMapper.findEssentialCulture(id));
            model.addAttribute("essentialCultureSize", lectureMapper.findEssentialCulture(id).size() - 2);
            model.addAttribute("minor", studentMapper.minor(id));
            model.addAttribute("doubleMajor", studentMapper.doubleMajor(id));

            return "main/graduationInfo";
        }
        @RequestMapping(value = "graduationInfo", method = RequestMethod.POST) public String graduationInfo (Model
        model, Student student,@RequestParam("type") int type, @RequestParam("id") int id, RedirectAttributes
        redirectAttributes)
        {
            studentMapper.updateRule(student);
            redirectAttributes.addAttribute("type", type);
            redirectAttributes.addAttribute("id", id);
            return "redirect:graduationInfo";
        }
    /*
    나의 졸업요건 수강과목 or 시뮬레이션 과목 삭제
     */

        @RequestMapping(value = "deleteLecture", method = RequestMethod.POST)
        public String delete (Model model,@RequestParam("type") int type, @RequestParam("remove") int remove,
        @RequestParam("id") int id, @RequestParam(value = "choice", defaultValue = "0") int choice,
        @RequestParam(value = "search", defaultValue = "") String search, RedirectAttributes redirectAttributes)
        {
            myLectureMapper.delete(remove);
            redirectAttributes.addAttribute("type", type);
            redirectAttributes.addAttribute("id", id);
            redirectAttributes.addAttribute("choice", choice);
            redirectAttributes.addAttribute("search", search);
            return "redirect:graduationInfo";
        }

        /*엑셀업로드 내가수강한수업 엑셀업로드 페이지 */
        @RequestMapping("myLecExcel")
        public String myLecExcel (Model model, Pagination pagination,@RequestParam("type") int type,
        @RequestParam("userId") int id )
        {
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/myLecExcel";
        }


    /*
    컴퓨터공학과 졸업요건 18이전 이후
     */
        @RequestMapping("comAfter18")
        public String comAfter18 (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
        {
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/comAfter18";
        }
        @RequestMapping("comBefore18")
        public String comBefore18 (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
        {
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/comBefore18";
        }

        //대체과목 list
        @RequestMapping("replaceLecture")
        public String replaceLecture (Model model, Pagination pagination ,@RequestParam("type") int type,
        @RequestParam("id") int id ){
            pagination.setRecordCount(replaceLectureMapper.count());
            List<ReplaceLecture> replaceLectures = replaceLectureMapper.findAll(pagination);

            model.addAttribute("replaceLectures", replaceLectures);
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/replaceLecture";
        }
        //대체과목 등록 수정
        @RequestMapping("replaceLectureRegister")
        public String replaceLecRegister (Model model, Pagination pagination ,@RequestParam("type") int type,
        @RequestParam("id") int id ){

            ReplaceLecture replaceLecture = new ReplaceLecture();
            model.addAttribute("replaceLecture", replaceLecture);
            model.addAttribute("member", typeIdentity.typeCheck(type, id));
            return "main/replaceLectureRegister";
        }
    }
