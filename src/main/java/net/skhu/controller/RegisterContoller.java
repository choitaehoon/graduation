package net.skhu.controller;

import net.skhu.Service.LectureService;
import net.skhu.Service.TypeIdentity;
import net.skhu.domain.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("register")
public class RegisterContoller
{
    @Autowired
    TypeIdentity typeIdentity;
    @Autowired
    LectureService lectureService;

    @RequestMapping("subjectRegister")
    public String subjectRegister(Model model, Pagination pagination , @RequestParam("type") int type, @RequestParam("id") int id)
    {
        pagination.setRecordCount(lectureService.pageCount());
        model.addAttribute("lectures",lectureService.lectureList(pagination));
        model.addAttribute("member",typeIdentity.typeCheck(type,id));
        return "register/subjectRegister";
    }

    @RequestMapping("simulationRegister")
    public String simulationRegister()
    {

        return "redirect:subjectRegister";
    }
}
