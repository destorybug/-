package com.aaa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: dept
 * @description:
 * @author: Mr.liu
 * @create: 2020-05-30 14:50
 **/
@Controller
public class PageController {

    @RequestMapping("/dept.html")
    public String getDept(){
        return "/dept/dept";
    }
}
