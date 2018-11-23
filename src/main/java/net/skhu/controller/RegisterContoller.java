package net.skhu.controller;

import net.skhu.Service.LectureService;
import net.skhu.Service.TypeIdentity;
import net.skhu.domain.MyLecture;
import net.skhu.domain.Pagination;
import net.skhu.mapper.MyLectureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("register")
public class RegisterContoller
{
    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    LectureService lectureService;
    @Autowired
    MyLectureMapper myLectureMapper;

    /*
    시뮬레이션 과목등록 페이지
     */
    @RequestMapping("subjectRegister")
    public String subjectRegister(Model model, Pagination pagination,@RequestParam(value = "choice", defaultValue = "0") int choice,
                                  @RequestParam(value = "srch",defaultValue = "") String srch,@RequestParam("type") int type, @RequestParam("id") int id)
    {


        model.addAttribute("lectures", lectureService.srchByNowLecList(pagination.getPg(), pagination.getPageSize(), choice, srch));
        pagination.setRecordCount(lectureService.pageNowSrchCount(choice, srch));

        model.addAttribute("member", typeIdentity.typeCheck(type, id));
        model.addAttribute("selected", lectureService.selectCheck(choice));
        model.addAttribute("count", myLectureMapper.count());
        model.addAttribute("choice", choice);
        model.addAttribute("srch", srch);
        return "register/subjectRegister";
    }
/*
시뮬레이션을 위한 과목등록
 */
    @RequestMapping(value = "simulationRegister", method = RequestMethod.POST)
    public String simulationRegister(MyLecture myLecture, RedirectAttributes redirectAttributes, @RequestParam("type") int type)
    {
        myLectureMapper.insert(myLecture);
        redirectAttributes.addAttribute("id",myLecture.getStudent_id());
        redirectAttributes.addAttribute("type",type);
        return "redirect:subjectRegister";
    }
}
