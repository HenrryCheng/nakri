/*
 * Copyright (C) 2016 Baidu, Inc. All Rights Reserved.
 */
package com.baidu.rigel.hackathon17.web;

import com.baidu.rigel.hackathon17.service.DuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by yangchuanlian on 2016/12/14.
 */
@Controller
@RequestMapping("/duTest")
public class DuTestController {

    @Resource(name = "duService")
    private DuService duService;

    @ResponseBody
    @RequestMapping(value = "/sayHi", method = {RequestMethod.POST, RequestMethod.GET})
    public Object sayHi(String name) {
        String greeting = duService.sayHi(name);
        return greeting;
    }

    @ResponseBody
    @RequestMapping(value = "/test.do", method = {RequestMethod.POST, RequestMethod.GET})
    public Object helloList() {
        StringBuilder str = new StringBuilder("{totalProperty:100,root:[");
        str.append("{id:4, name:'생활', descn:'Китай'},");
        str.append("{id:5, name:'tchen8', descn:'中文'}]}");
        return str;
    }
}
