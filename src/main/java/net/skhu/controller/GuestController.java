package net.skhu.controller;

import net.skhu.domain.Notice;
import net.skhu.domain.Qna;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/guest")
public class GuestController {
    /* 로그인되면, 메인페이지 이동*/

    @RequestMapping(value = "guestMain", method = RequestMethod.GET)
    public String main(Model model) {
        model.addAttribute("type",0);


        return "login/main";
    }


}
