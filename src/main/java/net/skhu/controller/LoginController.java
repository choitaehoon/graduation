package net.skhu.controller;

import net.skhu.Service.TypeIdentity;
import net.skhu.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/")
public class LoginController {
    @Autowired
    TypeIdentity typeIdentity;

    @RequestMapping("signUp")
    public String signUp() {
        return "login/signUp";
    }

    @RequestMapping("findPassword")
    public String findPassword() {
        return "login/findPassword";
    }


    @RequestMapping("guest")
    public String guestMain(Model model) {
        model.addAttribute("type", 0);
        return "login/main";

    }

    @RequestMapping(value = "graduation")
    public String login(Model model, User user) {
        Object check=typeIdentity.distinct(user);
        if(check == null) {
            model.addAttribute("id",user.getId());
            model.addAttribute("error","fail");
            return "../../login";
        }
        else{
            model.addAttribute("member", check);
            return "login/main";
        }
//        model.addAttribute("member", typeIdentity.distinct(user));
//        model.addAttribute("type", user.getType());
//        return "login/main";


    }
}
