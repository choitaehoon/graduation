package net.skhu.controller;


import net.skhu.Service.*;
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
import java.util.Arrays;
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
    ReplaceLecService replaceLecService;
    @Autowired
    MyreplaceMapper myreplaceMapper;
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
    QnaanswerMapper qanswerMapper;
    @Autowired
    NoticeService noticeService;
    @Autowired
    QnaService qnaService;
    @Autowired
    AdminMapper adminMapper;


    /* 로그인되면, 메인페이지 이동*/

    @RequestMapping(value = {"graduation","login"}, method = RequestMethod.GET)
    public String main(Model model, @RequestParam(value = "type",defaultValue = "0") int type, @RequestParam(value = "id",defaultValue = "0") int id) {
        List<Notice> notices = noticeMapper.findNew();
        List<Qna> qnas = qnaMapper.findNew();
        model.addAttribute("notices", notices);
        model.addAttribute("qnas",qnas);
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
    수업관리,
    수업리스트(검색할시)
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


    /* 수업관리,
    수업수정 페이지*/
    @RequestMapping("classEdit")
    public String edit(Model model, Pagination pagination, @RequestParam("lecYear") int year, @RequestParam("lecSemester") String semester, @RequestParam("lecId") String lecId,
                       @RequestParam("split") int adminId, @RequestParam("type") int type, @RequestParam("userId") int id) {
        model.addAttribute("lecture", lectureService.findLecture(year, semester, lecId, adminId));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/classEdit";
    }

    /* 수업관리
       수업수정*/
    @RequestMapping(value = "classEdit", method = RequestMethod.POST)
    public String edit(Model model, Lecture lecture, @RequestParam("type") int type, @RequestParam("userId") int id
            , RedirectAttributes redirectAttributes) {
        logger.info(lecture.toString());



        lectureService.lecUpdate(lecture);

        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);

        return "redirect:manageClass";
    }
    /*
     *수업관리,
     * 수업 삭제
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

    /* 수업관리
    수업등록 페이지*/
    @RequestMapping("classCreate")
    public String create(Model model, Pagination pagination, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Lecture lecture = new Lecture();
        model.addAttribute("lecture", lecture);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/classEdit";
    }

    /* 수업관리,
    수업등록*/
    @RequestMapping(value = "classCreate", method = RequestMethod.POST)
    public String create(Lecture lecture, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {

        lectureService.lecInsert(lecture);


        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);

        return "redirect:manageClass";
    }

    /*수업관리,
    엑셀업로드 수업등록 업로드전 페이지
    */
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

    //관리자 추가
    @RequestMapping("addAdmin")
    public String addAdmin(Model model,Admin admin, @RequestParam("type") int type, @RequestParam("id") int id){
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("admin",admin);
        return "main/addAdmin";
    }

    @RequestMapping(value = "addAdmin", method = RequestMethod.POST)
    public String addAdmin2(Model model, Admin admin,  @RequestParam("type") int type, @RequestParam("id") int id){

        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        adminMapper.createAdmin(admin);
        return "main/addAdmin";
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

    /*
    공지사항 리스트(검색할시)
 */
    @RequestMapping(value = "notice", method = RequestMethod.POST)
    public String notice(Model model, Pagination pagination, @RequestParam("choice") int choice, @RequestParam("srch") String srch, @RequestParam("type") int type, @RequestParam("userId") int id) {
        if (srch == null)
            srch = "";

        pagination.setRecordCount(noticeService.pageSrchCount(choice, srch));
        model.addAttribute("notices", noticeService.srchByNotiList(pagination.getPg(), pagination.getPageSize(), choice, srch));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("srch", srch);

        model.addAttribute("selected", noticeService.selectCheck(choice));
        return "main/notice";
    }

    /*공지사항(클릭시 보여주는 것)*/
    @RequestMapping("noticeShow")
    public String noticeShow(Model model,@RequestParam("noticeId") int noticeId, @RequestParam("type") int type, @RequestParam("id") int id) {

        Notice notice=noticeMapper.findOne(noticeId);
        noticeMapper.countPlus(notice);
        model.addAttribute("notice",notice);
       model.addAttribute("member", typeIdentity.typeCheck(type, id));

        return "main/noticeShow";
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
    public String noticeR(Notice notice, @RequestParam("admin_id") int admin_id, @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        noticeMapper.insert(notice);
        notice.setAdmin_id(id);
        logger.info(notice.toString());
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:notice";
    }

    //공지사항 수정 페이지*/
    @RequestMapping(value="noticeUpdate", method=RequestMethod.GET)
    public String updateN(Model model, @RequestParam("id") int noticeId, @RequestParam("admin_id") int adminId, @RequestParam("type") int type, @RequestParam("userId") int id) {
        Notice notice  = noticeMapper.findNotice(noticeId, adminId);
/*        notice.setAdmin_id(adminId);*/
        model.addAttribute("notice", notice);
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
        logger.info(qnas.toString());
        model.addAttribute("qnas", qnas);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qna";
    }

    //qna list
    @RequestMapping("qnaCheck")
    public String qnaCheck(Model model,@RequestParam("qnaId") int qnaId, @RequestParam("type") int type, @RequestParam("id") int id) {
        Qna qna = qnaMapper.findQna(qnaId);

        model.addAttribute("qna", qna);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qna";
    }
    /*
 qna 리스트(검색할시)
*/
    @RequestMapping(value = "qna", method = RequestMethod.POST)
    public String qna(Model model, Pagination pagination, @RequestParam("choice") int choice, @RequestParam("srch") String srch, @RequestParam("type") int type, @RequestParam("userId") int id) {
        if (srch == null)
            srch = "";

        pagination.setRecordCount(qnaService.pageSrchCount(choice, srch));
        model.addAttribute("qnas", qnaService.srchByQnaList(pagination.getPg(), pagination.getPageSize(), choice, srch));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("srch", srch);

        model.addAttribute("selected", qnaService.selectCheck(choice));
        return "main/qna";
    }
    /*qna 클릭시 보여주는 페이지*/
    @RequestMapping("qnaShow")
    public String qnaShow(Model model,@RequestParam("qnaId") int qnaId,@RequestParam("type") int type, @RequestParam("id") int id) {

        Qna qna = qnaMapper.findOne(qnaId);
        qnaMapper.countPlus(qna);
        model.addAttribute("qna", qna);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaShow";
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
        qna.setStudent_id(id);
        qnaMapper.insert(qna);
        logger.info(qna.toString());
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    //qna 수정 페이지*/
    @RequestMapping("qnaUpdate")
    public String updateQ(Model model, @RequestParam("qnaId") int qnaId,@RequestParam("type") int type, @RequestParam("userId") int id) {
        Qna qna = qnaMapper.findQna(qnaId);
        model.addAttribute("qna", qna);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaUpdate";
    }

    /*qna 수정*/
    @RequestMapping(value = "qnaUpdate", method = RequestMethod.POST)
    public String updateQ(Model model, Qna qna, @RequestParam("type") int type, @RequestParam("userId") int id
            , RedirectAttributes redirectAttributes) {

        logger.info(qna.toString());
        qnaMapper.update(qna);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    //qna 삭제
    @RequestMapping("deleteQ")
    public String deleteQ(Model model, @RequestParam("qnaId") int qnaId,
                          @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {
        qnaMapper.delete(qnaId);

        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    /* 답변 등록페이지*/
    @RequestMapping("qnaaQuestion")
    public String qnaQa(Model model,@RequestParam("qnaId") int qnaId ,@RequestParam("type") int type, @RequestParam("userId") int id) {
        Qna qna = qnaMapper.findOne(qnaId);
        Qnaanswer qnaanswer = new Qnaanswer();
        qnaanswer.setQna_id(qnaId);
        model.addAttribute("qnaanswer", qnaanswer);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaaQuestion";
    }

    /* 답변 등록*/
    @RequestMapping(value = "qnaaQuestion", method = RequestMethod.POST)
    public String qnaQainsert(Model model,Qnaanswer qnaanswer,@RequestParam("qnaId") int qnaId , @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {

        qnaanswer.setAdmin_id(id);
        qnaanswer.setQna_id(qnaId);
        qanswerMapper.insert(qnaanswer);
        Qna qna = qnaMapper.findOne(qnaId);
        qnaMapper.plusState(qna);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);

        return "redirect:qna";
    }
    /*qnaanswer답변 보기*/
    @RequestMapping("qnaaShow")
    public String qnaaShow(Model model,@RequestParam("qnaId") int qnaId,@RequestParam("type") int type, @RequestParam("id") int id) {

        Qnaanswer qnaanswer = qanswerMapper.findQnaa(qnaId);
        model.addAttribute("qnaanswer", qnaanswer);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/qnaaShow";
    }
/*답변 상황 선택하기*/
    @RequestMapping("Call")
    public String Call(Model model,@RequestParam("type") int type, @RequestParam("userId") int id,
                       @RequestParam("qnaId") int qnaId, RedirectAttributes redirectAttributes) {

        qnaMapper.plusCallState(qnaId);

        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";

    }
    /* 답변 등록*/
    @RequestMapping(value = "Call", method = RequestMethod.POST)
    public String Call(Qna qna, Qnaanswer qnaanswer,@RequestParam("qnaId") int qnaId , @RequestParam("type") int type, @RequestParam("userId") int id, RedirectAttributes redirectAttributes) {

        qnaanswer.setAdmin_id(id);
        qnaanswer.setQna_id(qnaId);
        qanswerMapper.insert(qnaanswer);
        qnaMapper.findOne(qnaId);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", id);
        return "redirect:qna";
    }

    /*내정보 페이지*/
    @RequestMapping("myInfo")
    public String myInfo (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
    {
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
                                  @RequestParam(value = "search", defaultValue = "") String search, @RequestParam(value ="btn", defaultValue ="0") int btn)
    {
        pagination.setRecordCount(studentMapper.selectCount(choice, search));
        model.addAttribute("listes", studentMapper.selectPage(pagination.getPg(), pagination.getPageSize(), choice, search));
        if (btn==1){
            pagination.setRecordCount(studentMapper.selectCount2(choice, search));
            model.addAttribute("listes", studentMapper.selectPage2(pagination.getPg(), pagination.getPageSize(), choice, search));
        }
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("search", search);
        model.addAttribute("btn",btn);
        model.addAttribute("selected", lectureService.selectChecKAndSearch(choice));
        model.addAttribute("choice",choice);
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
    public String edit (@RequestParam("id") int id, @RequestParam("name1") String name1 , @RequestParam("department_id") int department_id,
                        RedirectAttributes redirectAttributes,@RequestParam("adminId") int adminId,
                        @RequestParam("type") int type)
    {
        studentMapper.updateNameAndDepartment(name1,department_id,id);
        redirectAttributes.addAttribute("type", type);
        redirectAttributes.addAttribute("id", adminId);
        return "redirect:studentManager";
    }

    @RequestMapping(value = "deleteStudent")
    public String studentDelete(RedirectAttributes redirectAttributes, @RequestParam("type") int type,
                                Student student, @RequestParam("adminId") int adminId, Pagination pagination)
    {
        logger.info(type+" "+student.getId()+" "+adminId+" "+pagination.getPg()+" "+pagination.getSz());
        adminMapper.deleteStudent(student.getId());
        redirectAttributes.addAttribute("pg",pagination.getPg());
        redirectAttributes.addAttribute("sz",pagination.getSz());
        redirectAttributes.addAttribute("type",type);
        redirectAttributes.addAttribute("id",adminId);
        return "redirect:studentManager";
    }

    @RequestMapping(value = "studentManager2", method = RequestMethod.GET)
    public String studentManager2 (Model model,@RequestParam("studentId") int studentId,
                                   @RequestParam("type") int type, @RequestParam("id") int id , Pagination pagination)
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

    //학생정보에서 코멘트수정하기
    @RequestMapping(value = "editComment", method = RequestMethod.GET)
    public String editComment(Model model, @RequestParam("studentId") int studentId, Student student,
                              @RequestParam("type") int type, @RequestParam("id") int id) {
        model.addAttribute("student",studentMapper.findById(student.getId()));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("student", studentMapper.findById(studentId));
        return "main/editComment";
    }

    @RequestMapping(value = "editComment", method = RequestMethod.POST)
    public String editComment(Model model, Student student) {
        studentMapper.updateComment(student);
        return "main/editComment2";
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

    @RequestMapping("help")
    public String help (Model model,@RequestParam("type") int type, @RequestParam("id") int id )
    {
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/help";
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
        model.addAttribute("doubleMajorPercent",studentMapper.doubleMajorPercent(id));
        model.addAttribute("doubleMajor", studentMapper.doubleMajor(id));
        model.addAttribute("minorPercent",studentMapper.minorPercent(id));
        model.addAttribute("minor", studentMapper.minor(id));

        //대체과목 신청 리스트 확인
        model.addAttribute("myReplaces",myLectureMapper.findReplaceLecByStu(id));

        model.addAttribute("cultureEssential",lectureMapper.findBy18CulturalEssentials(id));
        model.addAttribute("majorSearch",studentMapper.majorSearch(id));
        model.addAttribute("majorSearchPecent",studentMapper.majorSearchPercent(id));
        model.addAttribute("countMajorSearch",lectureMapper.countMajorSearch(id));
        model.addAttribute("countUndergraduate",lectureMapper.countUndergraduate(id));
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
        myLectureMapper.delete(remove, id);
        if(remove==3) {
            myreplaceMapper.delete(id);
            myLectureMapper.delete(4,id);
        }
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


    //대체과목관리,폐지 과목 검색
    @RequestMapping("replaceLecture")
    public String replaceLeBySrch(Model model, Pagination pagination ,@RequestParam(value = "choice",defaultValue = "0") int choice, @RequestParam(value="srch",defaultValue = "") String srch,
                                  @RequestParam("type") int type,@RequestParam("id") int id ){
        if(srch ==null)
            srch="";

        pagination.setRecordCount(replaceLectureMapper.srchCount(choice,srch));
        List<ReplaceLecture> replaceLectures = replaceLectureMapper.findCloseBySrch(pagination.getPg(),pagination.getPageSize(),choice,srch);
        model.addAttribute("replaceLectures", replaceLectures);

        model.addAttribute("srch",srch);
        model.addAttribute("selected", replaceLecService.selectCheck(choice));
        model.addAttribute("member", typeIdentity.typeCheck(type, id));

        return "main/replaceLecture";
    }

    //대체과목관리, 폐지과목 등록 페이지
    @RequestMapping("replaceLectureRegister")
    public String replaceLecRegister (Model model, Pagination pagination ,@RequestParam("type") int type,
                                      @RequestParam("id") int id ){

        ReplaceLecture replaceLecture = new ReplaceLecture();
        model.addAttribute("replaceLecture", replaceLecture);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/replaceLectureRegister";
    }

    //대체과목관리, 폐지과목 등록
    @RequestMapping(value="replaceLectureRegister" ,method=RequestMethod.POST)
    public String replaceLecRegister (Pagination pagination ,ReplaceLecture replaceLecture,@RequestParam("type") int type,
                                      @RequestParam("id") int id,RedirectAttributes redirectAttributes ){

        replaceLectureMapper.insert(replaceLecture);
        redirectAttributes.addAttribute("id",id);
        redirectAttributes.addAttribute("type",type);
        return "redirect:replaceLecture";
    }

    //대체과목 폐지과목 수정페이지
    @RequestMapping("replaceLectureUpdate")
    public String replaceLectureUpdate (Model model, Pagination pagination ,@RequestParam("type") int type,
                                        @RequestParam("id") int id,@RequestParam("closeLec") String closeLecture ){

        ReplaceLecture replaceLecture=replaceLectureMapper.findOne(closeLecture);
        model.addAttribute("replaceLecture", replaceLecture);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        return "main/replaceLectureRegister";
    }

    //대체과목 폐지과목 수정
    @RequestMapping(value = "replaceLectureUpdate",method = RequestMethod.POST)
    public String closeLecUpdate (Model model, Pagination pagination ,@RequestParam("type") int type,
                                  @RequestParam("id") int id,ReplaceLecture replaceLecture,RedirectAttributes redirectAttributes)
    {
        logger.info(replaceLecture.toString());
        replaceLectureMapper.update(replaceLecture);
        redirectAttributes.addAttribute("id",id);
        redirectAttributes.addAttribute("type",type);
        return "redirect:replaceLecture";
    }

    //대체과목 리스트에 등록된 폐지과목 삭제
    @RequestMapping("closeLecDelete")
    public String closeLecDelete (@RequestParam("closeLecture") String closeLecture,@RequestParam("type") int type,
                                  @RequestParam("id") int id,RedirectAttributes redirectAttributes )
    {
        replaceLectureMapper.delete(closeLecture);
        redirectAttributes.addAttribute("id",id);
        redirectAttributes.addAttribute("type",type);
        return "redirect:replaceLecture";
    }

    /*
       대체과목 재수강,
       나의 수강목록을 보여주는 페이지
        */
    @RequestMapping(value = {"replace_mylecture","majorAcknowledgment"})
    public String replace_mylecture (Model model, Pagination pagination,@RequestParam("type") int type,
                                     @RequestParam("id") int id, @RequestParam(value = "choice", defaultValue = "0") int choice,
                                     @RequestParam(value = "search", defaultValue = "") String search,
                                     @RequestParam(value = "major", defaultValue = "0") int major)
    {
        pagination.setRecordCount(myLectureMapper.courseCount(choice, search, id));
        model.addAttribute("myLecture", myLectureMapper.findByIdPage(pagination.getPg(), pagination.getPageSize(), id, choice, search));
        model.addAttribute("selected", lectureService.selectCheckAndTwo(choice));

        model.addAttribute("search", search);
        model.addAttribute("choice", choice);
        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("major", major);
        return "main/replace_mylecture";
    }

    /*
     * 대체과목 재수강,
     * 수강한 과목을 클릭하면, 대체할 과목을 선택할수 있는 페이지로 넘어간다.
     * */
    @RequestMapping({"myReplaceLec","selectMajor"})
    public String myReplaceLec(Model model,Pagination pagination,@RequestParam(value = "choice",defaultValue = "0") int choice,
                               @RequestParam(value="srch", defaultValue = "") String srch,@RequestParam("type") int type, @RequestParam("id") int id,
                               @RequestParam("lecId") String lecId,@RequestParam("lec_year") int lec_year, @RequestParam("lec_semester") String lec_semester,
                               @RequestParam(value = "major",defaultValue = "0") int major, @RequestParam("title") String title ,
                               @RequestParam("detailType") String detailType, @RequestParam("credit") String credit, @RequestParam("grade") String grade)
    {
        //수업한개를 조회하기위해서 년도 학기 과목코드 학번필요
        MyLecture myLecSet= myLecService.findOneMyLecSet(lec_year,lec_semester,lecId,id,title,detailType,credit,grade);

        model.addAttribute("myLectureOne",myLecSet);

        if(srch ==null)
            srch="";
        pagination.setRecordCount(lectureService.pageNowSrchCount(choice,srch));
        model.addAttribute("lectures", lectureService.srchByNowLecList(pagination.getPg(), pagination.getPageSize(), choice, srch));

        model.addAttribute("selected",lectureService.selectCheck(choice));
        model.addAttribute("count",myLectureMapper.replaceLecCount());
        model.addAttribute("srch",srch);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        model.addAttribute("major",major);
        return "main/myReplaceLec";
    }

    /*
   대체과목, 재수강 과목등록, 이미 들은 내수업의 학점을 대체로 들은 수업의 학점으로 교체
   */
    @RequestMapping(value = "replaceMyLec", method = RequestMethod.POST)
    public String ReplaceMyLec(MyLecture replaceLec, Myreplace myreplace ,RedirectAttributes redirectAttributes, @RequestParam("type") int type,
                               @RequestParam("mylec_id") String mylec_id,@RequestParam("mylec_year") int mylec_year,
                               @RequestParam("mylec_sem") String mylec_sem
    )
    {
        /*재수강과목 학점수정(내가 이미 들었던수업이, 폐강되었을때)*/
        MyLecture myLecture1=new MyLecture();
        myLecture1.setLecture_year(mylec_year);
        myLecture1.setLecture_semester(mylec_sem);
        myLecture1.setLecture_id(mylec_id);
        myLecture1.setStudent_id(replaceLec.getStudent_id());
        myLecture1.setGrade(replaceLec.getGrade());
        myLectureMapper.updateByReplaceGrade(myLecture1);

        /*대체과목 myreplace 테이블 삽입(myreplace),
         * 대체과목 재수강 수업 mylecture 등록(replaceLec)*/
        myreplaceMapper.insert(myreplace);
        myLectureMapper.insert(replaceLec);

        redirectAttributes.addAttribute("id",replaceLec.getStudent_id());
        redirectAttributes.addAttribute("type",type);

        return "redirect:replaceLecture";
    }

    /*
    대체과목 페이지,
    대체과목 초수강 등록
     */
    @RequestMapping("myReplaceNewLec")
    public String myReplaceNewLec(Model model,Pagination pagination,@RequestParam("closeLecture") String closeLecture,@RequestParam(value = "choice",defaultValue = "0") int choice,
                                  @RequestParam(value="srch", defaultValue = "") String srch,@RequestParam("type") int type, @RequestParam("id") int id)
    {
        if(srch ==null)
            srch="";
        ReplaceLecture replaceLecture=replaceLectureMapper.findOne(closeLecture);
        model.addAttribute("replaceLecture", replaceLecture);
        model.addAttribute("myreplace", new Myreplace());
        pagination.setRecordCount(lectureService.pageNowSrchCount(choice,srch));
        model.addAttribute("lectures", lectureService.srchByNowLecList(pagination.getPg(), pagination.getPageSize(), choice, srch));

        model.addAttribute("selected",lectureService.selectCheck(choice));
        model.addAttribute("count",myLectureMapper.replaceLecCount());
        model.addAttribute("srch",srch);
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "main/myReplaceNewLec";
    }

    /*
    대체과목, 초수강 과목등록
    */
    @RequestMapping(value = "newReplaceLec", method = RequestMethod.POST)
    public String newReplaceLec(MyLecture myLecture, Myreplace myreplace ,RedirectAttributes redirectAttributes, @RequestParam("type") int type)
    {
        myLectureMapper.insert(myLecture);
        myreplaceMapper.insert(myreplace);
        redirectAttributes.addAttribute("id",myLecture.getStudent_id());
        redirectAttributes.addAttribute("type",type);
        return "redirect:replaceLecture";
    }

    //전공인정 신청
    @RequestMapping("changeMajor")
    public String changeMajor(MyLecture myLecture,@RequestParam("id") int id, @RequestParam("type") int type , RedirectAttributes redirectAttributes)
    {
        myLectureMapper.updateMajor(myLecture);
        redirectAttributes.addAttribute("id", id);
        redirectAttributes.addAttribute("type", type);
        return "redirect:graduationInfo" ;
    }

    //전공인정 초기화
    @RequestMapping("initializeMajor")
    public String initializeMajor(@RequestParam("id") int id, @RequestParam("type") int type, RedirectAttributes redirectAttributes)
    {
        myLectureMapper.initializeMajor(id);
        redirectAttributes.addAttribute("id", id);
        redirectAttributes.addAttribute("type", type);
        return "redirect:graduationInfo";
    }

}