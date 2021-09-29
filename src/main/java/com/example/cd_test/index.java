package com.example.cd_test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class index {
    @RequestMapping("/h")
    public String hello() {
        return "222";
    }
}
