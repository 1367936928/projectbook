package com.bookproject.controller;

import com.bookproject.model.User;
import com.bookproject.service.user.IUserService;
import com.bookproject.util.IUtil;
import com.bookproject.util.Util;
import com.sun.deploy.net.HttpResponse;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/2/25.
 */
@Controller
@RequestMapping(value = "/User")
public class UserController {
    @Autowired
    private IUserService userServiceImpl;
    @RequestMapping(value = "/Login")
    public String Login(String uName, String uPassword, String checked){

        return null;
    }
    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String admin(){
        return "user/admin";
    }
}
